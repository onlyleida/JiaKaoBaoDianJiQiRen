package com.iflytek.cloud;

import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class TranscripterResult {
    protected String mResult;

    public TranscripterResult(String str) {
        this.mResult = null;
        try {
            this.mResult = new String(str);
        } catch (Exception e2) {
            DebugLog.LogE("TranscripterResult exception:");
            DebugLog.LogE(e2);
        }
    }

    public String getResultString() {
        return this.mResult;
    }
}
