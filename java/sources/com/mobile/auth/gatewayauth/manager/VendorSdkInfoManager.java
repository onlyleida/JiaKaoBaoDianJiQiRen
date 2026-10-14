package com.mobile.auth.gatewayauth.manager;

import android.text.TextUtils;
import android.util.SparseArray;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.model.MonitorStruct;
import com.mobile.auth.gatewayauth.model.VendorConfig;
import com.nirvana.tools.jsoner.JsonType;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class VendorSdkInfoManager {
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f13361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SystemManager f13362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mobile.auth.o.a f13363g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseArray<VendorConfig> f13359a = new com.mobile.auth.gatewayauth.manager.base.b(3);
    private SparseArray<VendorConfig> b = new com.mobile.auth.gatewayauth.manager.base.b(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f13364h = false;

    /* JADX INFO: renamed from: com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager$4, reason: invalid class name */
    class AnonymousClass4 extends JsonType<VendorConfig> {
        AnonymousClass4() {
        }
    }

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    public VendorSdkInfoManager(d dVar, SystemManager systemManager) {
        this.f13361e = dVar;
        this.f13363g = dVar.a();
        this.f13362f = systemManager;
    }

    static /* synthetic */ SparseArray a(VendorSdkInfoManager vendorSdkInfoManager) {
        try {
            return vendorSdkInfoManager.b;
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

    private MonitorStruct a(String str) {
        try {
            MonitorStruct monitorStruct = new MonitorStruct();
            monitorStruct.setStartTime(System.currentTimeMillis());
            monitorStruct.setSessionId(str);
            monitorStruct.setRequestId(this.f13361e.f());
            monitorStruct.setAction(Constant.ACTION_QUERY_VENDOR_LIST);
            return monitorStruct;
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

    static /* synthetic */ void a(VendorSdkInfoManager vendorSdkInfoManager, MonitorStruct monitorStruct) {
        try {
            vendorSdkInfoManager.a(monitorStruct);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ void a(VendorSdkInfoManager vendorSdkInfoManager, String str) {
        try {
            vendorSdkInfoManager.storeVendorConfigsBySceneCodeToDisk(str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(final MonitorStruct monitorStruct) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        VendorSdkInfoManager.d(VendorSdkInfoManager.this).a(VendorSdkInfoManager.c(VendorSdkInfoManager.this).a(monitorStruct), 2);
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

    private void a(String[] strArr) {
        if (strArr == null) {
            return;
        }
        try {
            if (strArr.length <= 8 || !"1".equals(strArr[8])) {
                return;
            }
            this.f13364h = true;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(String[] strArr, SparseArray<VendorConfig> sparseArray) {
        if (strArr != null) {
            try {
                if (strArr.length >= 6 && sparseArray != null) {
                    for (int i = 0; i < 3; i++) {
                        VendorConfig vendorConfig = new VendorConfig();
                        int i2 = i * 2;
                        vendorConfig.setVendorAccessId(strArr[i2]);
                        vendorConfig.setVendorAccessSecret(strArr[i2 + 1]);
                        if (i == 0) {
                            vendorConfig.setVendorKey(Constant.VENDOR_CMCC);
                            sparseArray.put(1, vendorConfig);
                        } else if (i == 1) {
                            vendorConfig.setVendorKey(Constant.VENDOR_CUCC);
                            sparseArray.put(2, vendorConfig);
                        } else if (i == 2) {
                            vendorConfig.setVendorKey(Constant.VENDOR_CTCC);
                            sparseArray.put(3, vendorConfig);
                        }
                    }
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
    }

    static /* synthetic */ String b(VendorSdkInfoManager vendorSdkInfoManager) {
        try {
            return vendorSdkInfoManager.c;
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

    private void b(String[] strArr) {
        if (strArr == null) {
            return;
        }
        try {
            if (strArr.length >= 8) {
                String str = strArr[6];
                this.c = str;
                this.f13361e.a(str);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ d c(VendorSdkInfoManager vendorSdkInfoManager) {
        try {
            return vendorSdkInfoManager.f13361e;
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

    private void c(String[] strArr) {
        if (strArr == null) {
            return;
        }
        try {
            if (strArr.length >= 10) {
                this.f13360d = strArr[9];
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ com.mobile.auth.o.a d(VendorSdkInfoManager vendorSdkInfoManager) {
        try {
            return vendorSdkInfoManager.f13363g;
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

    @SafeProtector
    private native void loadVendorConfigsBySceneCodeFromDisk(String str);

    @SafeProtector
    private native void storeVendorConfigsBySceneCodeToDisk(String str);

    public VendorConfig a(int i) {
        try {
            VendorConfig vendorConfig = this.b.get(i);
            return vendorConfig != null ? vendorConfig : this.f13359a.get(i);
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

    public String a(boolean z) {
        if (z) {
            return "SceneCode";
        }
        try {
            String str = this.c;
            return str == null ? UUID.randomUUID().toString() : str;
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

    public void a(String str, final RequestCallback<Void, String> requestCallback, e eVar) {
        if (requestCallback == null || eVar == null) {
            return;
        }
        try {
            final MonitorStruct monitorStructA = a(str);
            eVar.a(new e.a() { // from class: com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager.2
                @Override // com.mobile.auth.gatewayauth.manager.e.a
                public void a(String str2, String str3) {
                    try {
                        monitorStructA.setEndTime(System.currentTimeMillis());
                        monitorStructA.setSuccess(false);
                        monitorStructA.setTopTraceId(str3);
                        monitorStructA.setFailRet(str2);
                        VendorSdkInfoManager.a(VendorSdkInfoManager.this, monitorStructA);
                        requestCallback.onError(str2);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.mobile.auth.gatewayauth.manager.e.a
                public void a(String str2, String str3, SparseArray<VendorConfig> sparseArray) {
                    if (sparseArray != null) {
                        try {
                            if (sparseArray.size() > 0) {
                                synchronized (VendorSdkInfoManager.this) {
                                    for (int i = 0; i < sparseArray.size(); i++) {
                                        VendorSdkInfoManager.a(VendorSdkInfoManager.this).put(sparseArray.keyAt(i), sparseArray.valueAt(i));
                                    }
                                }
                                VendorSdkInfoManager vendorSdkInfoManager = VendorSdkInfoManager.this;
                                VendorSdkInfoManager.a(vendorSdkInfoManager, VendorSdkInfoManager.b(vendorSdkInfoManager));
                                monitorStructA.setEndTime(System.currentTimeMillis());
                                monitorStructA.setSuccess(true);
                                monitorStructA.setTopTraceId(str3);
                                VendorSdkInfoManager.a(VendorSdkInfoManager.this, monitorStructA);
                                requestCallback.onSuccess(null);
                                return;
                            }
                        } catch (Throwable th) {
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                                return;
                            } catch (Throwable th2) {
                                com.mobile.auth.gatewayauth.a.a(th2);
                                return;
                            }
                        }
                    }
                    a(str2, str3);
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

    public boolean a() {
        try {
            return !TextUtils.isEmpty(this.c);
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

    public boolean a(final String str, final e eVar) {
        try {
            if (!b()) {
                try {
                    com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                final CountDownLatch countDownLatch = new CountDownLatch(1);
                                VendorSdkInfoManager.this.a(str, new RequestCallback<Void, String>() { // from class: com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager.1.1
                                    public void a(String str2) {
                                        try {
                                            countDownLatch.countDown();
                                        } catch (Throwable th) {
                                            try {
                                                com.mobile.auth.gatewayauth.a.a(th);
                                            } catch (Throwable th2) {
                                                com.mobile.auth.gatewayauth.a.a(th2);
                                            }
                                        }
                                    }

                                    public void a(Void r1) {
                                        try {
                                            countDownLatch.countDown();
                                        } catch (Throwable th) {
                                            try {
                                                com.mobile.auth.gatewayauth.a.a(th);
                                            } catch (Throwable th2) {
                                                com.mobile.auth.gatewayauth.a.a(th2);
                                            }
                                        }
                                    }

                                    @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                    public /* synthetic */ void onError(String str2) {
                                        try {
                                            a(str2);
                                        } catch (Throwable th) {
                                            try {
                                                com.mobile.auth.gatewayauth.a.a(th);
                                            } catch (Throwable th2) {
                                                com.mobile.auth.gatewayauth.a.a(th2);
                                            }
                                        }
                                    }

                                    @Override // com.mobile.auth.gatewayauth.manager.RequestCallback
                                    public /* synthetic */ void onSuccess(Void r1) {
                                        try {
                                            a(r1);
                                        } catch (Throwable th) {
                                            try {
                                                com.mobile.auth.gatewayauth.a.a(th);
                                            } catch (Throwable th2) {
                                                com.mobile.auth.gatewayauth.a.a(th2);
                                            }
                                        }
                                    }
                                }, eVar);
                                try {
                                    countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
                                } catch (InterruptedException unused) {
                                }
                            } catch (Throwable th) {
                                try {
                                    com.mobile.auth.gatewayauth.a.a(th);
                                } catch (Throwable th2) {
                                    com.mobile.auth.gatewayauth.a.a(th2);
                                }
                            }
                        }
                    }).get(3000L, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                }
            }
            return b();
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

    public boolean b() {
        try {
            return this.b.size() > 0 || this.f13359a.size() > 0;
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

    public String c() {
        try {
            return this.c;
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

    public boolean d() {
        try {
            return this.f13364h;
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

    @SafeProtector
    public native void setLocalVendorSdkInfo(String str);
}
