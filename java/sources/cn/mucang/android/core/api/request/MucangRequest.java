package cn.mucang.android.core.api.request;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.g;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MucangRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpMethod f2393a;
    private final String b;
    private final cn.mucang.android.core.api.request.e.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<cn.mucang.android.core.api.request.e.a> f2394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.core.api.request.e.c f2395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.core.http.c.b f2396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<cn.mucang.android.core.api.request.d.b> f2397g;

    public enum HttpMethod {
        GET,
        POST
    }

    public MucangRequest(HttpMethod httpMethod, String str, cn.mucang.android.core.api.request.e.b bVar, List<cn.mucang.android.core.api.request.e.a> list, List<cn.mucang.android.core.api.request.d.b> list2, cn.mucang.android.core.api.request.e.c cVar, cn.mucang.android.core.http.c.b bVar2) {
        this.f2393a = httpMethod;
        this.b = str;
        this.c = bVar;
        this.f2394d = g.a(list);
        this.f2395e = cVar;
        this.f2397g = g.h(list2);
        this.f2396f = bVar2;
    }

    private String a(String str) throws IOException, HttpException {
        HttpMethod httpMethod = this.f2393a;
        if (httpMethod == HttpMethod.GET) {
            return b().o(str, this.f2394d);
        }
        if (httpMethod == HttpMethod.POST) {
            return b().A(str, this.c, this.f2394d, this.f2396f);
        }
        return null;
    }

    private cn.mucang.android.core.http.a b() {
        cn.mucang.android.core.api.request.e.c cVar = this.f2395e;
        if (cVar == null) {
            return cn.mucang.android.core.http.a.q();
        }
        cn.mucang.android.core.http.a.b bVar = new cn.mucang.android.core.http.a.b();
        bVar.j(cVar);
        return bVar.i();
    }

    private void e(ApiResponse apiResponse) throws Exception {
        if (g.b(this.f2397g)) {
            return;
        }
        Iterator<cn.mucang.android.core.api.request.d.b> it = this.f2397g.iterator();
        while (it.hasNext()) {
            it.next().a(apiResponse, this);
        }
    }

    private ApiResponse f(String str, int i) throws Exception {
        try {
            return new ApiResponse(JSON.parseObject(str, Feature.OrderedField));
        } catch (Exception e2) {
            if (i == -1) {
                return new ApiResponse(null, str);
            }
            throw e2;
        }
    }

    public cn.mucang.android.core.api.request.e.b c() {
        return this.c;
    }

    public String d() {
        return this.b;
    }

    public ApiResponse g() throws ApiException, InternalException, HttpException {
        String strA;
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c(this.b);
            throw new InternalException("network operation not permitted.");
        }
        int i = -1;
        try {
            strA = a(this.b);
        } catch (HttpException e2) {
            int httpStatusCode = e2.getHttpStatusCode();
            String message = e2.getMessage();
            if (httpStatusCode == 304) {
                throw e2;
            }
            i = httpStatusCode;
            strA = message;
        } catch (IOException e3) {
            throw new HttpException(e3.getMessage(), e3);
        }
        try {
            ApiResponse apiResponseF = f(strA, i);
            e(apiResponseF);
            return apiResponseF;
        } catch (ApiException e4) {
            throw e4;
        } catch (HttpException e5) {
            throw e5;
        } catch (InternalException e6) {
            throw e6;
        } catch (IOException e7) {
            throw new HttpException(e7.getMessage(), e7);
        } catch (Exception e8) {
            throw new InternalException(e8);
        }
    }
}
