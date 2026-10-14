package cn.mucang.android.jiakaoyi.framework.p002e;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.a;
import cn.mucang.android.core.api.d.b;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.GlobalApiInterceptorManager;
import cn.mucang.android.core.api.request.c;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.p;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.intercept.GlobalResponseInterceptor;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.c0;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n extends a {
    private static final String[] b = {"/api/open/car-body/save.htm", "/api/open/car-body/update.htm", "/api/open/judge-rule/get-inc-rules.htm", "/api/open/judge-rule/get-exam-site-rules.htm", "/api/open/instruction-rule/get-inc-rules.htm", "/api/open/instruction-rule/get-exam-site-rules.htm", "/api/open/base-station/move.htm"};
    private static final GlobalResponseInterceptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f3439d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f3440a;

    static {
        GlobalResponseInterceptor globalResponseInterceptor = new GlobalResponseInterceptor();
        c = globalResponseInterceptor;
        GlobalApiInterceptorManager.f2401a.b(globalResponseInterceptor);
        f3439d = cn.mucang.android.core.encode.a.g("product=" + p.e() + "&version=" + p.k());
    }

    public n() {
        HashMap map = new HashMap();
        this.f3440a = map;
        map.putAll(g.b());
    }

    private String d() {
        return MucangConfig.v() ? "https://lukaoyi.ttt.mucang.cn" : "https://lukaoyi.kakamobi.cn";
    }

    private String e() {
        return MucangConfig.v() ? "https://robot-teach.ttt.mucang.cn" : "https://robot-teach.kakamobi.cn";
    }

    private void i(String str, Exception exc) {
        try {
            String[] strArrSplit = str.split("\\?");
            if (strArrSplit.length >= 1) {
                str = strArrSplit[0];
            }
            if (exc instanceof ApiException) {
                f.o("接口请求失败: url: " + str + ", " + ((ApiException) exc).getApiResponse().getRawString());
                return;
            }
            if (!(exc instanceof HttpException) && !(exc instanceof InternalException)) {
                f.o("接口请求失败: url: " + str + ", 异常: " + (exc.getCause() != null ? exc.getCause().toString() : exc.getMessage()));
                return;
            }
            String message = exc.getMessage();
            if (exc.getCause() != null) {
                message = exc.getCause().toString();
                if (exc.getCause().getCause() != null) {
                    message = exc.getCause().getCause().toString();
                }
            }
            f.o("接口请求失败: url: " + str + ", 异常: " + exc.getMessage() + ", " + message);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean j(String str) {
        if (n0.e(SsoBaseApi.n().e())) {
            return false;
        }
        for (String str2 : b) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean l() {
        return c() || !(AppUtils.k() || AppUtils.e());
    }

    protected void b() {
        addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.jiakaoyi.framework.e.b
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(c cVar) {
                cVar.a("X-SSO-Token", SsoBaseApi.n().e());
            }
        });
        addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.jiakaoyi.framework.e.c
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(cn.mucang.android.core.api.request.c cVar) {
                cVar.a(HttpHeaders.X_REQUESTED_WITH, "XMLHttpRequest");
            }
        });
        addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.jiakaoyi.framework.e.a
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(c cVar) {
                cVar.a("XY-Agent", n.f3439d);
            }
        });
    }

    protected boolean c() {
        return (AppUtils.k() || AppUtils.e()) ? false : true;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return l() ? d() : e();
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return this.f3440a;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return l() ? "*#06#iJejkYeMfUWcmnNzhZaQh4aT" : "*#06#dTyRPIVxdomWQmp6eHmTg6iC";
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpGet(String str) throws Exception {
        try {
            return super.httpGet(str);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected <T> T httpGetData(String str, Class<T> cls) throws Exception {
        try {
            return (T) super.httpGetData(str, cls);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected <T> List<T> httpGetDataList(String str, Class<T> cls) throws Exception {
        try {
            if (AppUtils.k() && j(str)) {
                b();
                str = str.replace("api/open", "api/admin");
            }
            return super.httpGetDataList(str, cls);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected <T> b<T> httpGetFetchMoreResponse(StringBuilder sb, cn.mucang.android.core.api.d.a aVar, Class<T> cls) throws Exception {
        try {
            return super.httpGetFetchMoreResponse(sb, aVar, cls);
        } catch (Exception e2) {
            i(sb.toString(), e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpPost(String str, File file, cn.mucang.android.core.http.c.b bVar) throws Exception {
        try {
            return super.httpPost(str, file, bVar);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    protected void k(String str) {
        getExtraParams().put("kemu", str);
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpPost(String str, byte[] bArr, boolean z) throws Exception {
        try {
            return super.httpPost(str, bArr, z);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpPost(String str, byte[] bArr, String str2) throws Exception {
        try {
            return super.httpPost(str, bArr, str2);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpPost(String str, List<MucangNameValuePair> list) throws ApiException, InternalException, HttpException {
        if (AppUtils.k() && j(str)) {
            b();
            str = str.replace("api/open", "api/admin");
        }
        return httpPost(str, list, c0.a());
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpPost(String str, List<MucangNameValuePair> list, boolean z) throws Exception {
        try {
            return super.httpPost(str, list, z);
        } catch (Exception e2) {
            i(str, e2);
            throw e2;
        }
    }
}
