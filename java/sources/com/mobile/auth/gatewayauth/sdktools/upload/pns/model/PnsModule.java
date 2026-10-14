package com.mobile.auth.gatewayauth.sdktools.upload.pns.model;

import com.mobile.auth.gatewayauth.a;
import com.nirvana.tools.jsoner.JsonerTag;

/* JADX INFO: loaded from: classes5.dex */
public class PnsModule {

    @JsonerTag(keyName = "limited_info")
    private PnsLimitedInfo limitedInfo;

    @JsonerTag(keyName = "upload_log")
    private PnsUploadLog uploadLog;

    public PnsLimitedInfo getLimitedInfo() {
        try {
            return this.limitedInfo;
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

    public PnsUploadLog getUploadLog() {
        try {
            return this.uploadLog;
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

    public void setLimitedInfo(PnsLimitedInfo pnsLimitedInfo) {
        try {
            this.limitedInfo = pnsLimitedInfo;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }

    public void setUploadLog(PnsUploadLog pnsUploadLog) {
        try {
            this.uploadLog = pnsUploadLog;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
