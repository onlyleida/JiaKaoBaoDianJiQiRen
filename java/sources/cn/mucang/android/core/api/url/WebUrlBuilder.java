package cn.mucang.android.core.api.url;

import android.net.Uri;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.q0;
import com.alibaba.fastjson.JSON;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.o0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.mucang.android.core.api.f.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\u0003H\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/api/url/WebUrlBuilder;", "", "url", "", "(Ljava/lang/String;)V", "apiUrlBuilder", "Lcn/mucang/android/core/api/url/ApiUrlBuilder;", "appendAppInfo", "", "configJson", "Lorg/json/JSONObject;", "build", "setApiUrlBuilder", "builder", "setAppendAppInfo", "setConfigJson", "Companion", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class WebUrlBuilder {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f2386e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map<String, c.a> f2387f = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2388a;
    private JSONObject b;
    private ApiUrlBuilder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2389d;

    /* JADX INFO: renamed from: cn.mucang.android.core.api.f.g$a */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/api/url/WebUrlBuilder$Companion;", "", "()V", "providerMap", "", "", "Lcn/mucang/android/core/api/url/MucangUrl$UrlValueProvider;", "convertGlobalParamsProviderToMap", "", "create", "Lcn/mucang/android/core/api/url/WebUrlBuilder;", "url", "registerParam", "", "key", "provider", "unregisterParam", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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
            for (Map.Entry entry : WebUrlBuilder.f2387f.entrySet()) {
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

        public final WebUrlBuilder c(String url) {
            r.e(url, "url");
            return new WebUrlBuilder(url);
        }
    }

    public WebUrlBuilder(String url) {
        r.e(url, "url");
        this.f2388a = url;
        ApiUrlBuilder apiUrlBuilder = new ApiUrlBuilder();
        this.c = apiUrlBuilder;
        BasicParamsBuilder basicParamsBuilder = new BasicParamsBuilder();
        basicParamsBuilder.h();
        apiUrlBuilder.l(basicParamsBuilder);
    }

    public static final WebUrlBuilder c(String str) {
        return f2386e.c(str);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005d  */
    public final String b() {
        Uri uri = Uri.parse(this.f2388a);
        Uri.Builder builderPath = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath());
        Map mapT = o0.t(this.c.d(this.f2388a));
        CharSequence charSequence = (CharSequence) mapT.remove("_appinfo");
        if (charSequence == null || t.r(charSequence)) {
            CharSequence charSequence2 = (CharSequence) mapT.remove("_config");
            if (!(charSequence2 == null || t.r(charSequence2))) {
                cn.mucang.android.core.utils.t.d("core", "web url里不允许带:_appinfo，_config");
            }
        } else {
            cn.mucang.android.core.utils.t.d("core", "web url里不允许带:_appinfo，_config");
        }
        for (Map.Entry entry : f2386e.b().entrySet()) {
            builderPath.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        for (Map.Entry entry2 : mapT.entrySet()) {
            builderPath.appendQueryParameter((String) entry2.getKey(), (String) entry2.getValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.f2389d) {
            BasicParamsBuilder basicParamsBuilder = new BasicParamsBuilder();
            basicParamsBuilder.h();
            Map<String, String> mapD = basicParamsBuilder.d();
            sb.append("_appinfo=");
            sb.append(JSON.toJSONString(mapD));
        }
        if (this.b != null) {
            sb.append("_config=");
            sb.append(q0.b(String.valueOf(this.b), "UTF-8"));
        }
        StringBuilder sb2 = new StringBuilder(builderPath.toString());
        String fragment = uri.getFragment();
        String string = fragment == null ? null : StringsKt__StringsKt.J0(fragment).toString();
        if (!(string == null || t.r(string))) {
            sb2.append(r.m("#", string));
        }
        if (!t.r(sb)) {
            if (sb2.indexOf("#") == -1) {
                sb2.append("#");
            } else if (sb2.indexOf("#") != sb2.length() - 1) {
                sb2.append("&");
            }
        }
        sb2.append(sb.toString());
        String string2 = sb2.toString();
        r.d(string2, "builder.append(webInfoBu…er.toString()).toString()");
        return string2;
    }

    public final WebUrlBuilder d(ApiUrlBuilder builder) {
        r.e(builder, "builder");
        this.c = builder;
        return this;
    }

    public final WebUrlBuilder e(boolean z) {
        this.f2389d = z;
        return this;
    }

    public final WebUrlBuilder f(JSONObject jSONObject) {
        this.b = jSONObject;
        return this;
    }
}
