package cn.mucang.android.core.api.g;

import android.text.TextUtils;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.q0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static void a(StringBuilder sb, cn.mucang.android.core.api.d.a aVar) {
        if (aVar == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(aVar.a())) {
            arrayList.add(new MucangNameValuePair("cursor", aVar.a()));
        }
        if (aVar.b() > 0) {
            arrayList.add(new MucangNameValuePair("pageSize", String.valueOf(aVar.b())));
        }
        b(sb, arrayList);
    }

    private static void b(StringBuilder sb, List<MucangNameValuePair> list) {
        if (g.b(list)) {
            return;
        }
        if (sb.indexOf("?") < 0) {
            sb.append("?");
        }
        char cCharAt = sb.charAt(sb.length() - 1);
        if (cCharAt != '&' && cCharAt != '?') {
            sb.append("&");
        }
        for (MucangNameValuePair mucangNameValuePair : list) {
            sb.append(mucangNameValuePair.getName());
            sb.append("=");
            sb.append(q0.b(mucangNameValuePair.getValue(), "UTF-8"));
            sb.append("&");
        }
        if (sb.charAt(sb.length() - 1) == '&') {
            sb.deleteCharAt(sb.length() - 1);
        }
    }
}
