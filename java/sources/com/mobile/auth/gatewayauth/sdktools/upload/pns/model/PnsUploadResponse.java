package com.mobile.auth.gatewayauth.sdktools.upload.pns.model;

import com.mobile.auth.gatewayauth.a;
import com.nirvana.tools.jsoner.JsonerTag;

/* JADX INFO: loaded from: classes5.dex */
public class PnsUploadResponse {

    @JsonerTag(keyName = "alibaba_aliqin_pns_info_upload_response")
    private PnsResponse response;

    public PnsResponse getResponse() {
        try {
            return this.response;
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

    public void setResponse(PnsResponse pnsResponse) {
        try {
            this.response = pnsResponse;
        } catch (Throwable th) {
            try {
                a.a(th);
            } catch (Throwable th2) {
                a.a(th2);
            }
        }
    }
}
