package com.iflytek.cloud;

/* JADX INFO: loaded from: classes4.dex */
public interface TextUnderstanderListener {
    void onError(SpeechError speechError);

    void onResult(UnderstanderResult understanderResult);
}
