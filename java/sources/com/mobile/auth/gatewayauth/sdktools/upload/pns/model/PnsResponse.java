package com.mobile.auth.gatewayauth.sdktools.upload.pns.model;

import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.a;
import com.nirvana.tools.jsoner.JsonerTag;

/* JADX INFO: loaded from: classes5.dex */
public class PnsResponse {

    @JsonerTag(keyName = "request_id")
    private String requestId;

    @JsonerTag(keyName = SpeechUtility.TAG_RESOURCE_RESULT)
    private PnsResult result;

    public String getRequestId() {
        try {
            return this.requestId;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public PnsResult getResult() {
        try {
            return this.result;
        } catch (Throwable th) {
            try {
                a.a(th);
                return null;
            } catch (Throwable th2) {
                a.a(th2);
                return null;
            }
        }
    }

    public void setRequestId(String str) {
        try {
            this.requestId = str;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setResult(PnsResult pnsResult) {
        try {
            this.result = pnsResult;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
