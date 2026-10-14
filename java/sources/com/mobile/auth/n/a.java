package com.mobile.auth.n;

import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.PnsReporter;
import com.mobile.auth.gatewayauth.manager.d;
import com.mobile.auth.gatewayauth.manager.f;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.mobile.auth.gatewayauth.utils.b;

/* JADX INFO: loaded from: classes5.dex */
public class a implements PnsReporter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.o.a f13519a;
    private d b;
    private f c;

    public a(com.mobile.auth.o.a aVar, d dVar) {
        this.f13519a = aVar;
        this.b = dVar;
    }

    static /* synthetic */ d a(a aVar) {
        try {
            return aVar.b;
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

    static /* synthetic */ com.mobile.auth.o.a b(a aVar) {
        try {
            return aVar.f13519a;
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

    public void a(f fVar) {
        try {
            this.c = fVar;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.PnsReporter
    public void setLoggerEnable(final boolean z) {
        try {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.f.a(z);
            f fVar = this.c;
            if (fVar != null) {
                for (com.mobile.auth.gatewayauth.manager.a aVar : fVar.a()) {
                    if (aVar != null) {
                        aVar.a(z);
                    }
                }
            }
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            b.a(new Runnable() { // from class: com.mobile.auth.n.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        a.b(a.this).a(a.a(a.this).b("", Constant.ACTION_PHONE_LOGGER_ENABLE, UStruct.newUStruct().putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(z)).startTime(jCurrentTimeMillis).endTime(jCurrentTimeMillis2).build(), String.valueOf(1)), 2);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.PnsReporter
    public void setUploadEnable(boolean z) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.mobile.auth.gatewayauth.utils.f.b(z);
            this.f13519a.a(this.b.b("", Constant.ACTION_PHONE_UPLOAD_ENABLE, UStruct.newUStruct().putApiParams(Constant.API_PARAMS_KEY_ENABLE, String.valueOf(z)).startTime(jCurrentTimeMillis).endTime(System.currentTimeMillis()).build(), String.valueOf(1)), 2);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
