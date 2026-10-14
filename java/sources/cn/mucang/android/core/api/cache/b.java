package cn.mucang.android.core.api.cache;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends cn.mucang.android.core.api.a {
    private static final int HTTP_STATUS_NOT_MODIFIED = 304;
    protected cn.mucang.android.core.api.cache.c defaultCacheConfig;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApiResponse[] f2329a;
        final /* synthetic */ cn.mucang.android.core.api.cache.c b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2330d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ApiException[] f2331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ HttpException[] f2332f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ InternalException[] f2333g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f2334h;

        a(ApiResponse[] apiResponseArr, cn.mucang.android.core.api.cache.c cVar, String str, String str2, ApiException[] apiExceptionArr, HttpException[] httpExceptionArr, InternalException[] internalExceptionArr, CountDownLatch countDownLatch) {
            this.f2329a = apiResponseArr;
            this.b = cVar;
            this.c = str;
            this.f2330d = str2;
            this.f2331e = apiExceptionArr;
            this.f2332f = httpExceptionArr;
            this.f2333g = internalExceptionArr;
            this.f2334h = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    try {
                        try {
                            this.f2329a[0] = b.this.doFetchRemote(this.b, this.c, this.f2330d, true);
                        } catch (HttpException e2) {
                            this.f2332f[0] = e2;
                        }
                    } catch (Exception e3) {
                        t.c("默认替换", e3);
                        this.f2333g[0] = new InternalException(e3);
                    }
                } catch (ApiException e4) {
                    this.f2331e[0] = e4;
                } catch (InternalException e5) {
                    this.f2333g[0] = e5;
                }
            } finally {
                this.f2334h.countDown();
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.api.cache.b$b, reason: collision with other inner class name */
    class RunnableC0064b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.api.cache.c f2335a;
        final /* synthetic */ String b;
        final /* synthetic */ cn.mucang.android.core.api.cache.a c;

        RunnableC0064b(b bVar, cn.mucang.android.core.api.cache.c cVar, String str, cn.mucang.android.core.api.cache.a aVar) {
            this.f2335a = cVar;
            this.b = str;
            this.c = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2335a.r(this.b, this.c);
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2336a;

        static {
            int[] iArr = new int[CacheMode.values().length];
            f2336a = iArr;
            try {
                iArr[CacheMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2336a[CacheMode.CACHE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2336a[CacheMode.REMOTE_FIRST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b() {
        this(cn.mucang.android.core.api.cache.c.h());
    }

    private void checkConfig(cn.mucang.android.core.api.cache.c cVar) {
        if (cVar == cn.mucang.android.core.api.cache.c.f2337h) {
            return;
        }
        if (cVar.j() == null) {
            throw new IllegalArgumentException("CacheKeyGenerator 不能为 null");
        }
        if (cVar.l() == null) {
            throw new IllegalArgumentException("CacheStorage 不能为 null");
        }
        if (cVar.m() == null) {
            throw new IllegalArgumentException("CacheTimeGenerator 不能为 null");
        }
        if (cVar.n() == null) {
            throw new IllegalArgumentException("CheckTimeGenerator 不能为 null");
        }
        if (cVar.k() == null) {
            throw new IllegalArgumentException("CacheMode 不能为 null");
        }
        CacheMode cacheModeK = cVar.k();
        if ((cacheModeK == CacheMode.AUTO || cacheModeK == CacheMode.REMOTE_FIRST) && cVar.o() <= 0) {
            throw new IllegalArgumentException("remoteFirstTimeout 必须大于 0");
        }
    }

    private cn.mucang.android.core.api.cache.a createCacheApiResponse(cn.mucang.android.core.api.cache.c cVar, ApiResponse apiResponse) {
        int iA = cVar.m().a(apiResponse);
        int iA2 = cVar.n().a(apiResponse);
        long jCurrentTimeMillis = System.currentTimeMillis();
        cn.mucang.android.core.api.cache.a aVar = new cn.mucang.android.core.api.cache.a();
        aVar.e(apiResponse);
        aVar.f((((long) iA) * 1000) + jCurrentTimeMillis);
        aVar.g((((long) iA2) * 1000) + jCurrentTimeMillis);
        return aVar;
    }

    private String generateCacheUrl(String str) {
        Map<String, String> extraParams = getExtraParams();
        if (cn.mucang.android.core.utils.g.c(extraParams)) {
            return str;
        }
        HashMap map = new HashMap();
        map.putAll(extraParams);
        return cn.mucang.android.core.api.url.c.d(str, map);
    }

    private static boolean isCacheAvailable(cn.mucang.android.core.api.cache.a aVar, long j) {
        return aVar != null && aVar.b() >= j;
    }

    protected static cn.mucang.android.core.api.cache.c mergeConfig(cn.mucang.android.core.api.cache.c cVar, cn.mucang.android.core.api.cache.c cVar2) {
        if (cVar == cVar2 || cVar == null) {
            return cVar2;
        }
        cn.mucang.android.core.api.cache.c.a aVar = new cn.mucang.android.core.api.cache.c.a();
        aVar.b(cVar.j());
        aVar.f(cVar.n());
        aVar.h(cVar.p());
        aVar.c(cVar.k());
        aVar.e(cVar.m());
        aVar.g(cVar.o());
        aVar.d(cVar.l());
        if (cVar.p()) {
            if (cVar.k() == null) {
                aVar.c(cVar2.k());
            }
            if (cVar.j() == null) {
                aVar.b(cVar2.j());
            }
            if (cVar.m() == null) {
                aVar.e(cVar2.m());
            }
            if (cVar.l() == null) {
                aVar.d(cVar2.l());
            }
            if (cVar.n() == null) {
                aVar.f(cVar2.n());
            }
            if (cVar.o() <= 0) {
                aVar.g(cVar2.o());
            }
        }
        return aVar.a();
    }

    private static boolean needRefresh(cn.mucang.android.core.api.cache.a aVar, long j) {
        return aVar == null || aVar.c() < j;
    }

    private ApiResponse scheduleNetworkAndThrowException(String str, cn.mucang.android.core.api.cache.c cVar, String str2, ApiResponse apiResponse) throws ApiException, InternalException, HttpException {
        InternalException internalException;
        HttpException e2;
        ApiResponse apiResponse2 = null;
        try {
            ApiResponse apiResponseDoRemoteFirstWithTimeout = doRemoteFirstWithTimeout(str, cVar, str2);
            internalException = null;
            apiResponse2 = apiResponseDoRemoteFirstWithTimeout;
            e2 = null;
        } catch (HttpException e3) {
            e2 = e3;
            internalException = null;
        } catch (InternalException e4) {
            internalException = e4;
            e2 = null;
        }
        if (apiResponse2 != null || apiResponse != null) {
            return apiResponse2 == null ? apiResponse : apiResponse2;
        }
        if (e2 != null) {
            throw e2;
        }
        if (internalException != null) {
            throw internalException;
        }
        throw new InternalException("无结果！Cache 结果为空，且取网络时超时。");
    }

    protected ApiResponse doFetchRemote(cn.mucang.android.core.api.cache.c cVar, String str, String str2, boolean z) throws ApiException, InternalException, HttpException {
        ApiResponse apiResponseA;
        try {
            try {
                String strGenerateCacheUrl = generateCacheUrl(str);
                try {
                    if (n0.g(str2)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new MucangNameValuePair("_eTag", str2));
                        str = cn.mucang.android.core.api.url.c.c(str, arrayList);
                    }
                    apiResponseA = super.httpGet(str);
                } catch (HttpException e2) {
                    if (e2.getHttpStatusCode() != 304 || !n0.g(str2)) {
                        throw e2;
                    }
                    apiResponseA = cVar.i(strGenerateCacheUrl).a();
                }
                cn.mucang.android.core.api.cache.a aVarCreateCacheApiResponse = createCacheApiResponse(cVar, apiResponseA);
                if (z) {
                    MucangConfig.f(new RunnableC0064b(this, cVar, strGenerateCacheUrl, aVarCreateCacheApiResponse));
                } else {
                    try {
                        cVar.r(strGenerateCacheUrl, aVarCreateCacheApiResponse);
                    } catch (Exception e3) {
                        t.c("默认替换", e3);
                    }
                }
                return apiResponseA;
            } catch (HttpException e4) {
                throw e4;
            }
        } catch (ApiException e5) {
            throw e5;
        } catch (Exception e6) {
            throw new InternalException(e6);
        }
    }

    protected cn.mucang.android.core.api.cache.c doMergeConfig(cn.mucang.android.core.api.cache.c cVar) {
        cn.mucang.android.core.api.cache.c cVarMergeConfig = mergeConfig(cVar, this.defaultCacheConfig);
        try {
            checkConfig(cVarMergeConfig);
            return cVarMergeConfig;
        } catch (Exception unused) {
            return cn.mucang.android.core.api.cache.c.f2337h;
        }
    }

    protected ApiResponse doRemoteFirstWithTimeout(String str, cn.mucang.android.core.api.cache.c cVar, String str2) throws ApiException, InternalException, HttpException {
        boolean z = true;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ApiResponse[] apiResponseArr = new ApiResponse[1];
        ApiException[] apiExceptionArr = new ApiException[1];
        HttpException[] httpExceptionArr = new HttpException[1];
        InternalException[] internalExceptionArr = new InternalException[1];
        MucangConfig.f(new a(apiResponseArr, cVar, str, str2, apiExceptionArr, httpExceptionArr, internalExceptionArr, countDownLatch));
        try {
            if (countDownLatch.await(cVar.o(), TimeUnit.MILLISECONDS)) {
                StringBuilder sb = new StringBuilder();
                sb.append("先走网络,被唤醒了,此时网络有返回吗?");
                if (apiResponseArr[0] == null) {
                    z = false;
                }
                sb.append(z);
                t.a("hadeslee", sb.toString());
            } else {
                t.a("hadeslee", "先走网络,但是网络在规定的时间:" + cVar.o() + "毫秒内没有返回");
            }
            if (apiExceptionArr[0] != null) {
                throw apiExceptionArr[0];
            }
            if (httpExceptionArr[0] != null) {
                throw httpExceptionArr[0];
            }
            if (internalExceptionArr[0] != null) {
                throw internalExceptionArr[0];
            }
            if (apiResponseArr[0] != null) {
                return apiResponseArr[0];
            }
            return null;
        } catch (InterruptedException e2) {
            t.c("默认替换", e2);
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected ApiResponse httpGet(String str) throws ApiException, InternalException, HttpException {
        return httpGet(this.defaultCacheConfig, str);
    }

    @Override // cn.mucang.android.core.api.a
    protected <T> T httpGetData(String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        return (T) httpGetData(this.defaultCacheConfig, str, cls);
    }

    @Override // cn.mucang.android.core.api.a
    protected <T> List<T> httpGetDataList(String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        return httpGetDataList(this.defaultCacheConfig, str, cls);
    }

    public b(cn.mucang.android.core.api.cache.c cVar) {
        try {
            checkConfig(cVar);
            this.defaultCacheConfig = cVar;
        } catch (Exception e2) {
            t.c("默认替换", e2);
            this.defaultCacheConfig = cn.mucang.android.core.api.cache.c.f2337h;
        }
    }

    protected ApiResponse httpGet(cn.mucang.android.core.api.cache.c cVar, String str) throws ApiException, InternalException, HttpException {
        ApiResponse apiResponseA;
        String strD;
        cn.mucang.android.core.api.cache.c cVarDoMergeConfig = doMergeConfig(cVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strGenerateCacheUrl = generateCacheUrl(str);
        cn.mucang.android.core.api.cache.a aVarI = cVarDoMergeConfig.i(strGenerateCacheUrl);
        if (isCacheAvailable(aVarI, jCurrentTimeMillis)) {
            apiResponseA = aVarI.a();
            strD = aVarI.d();
        } else {
            cVarDoMergeConfig.q(strGenerateCacheUrl);
            apiResponseA = null;
            aVarI = null;
            strD = null;
        }
        if (cVarDoMergeConfig.k() == null) {
            throw new InternalException("自定义CacheConfig的CacheMode不能为空");
        }
        int i = c.f2336a[cVarDoMergeConfig.k().ordinal()];
        if (i == 1) {
            return needRefresh(aVarI, jCurrentTimeMillis) ? scheduleNetworkAndThrowException(str, cVarDoMergeConfig, strD, apiResponseA) : apiResponseA;
        }
        if (i == 2) {
            return apiResponseA;
        }
        if (i != 3) {
            return null;
        }
        return scheduleNetworkAndThrowException(str, cVarDoMergeConfig, strD, apiResponseA);
    }

    protected <T> T httpGetData(cn.mucang.android.core.api.cache.c cVar, String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        ApiResponse apiResponseHttpGet = httpGet(cVar, str);
        if (apiResponseHttpGet == null) {
            return null;
        }
        return (T) apiResponseHttpGet.getData(cls);
    }

    protected <T> List<T> httpGetDataList(cn.mucang.android.core.api.cache.c cVar, String str, Class<T> cls) throws ApiException, InternalException, HttpException {
        ApiResponse apiResponseHttpGet = httpGet(cVar, str);
        if (apiResponseHttpGet == null) {
            return null;
        }
        return apiResponseHttpGet.getDataArray(cls);
    }
}
