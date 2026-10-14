package com.iflytek.cloud.util;

import com.iflytek.cloud.SpeechError;

/* JADX INFO: loaded from: classes4.dex */
public interface FileDownloadListener {
    void onCompleted(String str, SpeechError speechError);

    void onProgress(int i);

    void onStart();
}
