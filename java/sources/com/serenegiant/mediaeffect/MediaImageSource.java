package com.serenegiant.mediaeffect;

import android.graphics.Bitmap;
import com.serenegiant.glutils.TextureOffscreen;

/* JADX INFO: loaded from: classes6.dex */
public class MediaImageSource extends MediaSource {
    private boolean isReset;
    private TextureOffscreen mImageOffscreen;

    public MediaImageSource(Bitmap bitmap) {
        super(bitmap.getWidth(), bitmap.getHeight());
        this.mImageOffscreen = new TextureOffscreen(this.mWidth, this.mHeight, false);
        setSource(bitmap);
    }

    @Override // com.serenegiant.mediaeffect.MediaSource, com.serenegiant.mediaeffect.ISource
    public ISource apply(IEffect iEffect) {
        TextureOffscreen textureOffscreen = this.mSourceScreen;
        if (textureOffscreen != null) {
            if (this.isReset) {
                this.isReset = false;
                this.needSwap = true;
            } else {
                if (this.needSwap) {
                    TextureOffscreen textureOffscreen2 = this.mOutputScreen;
                    this.mSourceScreen = textureOffscreen2;
                    this.mOutputScreen = textureOffscreen;
                    this.mSrcTexIds[0] = textureOffscreen2.getTexture();
                }
                this.needSwap = !this.needSwap;
            }
            iEffect.apply(this.mSrcTexIds, this.mOutputScreen.getTexWidth(), this.mOutputScreen.getTexHeight(), this.mOutputScreen.getTexture());
        }
        return this;
    }

    @Override // com.serenegiant.mediaeffect.MediaSource, com.serenegiant.mediaeffect.ISource
    public ISource reset() {
        super.reset();
        this.isReset = true;
        this.mSrcTexIds[0] = this.mImageOffscreen.getTexture();
        return this;
    }

    public ISource setSource(Bitmap bitmap) {
        this.mImageOffscreen.loadBitmap(bitmap);
        reset();
        return this;
    }
}
