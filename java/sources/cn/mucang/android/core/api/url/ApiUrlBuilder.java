package cn.mucang.android.core.api.url;

import android.net.Uri;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.o0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\u0010%\n\u0002\b\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u001c\u0010\f\u001a\u00020\u00002\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0007J\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000f\u001a\u00020\u0007J$\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rH\u0002J,\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0016\b\u0002\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\rH\u0002J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u001c\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0018H\u0002J@\u0010\u0019\u001a\u00020\u00172\"\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\b2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rH\u0002J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/core/api/url/ApiUrlBuilder;", "", "()V", "basicParamsBuilder", "Lcn/mucang/android/core/api/url/BasicParamsBuilder;", "externalParams", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "appendParam", "key", "value", "appendParams", "", "build", "url", "buildAsMap", "buildMapToUrl", "maps", "buildNoUrl", "highPriority", "getUrlParamsToMap", "modifyParamsFromOuter", "", "", "putParamsTo", TtmlNode.RUBY_BASE, "newParams", "setBasicParamsBuilder", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ApiUrlBuilder {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, c.a> f2378d = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, String> f2379a = new HashMap<>();
    private BasicParamsBuilder b;

    /* JADX INFO: renamed from: cn.mucang.android.core.api.f.a$a */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0003J\b\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0006H\u0007J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/core/api/url/ApiUrlBuilder$Companion;", "", "()V", "providerMap", "", "", "Lcn/mucang/android/core/api/url/MucangUrl$UrlValueProvider;", "convertGlobalParamsProviderToMap", "", "create", "Lcn/mucang/android/core/api/url/ApiUrlBuilder;", "registerParam", "", "key", "provider", "unregisterParam", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized Map<String, String> b() {
            HashMap map;
            map = new HashMap();
            for (Map.Entry entry : ApiUrlBuilder.f2378d.entrySet()) {
                if (n0.g((String) entry.getKey())) {
                    String realValue = ((c.a) entry.getValue()).getValue();
                    if (n0.g(realValue)) {
                        Object key = entry.getKey();
                        r.d(realValue, "realValue");
                        map.put(key, realValue);
                    } else {
                        continue;
                    }
                }
            }
            return map;
        }

        public final synchronized ApiUrlBuilder c() {
            return new ApiUrlBuilder();
        }

        public final synchronized void d(String key, c.a provider) {
            r.e(key, "key");
            r.e(provider, "provider");
            ApiUrlBuilder.f2378d.put(key, provider);
        }

        public final synchronized void e(String key) {
            r.e(key, "key");
            ApiUrlBuilder.f2378d.remove(key);
        }
    }

    public ApiUrlBuilder() {
        BasicParamsBuilder basicParamsBuilder = new BasicParamsBuilder();
        this.b = basicParamsBuilder;
        BasicParamsBuilder.l(basicParamsBuilder, null, 1, null);
    }

    private final String e(String str, Map<String, String> map) {
        Uri uri = Uri.parse(str);
        Uri.Builder builderPath = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderPath.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String string = builderPath.toString();
        r.d(string, "uriBuilder.toString()");
        return string;
    }

    private final Map<String, String> f(Map<String, String> map) {
        HashMap<String, String> map2 = new HashMap<>();
        j(map2, c.b());
        j(map2, this.f2379a);
        if (map != null) {
            j(map2, map);
        }
        BasicParamsBuilder basicParamsBuilder = this.b;
        basicParamsBuilder.c(map2);
        return basicParamsBuilder.d();
    }

    public static final synchronized ApiUrlBuilder g() {
        return c.c();
    }

    private final Map<String, String> h(String str) {
        HashMap map = new HashMap();
        Uri uri = Uri.parse(str);
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (g.d(queryParameterNames)) {
            for (String str2 : queryParameterNames) {
                String queryParameter = uri.getQueryParameter(str2);
                if (queryParameter != null) {
                }
            }
        }
        return map;
    }

    private final void i(Map<String, String> map) {
        if (map.containsKey("_r")) {
            t.d("core", "外部传入的_r参数被忽略");
            map.remove("_r");
        }
    }

    private final void j(HashMap<String, String> map, Map<String, String> map2) {
        if (!map2.isEmpty()) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public static final synchronized void k(String str, c.a aVar) {
        c.d(str, aVar);
    }

    public static final synchronized void m(String str) {
        c.e(str);
    }

    public final ApiUrlBuilder b(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return this;
        }
        this.f2379a.putAll(map);
        i(this.f2379a);
        return this;
    }

    public final String c(String url) {
        r.e(url, "url");
        return url.length() == 0 ? url : e(url, d(url));
    }

    public final Map<String, String> d(String url) {
        r.e(url, "url");
        Map<String, String> mapT = o0.t(h(url));
        i(mapT);
        return f(mapT);
    }

    public final ApiUrlBuilder l(BasicParamsBuilder basicParamsBuilder) {
        r.e(basicParamsBuilder, "basicParamsBuilder");
        this.b = basicParamsBuilder;
        return this;
    }
}
