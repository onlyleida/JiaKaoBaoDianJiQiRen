package com.iflytek.cloud;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public interface SynthesizerListener {
    void onBufferProgress(int i, int i2, int i3, String str);

    void onCompleted(SpeechError speechError);

    void onEvent(int i, int i2, int i3, Bundle bundle);

    void onSpeakBegin();

    void onSpeakPaused();

    void onSpeakProgress(int i, int i2, int i3);

    void onSpeakResumed();
}
