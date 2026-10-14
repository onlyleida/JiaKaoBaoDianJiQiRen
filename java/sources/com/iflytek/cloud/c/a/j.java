package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.alivc.live.pusher.logreport.core.AliLiveInfoUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechListener;
import com.iflytek.cloud.TextUnderstanderListener;
import com.iflytek.cloud.UnderstanderResult;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.MSC;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public class j extends com.iflytek.cloud.a.f.e {

    private class a implements SpeechListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextUnderstanderListener f12329a;

        public a(TextUnderstanderListener textUnderstanderListener) {
            this.f12329a = textUnderstanderListener;
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onBufferReceived(byte[] bArr) {
            if (bArr != null) {
                try {
                    this.f12329a.onResult(new UnderstanderResult(new String(bArr, "utf-8")));
                } catch (UnsupportedEncodingException e2) {
                    DebugLog.LogE(e2);
                } catch (NullPointerException e3) {
                    DebugLog.LogE(e3);
                }
            }
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onCompleted(SpeechError speechError) {
            TextUnderstanderListener textUnderstanderListener = this.f12329a;
            if (textUnderstanderListener == null || speechError == null) {
                return;
            }
            textUnderstanderListener.onError(speechError);
        }

        @Override // com.iflytek.cloud.SpeechListener
        public void onEvent(int i, Bundle bundle) {
        }
    }

    public j(Context context) {
        super(context);
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        super.cancel(z);
    }

    @Override // com.iflytek.cloud.a.f.e, com.iflytek.cloud.a.f.d
    public boolean destroy() {
        return super.destroy();
    }

    @Override // com.iflytek.cloud.a.f.d
    public String getParameter(String str) {
        return super.getParameter(str);
    }

    public boolean isUnderstanding() {
        return c();
    }

    @Override // com.iflytek.cloud.a.f.d
    public boolean setParameter(String str, String str2) {
        return super.setParameter(str, str2);
    }

    public int understandText(String str, TextUnderstanderListener textUnderstanderListener) {
        try {
            if (TextUtils.isEmpty(getParameter(SpeechConstant.ASR_SCH))) {
                setParameter(SpeechConstant.ASR_SCH, "1");
            }
            if (TextUtils.isEmpty(getParameter(SpeechConstant.NLP_VERSION))) {
                setParameter(SpeechConstant.NLP_VERSION, MSC.isIflyVersion() ? "3.0" : AliLiveInfoUtils.ALIVC_CONAN_VERSION);
            }
            if (TextUtils.isEmpty(getParameter(SpeechConstant.RESULT_TYPE))) {
                setParameter(SpeechConstant.RESULT_TYPE, "json");
            }
            if (c()) {
                return ErrorCode.ERROR_ENGINE_BUSY;
            }
            this.c = new com.iflytek.cloud.a.g.b(this.f12265a, this.mSessionParams, a("textunderstand"));
            ((com.iflytek.cloud.a.g.b) this.c).a(new com.iflytek.cloud.a.f.e.a(new a(textUnderstanderListener)), str);
            return 0;
        } catch (SpeechError e2) {
            int errorCode = e2.getErrorCode();
            DebugLog.LogE(e2);
            return errorCode;
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return ErrorCode.ERROR_UNKNOWN;
        }
    }
}
