package com.mobile.auth.p;

import android.content.Context;
import com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager;
import com.mobile.auth.gatewayauth.model.psc_sdk_config.ConfigRB;
import com.mobile.auth.gatewayauth.network.TopRequestUtils;
import com.mobile.auth.gatewayauth.utils.EncryptUtils;
import com.nirvana.tools.requestqueue.TimeoutCallable;

/* JADX INFO: loaded from: classes5.dex */
public class c implements TimeoutCallable<com.mobile.auth.u.c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13545a;
    private com.mobile.auth.o.a b;
    private VendorSdkInfoManager c;

    public c(Context context, VendorSdkInfoManager vendorSdkInfoManager, com.mobile.auth.o.a aVar) {
        this.f13545a = context;
        this.b = aVar;
        this.c = vendorSdkInfoManager;
    }

    public com.mobile.auth.u.c a() {
        try {
            return new com.mobile.auth.u.c(true);
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

    public com.mobile.auth.u.c b() throws Exception {
        try {
            try {
                String sDKConfig = TopRequestUtils.getSDKConfig(EncryptUtils.noEncryptTinfo(this.f13545a, this.c.c(), com.mobile.auth.gatewayauth.utils.c.b(this.f13545a)));
                this.b.a("getSdkConfig Ret:", sDKConfig);
                ConfigRB configRBFromJson = ConfigRB.fromJson(sDKConfig);
                if (configRBFromJson != null) {
                    if (configRBFromJson.getResponse() == null || configRBFromJson.getResponse().getResult() == null) {
                        if (configRBFromJson.getErrorResponse() != null) {
                            if (configRBFromJson.getErrorResponse().getCode() == 22) {
                                com.mobile.auth.gatewayauth.network.a.a(this.f13545a, true);
                            } else if (configRBFromJson.getErrorResponse().getCode() == 7) {
                                com.mobile.auth.gatewayauth.network.a.a(this.f13545a, com.mobile.auth.gatewayauth.utils.a.a());
                            }
                        }
                    } else if (configRBFromJson.getResponse().getResult().getModel() != null && "OK".equals(configRBFromJson.getResponse().getResult().getCode())) {
                        return new com.mobile.auth.u.c(false, configRBFromJson.getResponse().getResult().getModel());
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new com.mobile.auth.u.c(false);
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

    @Override // java.util.concurrent.Callable
    public /* synthetic */ Object call() throws Exception {
        try {
            return b();
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

    @Override // com.nirvana.tools.requestqueue.TimeoutCallable
    public /* synthetic */ com.mobile.auth.u.c onTimeout() {
        try {
            return a();
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
}
