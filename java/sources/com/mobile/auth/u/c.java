package com.mobile.auth.u;

import com.mobile.auth.gatewayauth.model.ConfigRule;
import com.nirvana.tools.requestqueue.TimeoutResponse;

/* JADX INFO: loaded from: classes5.dex */
public class c extends TimeoutResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConfigRule f13599a;

    public c(boolean z) {
        super(z);
    }

    public c(boolean z, ConfigRule configRule) {
        super(z);
        this.f13599a = configRule;
    }

    public ConfigRule a() {
        try {
            return this.f13599a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.nirvana.tools.requestqueue.TimeoutResponse
    public boolean isResultTimeout() {
        return false;
    }
}
