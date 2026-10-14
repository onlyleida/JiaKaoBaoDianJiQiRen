package com.iflytek.cloud.a.f;

import android.content.Context;
import com.iflytek.cloud.SpeechError;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static final String TAG_AUDIO_URL = "audio_url";
    public static final String TAG_SID = "sid";
    public char[] mClientID = null;
    public String mSessionID = null;

    public enum a {
        hasResult,
        undefined_1,
        noResult,
        undefined_3,
        undefined_4,
        resultOver
    }

    public String getClientID() {
        if (this.mClientID != null) {
            return new String(this.mClientID);
        }
        return null;
    }

    public abstract int sessionBegin(Context context, String str, com.iflytek.cloud.a.f.a aVar) throws SpeechError, UnsupportedEncodingException;

    public abstract void sessionEnd(String str);
}
