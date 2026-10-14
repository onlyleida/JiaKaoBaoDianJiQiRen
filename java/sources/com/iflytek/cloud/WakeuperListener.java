package com.iflytek.cloud;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public interface WakeuperListener {
    void onBeginOfSpeech();

    void onError(SpeechError speechError);

    void onEvent(int i, int i2, int i3, Bundle bundle);

    void onResult(WakeuperResult wakeuperResult);

    void onVolumeChanged(int i);
}
