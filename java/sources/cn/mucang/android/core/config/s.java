package cn.mucang.android.core.config;

import android.net.Uri;
import android.text.TextUtils;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.location.LocationUtils;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.tencent.bugly.Bugly;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private static final String b = "s";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f2495a;

    static class b extends cn.mucang.android.core.api.cache.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final cn.mucang.android.core.api.cache.c f2496d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private cn.mucang.android.core.misc.b f2497a;
        private volatile Map<String, String> b;
        private final ExecutorService c;

        class a implements Callable<Boolean> {
            a() {
            }

            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean call() {
                try {
                    Map<String, String> map = (Map) b.this.httpGetData(b.f2496d, "/api/open/v4/config/get.htm", Map.class);
                    if (cn.mucang.android.core.utils.g.e(map)) {
                        b.this.g(map);
                    }
                    return Boolean.TRUE;
                } catch (Exception e2) {
                    cn.mucang.android.core.utils.t.c(s.b, e2);
                    return Boolean.FALSE;
                }
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.core.config.s$b$b, reason: collision with other inner class name */
        private static class C0076b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static b f2499a = new b();
        }

        static {
            cn.mucang.android.core.api.cache.c.a aVar = new cn.mucang.android.core.api.cache.c.a();
            aVar.b(c.f2500a);
            aVar.h(true);
            f2496d = aVar.a();
        }

        protected static b d() {
            return C0076b.f2499a;
        }

        Map<String, String> e() {
            if (this.b == null) {
                synchronized (this) {
                    if (this.b == null) {
                        try {
                            String strF = j0.f("__core__remote_config__", "remote_config", "");
                            if (n0.g(strF)) {
                                this.b = (Map) JSON.parseObject(strF, Map.class);
                            }
                        } catch (Exception e2) {
                            cn.mucang.android.core.utils.t.c("Exception", e2);
                        }
                    }
                }
            }
            return this.b;
        }

        void f() {
            if (a0.e() && PrivacyAgreementSetting.d()) {
                this.f2497a.d(new a(), this.c);
            }
        }

        synchronized void g(Map<String, String> map) {
            this.b = map;
            try {
                j0.k("__core__remote_config__", "remote_config", this.b != null ? JSON.toJSONString(this.b) : null);
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("Exception", e2);
            }
        }

        @Override // cn.mucang.android.core.api.a
        protected String getApiHost() {
            return "https://config.kakamobi.com";
        }

        @Override // cn.mucang.android.core.api.a
        protected String getSignKey() {
            return "*#06#d3pycm9DSYd6lndDckVwkzyZ";
        }

        public boolean h(List<MucangNameValuePair> list) {
            try {
                return !cn.mucang.android.core.utils.g.b(list) && httpPost("/api/open/v4/config/count.htm", list).isSuccess();
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c(s.b, e2);
                return false;
            }
        }

        private b() {
            this.f2497a = cn.mucang.android.core.misc.c.f(MucangConfig.getContext(), "_remote_config_", 3600000L);
            this.c = Executors.newSingleThreadExecutor(new ThreadPool.a("remote"));
            f();
        }
    }

    public static class c implements cn.mucang.android.core.api.cache.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f2500a = new c();

        @Override // cn.mucang.android.core.api.cache.d
        public String a(String str) {
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            w wVarS = MucangConfig.s();
            if (wVarS != null) {
                String strH = wVarS.h();
                if (n0.g(strH)) {
                    builderBuildUpon.appendQueryParameter("_userCity", strH);
                }
            }
            cn.mucang.android.core.location.c cVarE = LocationUtils.e(false);
            if (cVarE != null) {
                String strB = cVarE.b();
                if (n0.g(strB)) {
                    builderBuildUpon.appendQueryParameter("_gpsCity", strB);
                }
            }
            String strF = LocationUtils.f();
            if (n0.g(strF)) {
                builderBuildUpon.appendQueryParameter("_ipCity", strF);
            }
            return Digests.md5(builderBuildUpon.toString());
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final s f2501a = new s(b.d());
    }

    s(b bVar) {
        this.f2495a = bVar;
    }

    private String b(String str) {
        try {
            if (!PrivacyAgreementSetting.d()) {
                PrivacyAgreementSetting.c("rm-cfg");
                return null;
            }
            if (!str.equals("oort_protect_value")) {
                v.b(str);
            }
            this.f2495a.f();
            Map<String, String> mapE = this.f2495a.e();
            if (!cn.mucang.android.core.utils.g.c(mapE)) {
                return mapE.get(str);
            }
            return null;
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c(b, e2);
        }
    }

    static String g(String str) {
        try {
            String host = Uri.parse(str).getHost();
            if (!TextUtils.isEmpty(host)) {
                return host;
            }
            return g("http://" + str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static s h() {
        return d.f2501a;
    }

    static boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("kakamobi") || lowerCase.contains("mucang") || lowerCase.contains("pingxing.cn") || lowerCase.contains("maiche.com") || lowerCase.contains("jiakaobaodian.com") || lowerCase.contains("xiaozhu2.com");
    }

    public long c() {
        long jH = y.h(e("advert_startup_interval"), -1);
        return jH <= 0 ? DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS : jH * 1000;
    }

    public boolean d(String str, boolean z) {
        String strE = e(str);
        return ("true".equalsIgnoreCase(strE) || Bugly.SDK_IS_DEV.equalsIgnoreCase(strE)) ? Boolean.valueOf(strE).booleanValue() : z;
    }

    public String e(String str) {
        return b(str);
    }

    public JSONArray f() {
        String strE = e("disable_close_button");
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        return JSON.parseArray(strE);
    }

    public long i() {
        long jH = y.h(e("min_leave_time"), -1);
        return jH <= -1 ? DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS : jH * 1000;
    }

    boolean k(String str) {
        JSONArray jSONArray;
        try {
            String strE = e("mucang_hosts");
            if (!TextUtils.isEmpty(strE) && (jSONArray = JSON.parseObject(strE).getJSONArray("hostsRegexList")) != null && jSONArray.size() != 0) {
                for (int i = 0; i < jSONArray.size(); i++) {
                    String string = jSONArray.getString(i);
                    if (!TextUtils.isEmpty(string) && str.matches(string)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
            return false;
        }
    }

    public boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strG = g(str);
        if (TextUtils.isEmpty(strG)) {
            return false;
        }
        String lowerCase = strG.toLowerCase();
        return k(lowerCase) || j(lowerCase);
    }
}
