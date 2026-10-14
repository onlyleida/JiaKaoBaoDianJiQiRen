package cn.mucang.android.core.config;

import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.k0;
import cn.mucang.android.core.utils.n0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class m implements Callable<String> {
    private String b(String str, String str2) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("targetUrl", str));
        arrayList.add(new MucangNameValuePair("targetContent", str2));
        String strE = e("/api/open/ip-v2/analyse-target.htm");
        JSONObject jSONObject = new JSONObject(cn.mucang.android.core.http.a.q().z("https://ipip.kakamobi.com" + strE, cn.mucang.android.core.api.request.e.b.i(arrayList), null));
        if (jSONObject.optBoolean("success")) {
            return jSONObject.getJSONObject("data").getString("cityCode");
        }
        return null;
    }

    private JSONObject c() throws JSONException, IOException, HttpException {
        String strE = e("/api/open/ip-v2/get-target.htm");
        return new JSONObject(cn.mucang.android.core.http.a.q().o("https://ipip.kakamobi.com" + strE, null));
    }

    private Map<String, String> d(JSONArray jSONArray) throws IOException {
        if (jSONArray == null) {
            return null;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("charset");
                String string2 = jSONObject.getString("url");
                String string3 = jSONObject.getString("regex");
                String strP = cn.mucang.android.core.http.a.q().p(string2, null, string);
                HashMap map = new HashMap();
                if (n0.e(string3)) {
                    map.put("targetContent", strP);
                } else {
                    Matcher matcher = Pattern.compile(string3).matcher(strP);
                    if (matcher.find()) {
                        map.put("targetContent", matcher.group(0));
                    }
                }
                map.put("targetUrl", string2);
                map.put("targetCharset", string);
                return map;
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("默认替换", e2);
            }
        }
        return null;
    }

    private String e(String str) {
        StringBuilder sb = new StringBuilder(str);
        cn.mucang.android.core.api.url.c.b(sb, "4.7", null, true, null);
        return k0.a(sb.toString(), "*#06#bZhsk6iljHWlpZpxeUSWj25G");
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String call() throws Exception {
        JSONObject jSONObject = c().getJSONObject("data");
        if (n0.g(MiscUtils.m(jSONObject, "cityCode"))) {
            return jSONObject.getString("cityCode");
        }
        Map<String, String> mapD = d(jSONObject.getJSONArray("addresses"));
        if (mapD != null) {
            return b(mapD.get("targetUrl"), mapD.get("targetContent"));
        }
        return null;
    }
}
