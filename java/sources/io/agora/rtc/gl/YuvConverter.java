package io.agora.rtc.gl;

import android.opengl.GLES20;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class YuvConverter {
    private static final String OES_FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n";
    private static final String RGB_FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D tex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(tex, interp_tc + 1.5 * xUnit).rgb);\n}\n";
    private static final String VERTEX_SHADER = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n";
    private int coeffsLoc;
    private boolean released;
    private GlShader shader;
    private VideoFrame.TextureBuffer.Type shaderTextureType;
    private int texMatrixLoc;
    private final GlTextureFrameBuffer textureFrameBuffer;
    private final ThreadUtils.ThreadChecker threadChecker;
    private int xUnitLoc;
    private static final FloatBuffer DEVICE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer TEXTURE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f});

    /* JADX INFO: renamed from: io.agora.rtc.gl.YuvConverter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type;

        static {
            int[] iArr = new int[VideoFrame.TextureBuffer.Type.values().length];
            $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type = iArr;
            try {
                iArr[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public YuvConverter() {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        this.released = false;
        threadChecker.checkIsOnValidThread();
        this.textureFrameBuffer = new GlTextureFrameBuffer(6408);
    }

    private void initShader(VideoFrame.TextureBuffer.Type type) {
        String str;
        GlShader glShader = this.shader;
        if (glShader != null) {
            glShader.release();
        }
        int i = AnonymousClass1.$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type[type.ordinal()];
        if (i == 1) {
            str = OES_FRAGMENT_SHADER;
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("Unsupported texture type.");
            }
            str = RGB_FRAGMENT_SHADER;
        }
        this.shaderTextureType = type;
        GlShader glShader2 = new GlShader(VERTEX_SHADER, str);
        this.shader = glShader2;
        glShader2.useProgram();
        this.texMatrixLoc = this.shader.getUniformLocation("texMatrix");
        this.xUnitLoc = this.shader.getUniformLocation("xUnit");
        this.coeffsLoc = this.shader.getUniformLocation("coeffs");
        GLES20.glUniform1i(this.shader.getUniformLocation("tex"), 0);
        GlUtil.checkNoGLES2Error("Initialize fragment shader uniform values.");
        this.shader.setVertexAttribArray("in_pos", 2, DEVICE_RECTANGLE);
        this.shader.setVertexAttribArray("in_tc", 2, TEXTURE_RECTANGLE);
    }

    public VideoFrame.I420Buffer convert(VideoFrame.TextureBuffer textureBuffer) {
        int width = textureBuffer.getWidth();
        int height = textureBuffer.getHeight();
        int i = ((width + 7) / 8) * 8;
        int i2 = (height + 1) / 2;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((height + i2 + 1) * i);
        convert(byteBufferAllocateDirect, width, height, i, textureBuffer.getTextureId(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(textureBuffer.getTransformMatrix()), textureBuffer.getType());
        int i3 = (i * height) + 0;
        int i4 = (i / 2) + i3;
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.limit(i3);
        ByteBuffer byteBufferSlice = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i3);
        int i5 = i2 * i;
        byteBufferAllocateDirect.limit(i3 + i5);
        ByteBuffer byteBufferSlice2 = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i4);
        byteBufferAllocateDirect.limit(i4 + i5);
        return JavaI420Buffer.wrap(width, height, byteBufferSlice, i, byteBufferSlice2, i, byteBufferAllocateDirect.slice(), i, null);
    }

    public void release() {
        this.threadChecker.checkIsOnValidThread();
        this.released = true;
        GlShader glShader = this.shader;
        if (glShader != null) {
            glShader.release();
        }
        this.textureFrameBuffer.release();
    }

    @Deprecated
    void convert(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr) {
        convert(byteBuffer, i, i2, i3, i4, fArr, VideoFrame.TextureBuffer.Type.OES);
    }

    private void convert(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr, VideoFrame.TextureBuffer.Type type) {
        this.threadChecker.checkIsOnValidThread();
        if (!this.released) {
            if (type != this.shaderTextureType) {
                initShader(type);
            }
            this.shader.useProgram();
            if (i3 % 8 != 0) {
                throw new IllegalArgumentException("Invalid stride, must be a multiple of 8");
            }
            if (i3 >= i) {
                int i5 = (i + 3) / 4;
                int i6 = (i + 7) / 8;
                int i7 = (i2 + 1) / 2;
                int i8 = i2 + i7;
                if (byteBuffer.capacity() >= i3 * i8) {
                    float[] fArrMultiplyMatrices = RendererCommon.multiplyMatrices(fArr, RendererCommon.verticalFlipMatrix());
                    int i9 = i3 / 4;
                    this.textureFrameBuffer.setSize(i9, i8);
                    GLES20.glBindFramebuffer(36160, this.textureFrameBuffer.getFrameBufferId());
                    GlUtil.checkNoGLES2Error("glBindFramebuffer");
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(type.getGlTarget(), i4);
                    GLES20.glUniformMatrix4fv(this.texMatrixLoc, 1, false, fArrMultiplyMatrices, 0);
                    GLES20.glViewport(0, 0, i5, i2);
                    float f2 = i;
                    GLES20.glUniform2f(this.xUnitLoc, fArrMultiplyMatrices[0] / f2, fArrMultiplyMatrices[1] / f2);
                    GLES20.glUniform4f(this.coeffsLoc, 0.299f, 0.587f, 0.114f, BitmapDescriptorFactory.HUE_RED);
                    GLES20.glDrawArrays(5, 0, 4);
                    GLES20.glViewport(0, i2, i6, i7);
                    GLES20.glUniform2f(this.xUnitLoc, (fArrMultiplyMatrices[0] * 2.0f) / f2, (fArrMultiplyMatrices[1] * 2.0f) / f2);
                    GLES20.glUniform4f(this.coeffsLoc, -0.169f, -0.331f, 0.499f, 0.5f);
                    GLES20.glDrawArrays(5, 0, 4);
                    GLES20.glViewport(i3 / 8, i2, i6, i7);
                    GLES20.glUniform4f(this.coeffsLoc, 0.499f, -0.418f, -0.0813f, 0.5f);
                    GLES20.glDrawArrays(5, 0, 4);
                    GLES20.glReadPixels(0, 0, i9, i8, 6408, 5121, byteBuffer);
                    GlUtil.checkNoGLES2Error("YuvConverter.convert");
                    GLES20.glBindFramebuffer(36160, 0);
                    GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
                    GLES20.glBindTexture(type.getGlTarget(), 0);
                    return;
                }
                throw new IllegalArgumentException("YuvConverter.convert called with too small buffer");
            }
            throw new IllegalArgumentException("Invalid stride, must >= width");
        }
        throw new IllegalStateException("YuvConverter.convert called on released object");
    }
}
