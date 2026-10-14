package com.mobile.auth.p;

import android.content.Context;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager;
import com.mobile.auth.gatewayauth.model.psc_info_upload.AllRBInfo;
import com.mobile.auth.gatewayauth.model.psc_info_upload.PnsVendorQueryResponse;
import com.mobile.auth.gatewayauth.model.psc_info_upload.Result;
import com.mobile.auth.gatewayauth.network.TopRequestUtils;
import com.mobile.auth.gatewayauth.utils.EncryptUtils;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a<com.mobile.auth.u.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.o.a f13544a;
    private VendorSdkInfoManager b;

    public b(Context context, VendorSdkInfoManager vendorSdkInfoManager, com.mobile.auth.gatewayauth.manager.b bVar, com.mobile.auth.o.a aVar) {
        super(context, bVar);
        this.f13544a = aVar;
        this.b = vendorSdkInfoManager;
    }

    @Override // com.mobile.auth.p.a
    public /* synthetic */ com.mobile.auth.u.a a() {
        try {
            return d();
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

    @Override // com.mobile.auth.p.a
    public /* synthetic */ com.mobile.auth.u.a a(String str) {
        try {
            return b(str);
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

    public com.mobile.auth.u.b b(String str) {
        String vendorList = "";
        try {
            try {
                vendorList = TopRequestUtils.getVendorList("alibaba.aliqin.pns.vendor.querylist", EncryptUtils.encryptToken(c(), null, null, null, this.b.c(), str, null, null, null));
                this.f13544a.a("TopRequest-GetVendorList:" + vendorList);
            } catch (Exception unused) {
            }
            return new com.mobile.auth.u.b(false, vendorList, str);
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

    public com.mobile.auth.u.b d() {
        try {
            AllRBInfo allRBInfo = new AllRBInfo();
            PnsVendorQueryResponse pnsVendorQueryResponse = new PnsVendorQueryResponse();
            Result result = new Result();
            result.setCode(ResultCode.CODE_ERROR_FUNCTION_LIMIT);
            result.setMessage("GetVendorList Limited");
            pnsVendorQueryResponse.setResult(result);
            allRBInfo.setResponse(pnsVendorQueryResponse);
            return new com.mobile.auth.u.b(false, allRBInfo.toJson().toString(), "");
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

    public com.mobile.auth.u.a e() {
        try {
            return new com.mobile.auth.u.b(true, "{}", "");
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
    public /* synthetic */ com.mobile.auth.u.a onTimeout() {
        try {
            return e();
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
