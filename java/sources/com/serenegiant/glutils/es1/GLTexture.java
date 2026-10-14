package com.serenegiant.glutils.es1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLES10;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.text.TextUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ITexture;
import com.serenegiant.glutils.ShaderConst;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class GLTexture implements ITexture {
    int mImageHeight;
    int mImageWidth;
    int mTexHeight;
    final float[] mTexMatrix;
    int mTexWidth;
    int mTextureId;
    final int mTextureTarget;
    final int mTextureUnit;

    public GLTexture(int i, int i2, int i3) {
        this(ShaderConst.GL_TEXTURE_2D, 33984, i, i2, i3);
    }

    @Override // com.serenegiant.glutils.ITexture
    public void bind() {
        GLES10.glActiveTexture(this.mTextureUnit);
        GLES10.glBindTexture(this.mTextureTarget, this.mTextureId);
    }

    protected void finalize() throws Throwable {
        release();
        super.finalize();
    }

    @Override // com.serenegiant.glutils.ITexture
    public int getTexHeight() {
        return this.mTexHeight;
    }

    @Override // com.serenegiant.glutils.ITexture
    public float[] getTexMatrix() {
        return this.mTexMatrix;
    }

    @Override // com.serenegiant.glutils.ITexture
    public int getTexTarget() {
        return this.mTextureTarget;
    }

    @Override // com.serenegiant.glutils.ITexture
    public int getTexWidth() {
        return this.mTexWidth;
    }

    @Override // com.serenegiant.glutils.ITexture
    public int getTexture() {
        return this.mTextureId;
    }

    @Override // com.serenegiant.glutils.ITexture
    public void loadTexture(String str) throws IOException, NullPointerException {
        if (TextUtils.isEmpty(str)) {
            throw new NullPointerException("image file path should not be a null");
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        int iCeil = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        int i3 = this.mTexHeight;
        if (i2 > i3 || i > this.mTexWidth) {
            iCeil = (int) (i > i2 ? Math.ceil(i2 / i3) : Math.ceil(i / this.mTexWidth));
        }
        options.inSampleSize = iCeil;
        options.inJustDecodeBounds = false;
        loadTexture(BitmapFactory.decodeFile(str, options));
    }

    @Override // com.serenegiant.glutils.ITexture
    public void release() {
        int i = this.mTextureId;
        if (i > 0) {
            GLHelper.deleteTex(i);
            this.mTextureId = 0;
        }
    }

    @Override // com.serenegiant.glutils.ITexture
    public void unbind() {
        GLES10.glActiveTexture(this.mTextureUnit);
        GLES10.glBindTexture(this.mTextureTarget, 0);
    }

    public GLTexture(int i, int i2, int i3, int i4, int i5) {
        this.mTexMatrix = new float[16];
        this.mTextureTarget = i;
        this.mTextureUnit = i2;
        int i6 = 32;
        int i7 = 32;
        while (i7 < i3) {
            i7 <<= 1;
        }
        while (i6 < i4) {
            i6 <<= 1;
        }
        if (this.mTexWidth != i7 || this.mTexHeight != i6) {
            this.mTexWidth = i7;
            this.mTexHeight = i6;
        }
        this.mTextureId = GLHelper.initTex(this.mTextureTarget, i5);
        GLES10.glTexImage2D(this.mTextureTarget, 0, 6408, this.mTexWidth, this.mTexHeight, 0, 6408, 5121, null);
        Matrix.setIdentityM(this.mTexMatrix, 0);
        float[] fArr = this.mTexMatrix;
        fArr[0] = i3 / this.mTexWidth;
        fArr[5] = i4 / this.mTexHeight;
    }

    @Override // com.serenegiant.glutils.ITexture
    public void getTexMatrix(float[] fArr, int i) {
        float[] fArr2 = this.mTexMatrix;
        System.arraycopy(fArr2, 0, fArr, i, fArr2.length);
    }

    @Override // com.serenegiant.glutils.ITexture
    public void loadTexture(Bitmap bitmap) throws NullPointerException {
        this.mImageWidth = bitmap.getWidth();
        this.mImageHeight = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.mTexWidth, this.mTexHeight, Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        bitmap.recycle();
        Matrix.setIdentityM(this.mTexMatrix, 0);
        float[] fArr = this.mTexMatrix;
        fArr[0] = this.mImageWidth / this.mTexWidth;
        fArr[5] = this.mImageHeight / this.mTexHeight;
        bind();
        GLUtils.texImage2D(this.mTextureTarget, 0, bitmapCreateBitmap, 0);
        unbind();
        bitmapCreateBitmap.recycle();
    }
}
