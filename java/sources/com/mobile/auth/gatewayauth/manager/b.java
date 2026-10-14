package com.mobile.auth.gatewayauth.manager;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.mobile.auth.gatewayauth.model.ConfigRule;
import com.mobile.auth.gatewayauth.model.UploadLog;
import com.nirvana.tools.requestqueue.Callback;
import com.nirvana.tools.requestqueue.RequestQueue;
import com.nirvana.tools.requestqueue.Response;
import com.nirvana.tools.requestqueue.strategy.ThreadStrategy;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13381a;
    private com.mobile.auth.o.a b;
    private volatile ConfigRule c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VendorSdkInfoManager f13382d;

    public b(Context context, VendorSdkInfoManager vendorSdkInfoManager, d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f13381a = applicationContext;
        this.c = com.mobile.auth.gatewayauth.network.a.c(applicationContext);
        this.f13382d = vendorSdkInfoManager;
        this.b = dVar.a();
        if (this.c != null) {
            this.b.a(this.c);
        }
    }

    private boolean A() {
        try {
            return Boolean.parseBoolean(this.c.getLogin_page().getIs_limited()) && this.c.getLogin_page().getLimit_time_hour() > 0;
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

    private boolean B() {
        try {
            return Boolean.parseBoolean(this.c.getLogin_phone().getIs_limited()) && this.c.getLogin_phone().getLimit_time_hour() > 0;
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

    private boolean C() {
        try {
            return Boolean.parseBoolean(this.c.getGet_config().getIs_limited()) && this.c.getGet_config().getLimit_time_hour() > 0;
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

    static /* synthetic */ ConfigRule a(b bVar) {
        try {
            return bVar.c;
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

    static /* synthetic */ ConfigRule a(b bVar, ConfigRule configRule) {
        try {
            bVar.c = configRule;
            return configRule;
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

    static /* synthetic */ com.mobile.auth.o.a b(b bVar) {
        try {
            return bVar.b;
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

    static /* synthetic */ Context c(b bVar) {
        try {
            return bVar.f13381a;
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

    private boolean v() {
        try {
            return this.c != null;
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

    private boolean w() {
        try {
            return Boolean.parseBoolean(this.c.getAuth_token().getIs_limited()) && this.c.getAuth_token().getLimit_time_hour() > 0;
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

    private boolean x() {
        try {
            return Boolean.parseBoolean(this.c.getLogin_token().getIs_limited()) && this.c.getLogin_token().getLimit_time_hour() > 0;
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

    private boolean y() {
        try {
            return Boolean.parseBoolean(this.c.getSls().getIs_limited()) && this.c.getSls().getLimit_time_hour() > 0;
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

    private boolean z() {
        try {
            return Boolean.parseBoolean(this.c.getGet_vendor_list().getIs_limited()) && this.c.getGet_vendor_list().getLimit_time_hour() > 0;
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

    public void a(final RequestCallback<ConfigRule, Void> requestCallback) {
        try {
            if (s()) {
                requestCallback.onError(null);
                return;
            }
            r();
            RequestQueue.getInstance().pushRequest(new com.mobile.auth.t.a(new Callback<com.mobile.auth.u.c>(ThreadStrategy.THREAD, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) { // from class: com.mobile.auth.gatewayauth.manager.b.1
                public void a(com.mobile.auth.u.c cVar) {
                    try {
                        if (cVar.a() == null) {
                            requestCallback.onError(null);
                            return;
                        }
                        ConfigRule configRuleA = cVar.a();
                        if (b.a(b.this) == null || !b.a(b.this).toString().equals(configRuleA.toString())) {
                            b.a(b.this, configRuleA);
                            b.b(b.this).a(b.a(b.this));
                            com.mobile.auth.gatewayauth.network.a.d(b.c(b.this));
                            com.mobile.auth.gatewayauth.network.a.b(b.c(b.this), b.a(b.this).toJsonString());
                        }
                        requestCallback.onSuccess(b.a(b.this));
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }

                @Override // com.nirvana.tools.requestqueue.Callback
                public /* synthetic */ void onResult(Response response) {
                    try {
                        a((com.mobile.auth.u.c) response);
                    } catch (Throwable th) {
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                        } catch (Throwable th2) {
                            com.mobile.auth.gatewayauth.a.a(th2);
                        }
                    }
                }
            }, new com.mobile.auth.p.c(this.f13381a, this.f13382d, this.b), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, com.mobile.auth.u.c.class));
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
            return v() && Boolean.parseBoolean(this.c.getIs_demoted());
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

    public boolean a(int i) {
        try {
            switch (i) {
                case 1:
                    return i();
                case 2:
                    return k();
                case 3:
                    return q();
                case 4:
                    return e();
                case 5:
                    return g();
                case 6:
                    return o();
                case 7:
                    return m();
                default:
                    return false;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void b(int i) {
        try {
            switch (i) {
                case 1:
                    j();
                    break;
                case 2:
                    l();
                    break;
                case 3:
                    r();
                    break;
                case 4:
                    f();
                    break;
                case 5:
                    h();
                    break;
                case 6:
                    p();
                    break;
                case 7:
                    n();
                    break;
                default:
                    return;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean b() {
        try {
            if (v()) {
                return a() || Boolean.parseBoolean(this.c.getIs_auth_demoted());
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

    public boolean c() {
        try {
            if (v()) {
                return a() || Boolean.parseBoolean(this.c.getIs_login_demoted());
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

    public boolean d() {
        try {
            if (v()) {
                return a() || Boolean.parseBoolean(this.c.getIs_crash_demoted());
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

    public boolean e() {
        try {
            return v() && w() && com.mobile.auth.gatewayauth.network.a.j(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getAuth_token().getLimit_time_hour())) >= this.c.getAuth_token().getLimit_count();
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

    public void f() {
        try {
            if (v() && w()) {
                com.mobile.auth.gatewayauth.network.a.i(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getAuth_token().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean g() {
        try {
            return v() && x() && com.mobile.auth.gatewayauth.network.a.l(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_token().getLimit_time_hour())) >= this.c.getLogin_token().getLimit_count();
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

    public void h() {
        try {
            if (v() && x()) {
                com.mobile.auth.gatewayauth.network.a.k(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_token().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean i() {
        try {
            return v() && y() && com.mobile.auth.gatewayauth.network.a.d(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getSls().getLimit_time_hour())) >= this.c.getSls().getLimit_count();
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

    public void j() {
        try {
            if (v() && y()) {
                com.mobile.auth.gatewayauth.network.a.c(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getSls().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean k() {
        try {
            return v() && z() && com.mobile.auth.gatewayauth.network.a.f(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getGet_vendor_list().getLimit_time_hour())) >= this.c.getGet_vendor_list().getLimit_count();
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

    public void l() {
        try {
            if (v() && z()) {
                com.mobile.auth.gatewayauth.network.a.e(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getGet_vendor_list().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean m() {
        try {
            return v() && A() && com.mobile.auth.gatewayauth.network.a.p(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_page().getLimit_time_hour())) >= this.c.getLogin_page().getLimit_count();
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

    public void n() {
        try {
            if (v() && A()) {
                com.mobile.auth.gatewayauth.network.a.o(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_page().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean o() {
        try {
            return v() && B() && com.mobile.auth.gatewayauth.network.a.n(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_phone().getLimit_time_hour())) >= this.c.getLogin_phone().getLimit_count();
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

    public void p() {
        try {
            if (v() && B()) {
                com.mobile.auth.gatewayauth.network.a.m(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getLogin_phone().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean q() {
        try {
            return v() && C() && com.mobile.auth.gatewayauth.network.a.h(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getGet_config().getLimit_time_hour())) >= this.c.getGet_config().getLimit_count();
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

    public void r() {
        try {
            if (v() && C()) {
                com.mobile.auth.gatewayauth.network.a.g(this.f13381a, com.mobile.auth.gatewayauth.utils.a.a(this.c.getGet_config().getLimit_time_hour()));
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public boolean s() {
        try {
            String strA = com.mobile.auth.gatewayauth.network.a.a(this.f13381a);
            return (!TextUtils.isEmpty(strA) && com.mobile.auth.gatewayauth.utils.a.a(strA)) || com.mobile.auth.gatewayauth.network.a.b(this.f13381a) || q();
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

    public boolean t() {
        try {
            return (!v() || this.c.getUpload_log() == null || TextUtils.isEmpty(this.c.getUpload_log().getLevel())) ? false : true;
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

    public UploadLog u() {
        try {
            return this.c.getUpload_log();
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
