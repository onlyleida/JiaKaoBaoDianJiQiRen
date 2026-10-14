package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.GlUtil;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements VideoDecoderOutputBufferRenderer {
    private final Renderer renderer;

    private static final class Renderer implements GLSurfaceView.Renderer {
        private static final String FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n";
        private static final String VERTEX_SHADER = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n";
        private int colorMatrixLocation;
        private int program;
        private VideoDecoderOutputBuffer renderedOutputBuffer;
        private final GLSurfaceView surfaceView;
        private static final float[] kColorConversion601 = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.392f, 2.017f, 1.596f, -0.813f, BitmapDescriptorFactory.HUE_RED};
        private static final float[] kColorConversion709 = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.213f, 2.112f, 1.793f, -0.533f, BitmapDescriptorFactory.HUE_RED};
        private static final float[] kColorConversion2020 = {1.168f, 1.168f, 1.168f, BitmapDescriptorFactory.HUE_RED, -0.188f, 2.148f, 1.683f, -0.652f, BitmapDescriptorFactory.HUE_RED};
        private static final String[] TEXTURE_UNIFORMS = {"y_tex", "u_tex", "v_tex"};
        private static final FloatBuffer TEXTURE_VERTICES = GlUtil.createBuffer(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});
        private final int[] yuvTextures = new int[3];
        private final int[] texLocations = new int[3];
        private final int[] previousWidths = new int[3];
        private final int[] previousStrides = new int[3];
        private final AtomicReference<VideoDecoderOutputBuffer> pendingOutputBufferReference = new AtomicReference<>();
        private final FloatBuffer[] textureCoords = new FloatBuffer[3];

        public Renderer(GLSurfaceView gLSurfaceView) {
            this.surfaceView = gLSurfaceView;
            for (int i = 0; i < 3; i++) {
                int[] iArr = this.previousWidths;
                this.previousStrides[i] = -1;
                iArr[i] = -1;
            }
        }

        private void setupTextures() {
            GLES20.glGenTextures(3, this.yuvTextures, 0);
            for (int i = 0; i < 3; i++) {
                GLES20.glUniform1i(GLES20.glGetUniformLocation(this.program, TEXTURE_UNIFORMS[i]), i);
                GLES20.glActiveTexture(33984 + i);
                GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.yuvTextures[i]);
                GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10241, 9729.0f);
                GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10240, 9729.0f);
                GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10242, 33071.0f);
                GLES20.glTexParameterf(ShaderConst.GL_TEXTURE_2D, 10243, 33071.0f);
            }
            GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer andSet = this.pendingOutputBufferReference.getAndSet(null);
            if (andSet == null && this.renderedOutputBuffer == null) {
                return;
            }
            if (andSet != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.renderedOutputBuffer;
                if (videoDecoderOutputBuffer != null) {
                    videoDecoderOutputBuffer.release();
                }
                this.renderedOutputBuffer = andSet;
            }
            VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) Assertions.checkNotNull(this.renderedOutputBuffer);
            float[] fArr = kColorConversion709;
            int i = videoDecoderOutputBuffer2.colorspace;
            if (i == 1) {
                fArr = kColorConversion601;
            } else if (i == 3) {
                fArr = kColorConversion2020;
            }
            GLES20.glUniformMatrix3fv(this.colorMatrixLocation, 1, false, fArr, 0);
            int[] iArr = (int[]) Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvStrides);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvPlanes);
            int i2 = 0;
            while (i2 < 3) {
                int i3 = i2 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
                GLES20.glActiveTexture(33984 + i2);
                GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.yuvTextures[i2]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(ShaderConst.GL_TEXTURE_2D, 0, 6409, iArr[i2], i3, 0, 6409, 5121, byteBufferArr[i2]);
                i2++;
            }
            int i4 = (iArr[0] + 1) / 2;
            int[] iArr2 = {videoDecoderOutputBuffer2.width, i4, i4};
            for (int i5 = 0; i5 < 3; i5++) {
                if (this.previousWidths[i5] != iArr2[i5] || this.previousStrides[i5] != iArr[i5]) {
                    Assertions.checkState(iArr[i5] != 0);
                    float f2 = iArr2[i5] / iArr[i5];
                    this.textureCoords[i5] = GlUtil.createBuffer(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, f2, BitmapDescriptorFactory.HUE_RED, f2, 1.0f});
                    GLES20.glVertexAttribPointer(this.texLocations[i5], 2, 5126, false, 0, (Buffer) this.textureCoords[i5]);
                    this.previousWidths[i5] = iArr2[i5];
                    this.previousStrides[i5] = iArr[i5];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            int iCompileProgram = GlUtil.compileProgram(VERTEX_SHADER, FRAGMENT_SHADER);
            this.program = iCompileProgram;
            GLES20.glUseProgram(iCompileProgram);
            int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.program, "in_pos");
            GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
            GLES20.glVertexAttribPointer(iGlGetAttribLocation, 2, 5126, false, 0, (Buffer) TEXTURE_VERTICES);
            this.texLocations[0] = GLES20.glGetAttribLocation(this.program, "in_tc_y");
            GLES20.glEnableVertexAttribArray(this.texLocations[0]);
            this.texLocations[1] = GLES20.glGetAttribLocation(this.program, "in_tc_u");
            GLES20.glEnableVertexAttribArray(this.texLocations[1]);
            this.texLocations[2] = GLES20.glGetAttribLocation(this.program, "in_tc_v");
            GLES20.glEnableVertexAttribArray(this.texLocations[2]);
            GlUtil.checkGlError();
            this.colorMatrixLocation = GLES20.glGetUniformLocation(this.program, "mColorConversion");
            GlUtil.checkGlError();
            setupTextures();
            GlUtil.checkGlError();
        }

        public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
            VideoDecoderOutputBuffer andSet = this.pendingOutputBufferReference.getAndSet(videoDecoderOutputBuffer);
            if (andSet != null) {
                andSet.release();
            }
            this.surfaceView.requestRender();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Deprecated
    public VideoDecoderOutputBufferRenderer getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer
    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.renderer.setOutputBuffer(videoDecoderOutputBuffer);
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Renderer renderer = new Renderer(this);
        this.renderer = renderer;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setRenderMode(0);
    }
}
