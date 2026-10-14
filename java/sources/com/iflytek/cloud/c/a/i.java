package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechUnderstanderListener;
import com.iflytek.cloud.UnderstanderResult;
import com.iflytek.msc.MSC;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static i f12327a;
    private f b;

    private class a implements RecognizerListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SpeechUnderstanderListener f12328a;

        public a(SpeechUnderstanderListener speechUnderstanderListener) {
            this.f12328a = speechUnderstanderListener;
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onBeginOfSpeech() {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener != null) {
                speechUnderstanderListener.onBeginOfSpeech();
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEndOfSpeech() {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener != null) {
                speechUnderstanderListener.onEndOfSpeech();
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onError(SpeechError speechError) {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener == null || speechError == null) {
                return;
            }
            speechUnderstanderListener.onError(speechError);
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener != null) {
                speechUnderstanderListener.onEvent(i, i2, i3, bundle);
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onResult(RecognizerResult recognizerResult, boolean z) {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener != null) {
                speechUnderstanderListener.onResult(new UnderstanderResult(recognizerResult.getResultString()));
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onVolumeChanged(int i, byte[] bArr) {
            SpeechUnderstanderListener speechUnderstanderListener = this.f12328a;
            if (speechUnderstanderListener != null) {
                speechUnderstanderListener.onVolumeChanged(i, bArr);
            }
        }
    }

    public i(Context context) {
        this.b = null;
        this.b = new f(context);
    }

    public int a(SpeechUnderstanderListener speechUnderstanderListener) {
        a aVar = new a(speechUnderstanderListener);
        if (TextUtils.isEmpty(this.b.getParameter(SpeechConstant.ASR_SCH))) {
            this.b.setParameter(SpeechConstant.ASR_SCH, "1");
        }
        if (TextUtils.isEmpty(this.b.getParameter(SpeechConstant.NLP_VERSION))) {
            this.b.setParameter(SpeechConstant.NLP_VERSION, MSC.isIflyVersion() ? "3.0" : AliLiveInfoUtils.ALIVC_CONAN_VERSION);
        }
        if (TextUtils.isEmpty(this.b.getParameter(SpeechConstant.RESULT_TYPE))) {
            this.b.setParameter(SpeechConstant.RESULT_TYPE, "json");
        }
        this.b.startListening(aVar);
        return 0;
    }

    public boolean b() {
        return this.b.isListening();
    }

    public void c() {
        this.b.stopListening();
    }

    public int a(byte[] bArr, int i, int i2) {
        return this.b.writeAudio(bArr, i, i2);
    }

    public void a(boolean z) {
        this.b.cancel(z);
    }

    public boolean a(com.iflytek.cloud.b.a aVar) {
        return this.b.setParameter(aVar);
    }

    public boolean a() {
        boolean zDestroy = this.b.destroy();
        if (zDestroy) {
            f12327a = null;
        }
        return zDestroy;
    }
}
