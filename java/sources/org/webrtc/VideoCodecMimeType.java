package org.webrtc;

import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
enum VideoCodecMimeType {
    VP8(MimeTypes.VIDEO_VP8),
    VP9(MimeTypes.VIDEO_VP9),
    H264("video/avc");

    private final String mimeType;

    VideoCodecMimeType(String str) {
        this.mimeType = str;
    }

    String mimeType() {
        return this.mimeType;
    }
}
