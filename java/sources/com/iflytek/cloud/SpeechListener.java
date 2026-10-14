package com.iflytek.cloud;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public interface SpeechListener {
    void onBufferReceived(byte[] bArr);

    void onCompleted(SpeechError speechError);

    void onEvent(int i, Bundle bundle);
}
