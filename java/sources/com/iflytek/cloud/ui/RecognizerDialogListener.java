package com.iflytek.cloud.ui;

import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechError;

/* JADX INFO: loaded from: classes4.dex */
public interface RecognizerDialogListener {
    void onError(SpeechError speechError);

    void onResult(RecognizerResult recognizerResult, boolean z);
}
