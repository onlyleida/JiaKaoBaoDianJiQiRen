package com.mobile.auth.v;

import com.nirvana.tools.logger.model.ACMLoggerRecord;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a<ACMLoggerRecord> {
    @Override // com.mobile.auth.v.a
    protected boolean a(String str) {
        try {
            com.mobile.auth.gatewayauth.b bVar = this.f13603a;
            if (bVar != null) {
                return bVar.a(str);
            }
            return false;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }
}
