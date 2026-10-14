package f.a.a.a.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import cn.mucang.android.core.api.url.BasicParamsBuilder;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import f.a.a.a.m.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private c b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f14448g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<c> f14444a = new LinkedList();
    private Map<String, Class<? extends Activity>> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, i> f14445d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, c> f14446e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, c> f14447f = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<ActivityStartResultListener> f14449h = new CopyOnWriteArrayList();

    static {
        Pattern.compile("[a-z\\-]+");
    }

    public e(Context context) {
        this.f14448g = context;
    }

    static <T> void a(Map<String, T> map, String str, T t) {
        map.put(str, t);
        if (URLUtil.isHttpUrl(str)) {
            map.put(str.replaceFirst("http://", "https://"), t);
        } else if (URLUtil.isHttpsUrl(str)) {
            map.put(str.replaceFirst("https://", "http://"), t);
        }
    }

    private boolean b(Context context, String str, boolean z) {
        boolean z2 = false;
        if (str == null) {
            return false;
        }
        Iterator<c> it = this.f14444a.iterator();
        while (it.hasNext()) {
            if (it.next().a(context, str)) {
                return true;
            }
        }
        StartParams startParams = new StartParams(context, str, z);
        StartResult startResult = new StartResult();
        boolean zC = c(context, str);
        startResult.b(zC);
        if (zC) {
            k(startParams, startResult);
            return true;
        }
        Uri uri = Uri.parse(str);
        String host = uri.getHost();
        if (!n0.e(host) && host.endsWith("nav.mucang.cn")) {
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            BasicParamsBuilder basicParamsBuilderE = BasicParamsBuilder.e();
            basicParamsBuilderE.h();
            Map<String, String> mapD = basicParamsBuilderE.d();
            for (String str2 : mapD.keySet()) {
                if (g.b(queryParameterNames) || !queryParameterNames.contains(str2)) {
                    builderBuildUpon.appendQueryParameter(str2, mapD.get(str2));
                }
            }
            str = builderBuildUpon.toString();
        }
        if (z && j(context, str)) {
            z2 = true;
        }
        startResult.a(z2);
        k(startParams, startResult);
        return z2;
    }

    private boolean c(Context context, String str) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (scheme != null && this.f14447f.containsKey(scheme)) {
            return this.f14447f.get(scheme).a(context, str);
        }
        String strD = d(uri, false);
        if (this.f14446e.containsKey(strD)) {
            return this.f14446e.get(strD).a(context, str);
        }
        String strD2 = d(uri, true);
        if (this.f14446e.containsKey(strD2)) {
            return this.f14446e.get(strD2).a(context, str);
        }
        if (a.a(str)) {
            return true;
        }
        if (!this.c.containsKey(strD2)) {
            return false;
        }
        if (this.f14445d.containsKey(strD2) && !this.f14445d.get(strD2).a(str)) {
            return false;
        }
        Intent intent = new Intent(context, this.c.get(strD2));
        intent.setData(uri);
        intent.setFlags(268435456);
        context.startActivity(intent);
        return true;
    }

    static String d(Uri uri, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("://");
        sb.append(uri.getHost());
        if (z && !uri.getPath().isEmpty()) {
            sb.append(uri.getPath());
        }
        return sb.toString();
    }

    private boolean j(Context context, String str) {
        c cVar = this.b;
        return cVar != null && cVar.a(context, str);
    }

    private void k(StartParams startParams, StartResult startResult) {
        Iterator<ActivityStartResultListener> it = this.f14449h.iterator();
        while (it.hasNext()) {
            it.next().a(startParams, startResult);
        }
    }

    public c e(String str) {
        c cVar = this.f14446e.get(str);
        return cVar == null ? this.f14447f.get(str) : cVar;
    }

    public boolean f(String str) {
        if (str == null) {
            return false;
        }
        Uri uri = Uri.parse(str);
        String str2 = uri.getScheme() + "://" + uri.getHost() + uri.getPath();
        return (this.f14447f.get(str2) == null && this.f14446e.get(str2) == null && this.c.get(str2) == null) ? false : true;
    }

    public synchronized boolean g(Context context, String str, boolean z) {
        if (str == null) {
            return false;
        }
        if (a0.e()) {
            return b(context, str, z);
        }
        if (f(str)) {
            return b(context, str, z);
        }
        ActivityStarterMultiProcessSupport.b(str, z);
        return true;
    }

    public synchronized boolean h(String str) {
        return i(str, true);
    }

    public synchronized boolean i(String str, boolean z) {
        return g(this.f14448g, str, z);
    }

    public synchronized boolean l(String str, c cVar) {
        if (str == null || cVar == null) {
            return false;
        }
        a(this.f14446e, str, cVar);
        return true;
    }

    public void m(c cVar) {
        this.f14444a.add(cVar);
    }

    public void n(c cVar) {
        this.b = cVar;
    }
}
