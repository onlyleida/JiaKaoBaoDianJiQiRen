package org.webrtc;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
interface MediaCodecWrapperFactory {
    MediaCodecWrapper createByCodecName(String str) throws IOException;
}
