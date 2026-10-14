package cn.mucang.android.core.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.GlobalApiInterceptorManager;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.api.request.c;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private final List<cn.mucang.android.core.api.request.d.a> requestInterceptors;
    private final List<cn.mucang.android.core.api.request.d.b> responseInterceptors;

    public a() {
        ArrayList arrayList = new ArrayList();
        this.requestInterceptors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.responseInterceptors = arrayList2;
        GlobalApiInterceptorManager globalApiInterceptorManager = GlobalApiInterceptorManager.f2401a;
        arrayList.addAll(globalApiInterceptorManager.c());
        arrayList2.addAll(globalApiInterceptorManager.d());
        arrayList2.add(new cn.mucang.android.core.api.e.b());
        arrayList2.add(new cn.mucang.android.core.api.e.a());
    }

    private c createDefaultBuilder(String str) {
        c cVar = new c(getApiHost(), str, getSignKey());
        cVar.h(getExtraParams());
        cVar.g(getRequestConfig());
        cVar.n(this.requestInterceptors);
        cVar.o(this.responseInterceptors);
        return cVar;
    }

    public void addRequestInterceptor(cn.mucang.android.core.api.request.d.a aVar) {
        if (aVar == null) {
            return;
        }
        this.requestInterceptors.add(aVar);
    }

    protected void addResponseInterceptor(cn.mucang.android.core.api.request.d.b bVar) {
        if (bVar == null) {
            return;
        }
        this.responseInterceptors.add(bVar);
    }

    protected abstract String getApiHost();

    protected Map<String, String> getExtraParams() {
        return null;
    }

    protected cn.mucang.android.core.api.request.e.c getRequestConfig() {
        return null;
    }

    protected abstract String getSignKey();

    protected ApiResponse httpGet(String str) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.GET);
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected <T> T httpGetData(String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        return (T) httpGet(str).getData(cls);
    }

    protected <T> List<T> httpGetDataList(String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        return httpGet(str).getDataArray(cls);
    }

    protected ApiResponse httpGetEncrypted(String str, List<MucangNameValuePair> list) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.GET);
            if (list != null && list.size() != 0) {
                HashMap map = new HashMap();
                for (MucangNameValuePair mucangNameValuePair : list) {
                    map.put(mucangNameValuePair.getName(), mucangNameValuePair.getValue());
                }
                cVarCreateDefaultBuilder.i(map);
            }
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected <T> cn.mucang.android.core.api.d.b<T> httpGetFetchMoreResponse(StringBuilder sb, cn.mucang.android.core.api.d.a aVar, Class<T> cls) throws ApiException, InternalException, HttpException {
        cn.mucang.android.core.api.g.a.a(sb, aVar);
        return httpGet(sb.toString()).parseFetchMoreResponse(cls);
    }

    protected ApiResponse httpPost(String str, File file) throws ApiException, InternalException, HttpException {
        return httpPost(str, file, (cn.mucang.android.core.http.c.b) null);
    }

    protected ApiResponse httpPostEncrypted(String str, String str2) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.e(str2.getBytes("UTF-8")));
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected ApiResponse httpPost(String str, File file, cn.mucang.android.core.http.c.b bVar) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.h(file));
            cVarCreateDefaultBuilder.m(bVar);
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected ApiResponse httpPost(String str, byte[] bArr, String str2, String str3) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.g(bArr, str2, str3));
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    @Deprecated
    protected ApiResponse httpPost(String str, byte[] bArr) throws ApiException, InternalException, HttpException {
        return httpPost(str, bArr, false);
    }

    @Deprecated
    protected ApiResponse httpPost(String str, byte[] bArr, boolean z) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            if (z) {
                cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.f(bArr));
            } else {
                cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.b(bArr));
            }
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected ApiResponse httpPost(String str, byte[] bArr, String str2) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.c(bArr, str2));
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }

    protected ApiResponse httpPost(String str, List<MucangNameValuePair> list) throws ApiException, InternalException, HttpException {
        return httpPost(str, list, true);
    }

    protected ApiResponse httpPost(String str, List<MucangNameValuePair> list, boolean z) throws ApiException, InternalException, HttpException {
        try {
            c cVarCreateDefaultBuilder = createDefaultBuilder(str);
            cVarCreateDefaultBuilder.k(MucangRequest.HttpMethod.POST);
            if (z) {
                cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.k(list));
            } else {
                cVarCreateDefaultBuilder.l(cn.mucang.android.core.api.request.e.b.i(list));
            }
            return cVarCreateDefaultBuilder.b().g();
        } catch (ApiException e2) {
            throw e2;
        } catch (HttpException e3) {
            throw e3;
        } catch (InternalException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new InternalException(e5);
        }
    }
}
