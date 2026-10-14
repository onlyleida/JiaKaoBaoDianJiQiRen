package cn.mucang.android.core.api.url;

import android.net.Uri;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    public interface a {
        String getValue();
    }

    public static String a(String str, Map<String, String> map, Map<String, String> map2) {
        ApiUrlBuilder apiUrlBuilderG = ApiUrlBuilder.g();
        BasicParamsBuilder basicParamsBuilderE = BasicParamsBuilder.e();
        basicParamsBuilderE.k(map2);
        apiUrlBuilderG.l(basicParamsBuilderE);
        apiUrlBuilderG.b(map);
        return apiUrlBuilderG.c(str);
    }

    @Deprecated
    public static void b(StringBuilder sb, String str, Map<String, String> map, boolean z, JSONObject jSONObject) {
        if (z) {
            if (sb == null || sb.length() == 0) {
                return;
            }
            sb.delete(0, sb.length()).append(a(sb.toString(), map, null));
            return;
        }
        WebUrlBuilder webUrlBuilderC = WebUrlBuilder.c(sb.toString());
        webUrlBuilderC.e(true);
        webUrlBuilderC.f(jSONObject);
        sb.delete(0, sb.length()).append(webUrlBuilderC.b());
    }

    public static String c(String str, List<MucangNameValuePair> list) {
        if (n0.e(str) || g.b(list)) {
            return str;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (MucangNameValuePair mucangNameValuePair : list) {
            linkedHashMap.put(mucangNameValuePair.getName(), mucangNameValuePair.getValue());
        }
        return d(str, linkedHashMap);
    }

    public static String d(String str, Map<String, String> map) {
        if (n0.e(str) || g.c(map)) {
            return str;
        }
        Uri uri = Uri.parse(str);
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (g.d(queryParameterNames)) {
            for (String str2 : queryParameterNames) {
                map.put(str2, uri.getQueryParameter(str2));
            }
        }
        Uri.Builder builderPath = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderPath.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return builderPath.toString();
    }

    public static String e(String str, JSONObject jSONObject) {
        WebUrlBuilder webUrlBuilderC = WebUrlBuilder.c(str);
        webUrlBuilderC.f(jSONObject);
        return webUrlBuilderC.b();
    }

    public static String f(String str, JSONObject jSONObject) {
        WebUrlBuilder webUrlBuilderC = WebUrlBuilder.c(str);
        ApiUrlBuilder apiUrlBuilderG = ApiUrlBuilder.g();
        BasicParamsBuilder basicParamsBuilderE = BasicParamsBuilder.e();
        basicParamsBuilderE.j();
        apiUrlBuilderG.l(basicParamsBuilderE);
        webUrlBuilderC.d(apiUrlBuilderG);
        webUrlBuilderC.f(jSONObject);
        return webUrlBuilderC.b();
    }

    public static void g(String str, a aVar) {
        ApiUrlBuilder.k(str, aVar);
    }

    public static void h(String str) {
        ApiUrlBuilder.m(str);
    }
}
