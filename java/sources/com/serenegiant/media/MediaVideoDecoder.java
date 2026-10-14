package com.serenegiant.media;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.TextUtils;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public class MediaVideoDecoder extends MediaDecoder {
    private static final boolean DEBUG = false;
    private int mRotation;
    private Surface mSurface;
    private int mVideoHeight;
    private int mVideoWidth;

    @Override // com.serenegiant.media.MediaDecoder
    protected MediaCodec createCodec(MediaExtractor mediaExtractor, int i, MediaFormat mediaFormat) throws IOException {
        if (Build.VERSION.SDK_INT > 18) {
            mediaFormat.setInteger("push-blank-buffers-on-shutdown", 1);
        }
        return super.createCodec(mediaExtractor, i, mediaFormat);
    }

    @Override // com.serenegiant.media.MediaDecoder
    protected Surface getOutputSurface() {
        if (this.mSurface == null) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("need to call setSurface before prepare");
            if (!callErrorHandler(illegalArgumentException)) {
                throw illegalArgumentException;
            }
        }
        return this.mSurface;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    @Override // com.serenegiant.media.MediaDecoder
    protected boolean handleOutput(ByteBuffer byteBuffer, int i, int i2, long j) {
        return false;
    }

    @Override // com.serenegiant.media.MediaDecoder
    protected int handlePrepare(MediaExtractor mediaExtractor) {
        int iSelectTrack = MediaDecoder.selectTrack(mediaExtractor, "video/");
        if (iSelectTrack >= 0) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iSelectTrack);
            this.mVideoWidth = trackFormat.getInteger("width");
            this.mVideoHeight = trackFormat.getInteger("height");
        }
        return iSelectTrack;
    }

    public void setSurface(Surface surface) {
        this.mSurface = surface;
    }

    @Override // com.serenegiant.media.MediaDecoder
    protected void updateMovieInfo(MediaMetadataRetriever mediaMetadataRetriever) {
        super.updateMovieInfo(mediaMetadataRetriever);
        this.mRotation = 0;
        this.mVideoHeight = 0;
        this.mVideoWidth = 0;
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
        if (!TextUtils.isEmpty(strExtractMetadata)) {
            this.mVideoWidth = Integer.parseInt(strExtractMetadata);
        }
        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
        if (!TextUtils.isEmpty(strExtractMetadata2)) {
            this.mVideoHeight = Integer.parseInt(strExtractMetadata2);
        }
        String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
        if (TextUtils.isEmpty(strExtractMetadata3)) {
            return;
        }
        this.mRotation = Integer.parseInt(strExtractMetadata3);
    }
}
