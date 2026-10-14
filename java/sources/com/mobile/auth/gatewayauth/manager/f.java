package com.mobile.auth.gatewayauth.manager;

import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.model.VendorConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SystemManager f13407a;
    private a b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f13408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f13409e;

    public f(SystemManager systemManager, d dVar) {
        this.f13407a = systemManager;
        this.f13409e = dVar;
        this.b = new com.mobile.auth.q.c(systemManager.g(), this.f13409e);
        this.c = new com.mobile.auth.s.a(this.f13407a.g(), this.f13409e);
        this.f13408d = new com.mobile.auth.r.a(this.f13407a.g(), this.f13409e);
    }

    public a a(String str) {
        byte b = -1;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1350608857) {
                if (iHashCode != 95009260) {
                    if (iHashCode == 880617272 && str.equals(Constant.VENDOR_CMCC)) {
                        b = 0;
                    }
                } else if (str.equals(Constant.VENDOR_CUCC)) {
                    b = 1;
                }
            } else if (str.equals(Constant.VENDOR_CTCC)) {
                b = 2;
            }
            if (b == 0) {
                return this.b;
            }
            if (b == 1) {
                return this.c;
            }
            if (b != 2) {
                return null;
            }
            return this.f13408d;
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

    public List<a> a() {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.b);
            arrayList.add(this.c);
            arrayList.add(this.f13408d);
            return arrayList;
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

    public boolean a(VendorSdkInfoManager vendorSdkInfoManager) {
        int i;
        try {
            VendorConfig vendorConfigA = vendorSdkInfoManager.a(1);
            VendorConfig vendorConfigA2 = vendorSdkInfoManager.a(2);
            VendorConfig vendorConfigA3 = vendorSdkInfoManager.a(3);
            if (vendorConfigA != null) {
                this.b.a(vendorConfigA.getVendorAccessId(), vendorConfigA.getVendorAccessSecret());
                i = 1;
            } else {
                i = 0;
            }
            if (vendorConfigA2 != null) {
                this.c.a(vendorConfigA2.getVendorAccessId(), vendorConfigA2.getVendorAccessSecret());
                i++;
            }
            if (vendorConfigA3 != null) {
                this.f13408d.a(vendorConfigA3.getVendorAccessId(), vendorConfigA3.getVendorAccessSecret());
                i++;
            }
            return i == 3;
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
