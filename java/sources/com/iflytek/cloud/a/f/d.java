package com.iflytek.cloud.a.f;

import android.text.TextUtils;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.speech.ISpeechModule;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d {
    protected static final Object sSync = new Object();
    protected com.iflytek.cloud.b.a mSessionParams = new com.iflytek.cloud.b.a();

    public enum a {
        MSC
    }

    protected d() {
    }

    public boolean destroy() {
        return true;
    }

    public String getParameter(String str) {
        return SpeechConstant.PARAMS.equals(str) ? this.mSessionParams.toString() : this.mSessionParams.a(str);
    }

    protected a getStartMode(String str, ISpeechModule iSpeechModule) {
        return a.MSC;
    }

    public boolean setParameter(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.equals(SpeechConstant.PARAMS)) {
            if (TextUtils.isEmpty(str2)) {
                this.mSessionParams.a();
            } else {
                this.mSessionParams.d(str2);
            }
            return true;
        }
        if (TextUtils.isEmpty(str2)) {
            return this.mSessionParams.f(str).booleanValue();
        }
        this.mSessionParams.b(str, str2);
        return true;
    }

    public boolean setParameter(com.iflytek.cloud.b.a aVar) {
        this.mSessionParams = aVar.clone();
        return true;
    }
}
