package cn.mucang.android.core.webview.protocol.e;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.net.Uri;
import android.webkit.URLUtil;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.s;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.protocol.bridge.k0;
import cn.mucang.android.framework.webview.R;
import com.alibaba.fastjson.JSONArray;
import f.a.a.a.activity.h;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<String> f2890a;

    static {
        ArrayList arrayList = new ArrayList();
        f2890a = arrayList;
        arrayList.clear();
        f2890a.add("^((.{1,}\\.)?)kakamobi\\.c(om|n)$");
        f2890a.add("^((.{1,}\\.)?)baojiazhijia\\.com$");
        f2890a.add("^((.{1,}\\.)?)cheyoushuo\\.c(om|n)$");
        f2890a.add("^((.{1,}\\.)?)cheyoushuo\\.net$");
        f2890a.add("^((.{1,}\\.)?)xiaozhu2\\.c(om|n)$");
        f2890a.add("^((.{1,}\\.)?)xiaozu2\\.c(om|n)$");
        f2890a.add("^((.{1,}\\.)?)zhushou\\.so$");
        f2890a.add("^((.{1,}\\.)?)xinchezhijia\\.com$");
        f2890a.add("^((.{1,}\\.)?)kakacx\\.com$");
        f2890a.add("^((.{1,}\\.)?)jiaxiaobaodian\\.com$");
        f2890a.add("^((.{1,}\\.)?)jiaxiaozhijia\\.com$");
        f2890a.add("^((.{1,}\\.)?)jiaxiaoydt\\.com$");
        f2890a.add("^((.{1,}\\.)?)sijimishu\\.com$");
        f2890a.add("^((.{1,}\\.)?)mucang\\.cn$");
        f2890a.add("^((.{1,}\\.)?)jiakaobaodian\\.com$");
        f2890a.add("^((.{1,}\\.)?)jiakaogongju\\.com$");
        f2890a.add("^((.{1,}\\.)?)maiche\\.com$");
        f2890a.add("^((.{1,}\\.)?)baodian\\.cn$");
        f2890a.add("^((.{1,}\\.)?)gongkaobaodian\\.com$");
        f2890a.add("^((.{1,}\\.)?)baodianjiaoyu\\.com\\.cn$");
        f2890a.add("^((.{1,}\\.)?)chaojishijia\\.com$");
        f2890a.add("^((.{1,}\\.)?)langlangba\\.cn$");
        f2890a.add("^((.{1,}\\.)?)langzu\\.cn$");
        f2890a.add("^((.{1,}\\.)?)langzuyueye\\.com$");
        f2890a.add("^((.{1,}\\.)?)lubanmingche\\.com$");
        f2890a.add("^((.{1,}\\.)?)maichebao\\.net\\.cn");
        f2890a.add("^((.{1,}\\.)?)maichebaodian\\.com");
        f2890a.add("^((.{1,}\\.)?)maichebaodian\\.net\\.cn");
        f2890a.add("^((.{1,}\\.)?)maixinche\\.com");
        f2890a.add("^((.{1,}\\.)?)miaochetuan\\.com");
        f2890a.add("^((.{1,}\\.)?)mucang\\.(cn|me)");
        f2890a.add("^((.{1,}\\.)?)pingxing\\.cn");
        f2890a.add("^((.{1,}\\.)?)pingxingzhijia\\.cn");
        f2890a.add("^((.{1,}\\.)?)sijimishu\\.com");
        f2890a.add("^((.{1,}\\.)?)tuanchehui\\.cn");
        f2890a.add("^((.{1,}\\.)?)tufu\\.cn");
        f2890a.add("^((.{1,}\\.)?)xinjiapei\\.c(om|n)");
        f2890a.add("^((.{1,}\\.)?)zhaojiaxiao51\\.(com|net)");
        f2890a.add("^((.{1,}\\.)?)zhiliangmen\\.com");
    }

    public static void a(String str) {
        ClipboardManager clipboardManager;
        if (n0.e(str) || (clipboardManager = (ClipboardManager) MucangConfig.getContext().getSystemService("clipboard")) == null) {
            return;
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText(null, str));
    }

    public static boolean b(String str) {
        Uri uri;
        JSONArray jSONArrayF;
        String host;
        if (n0.f(str) || (uri = Uri.parse(str)) == null || (jSONArrayF = s.h().f()) == null || (host = uri.getHost()) == null) {
            return true;
        }
        for (int i = 0; i < jSONArrayF.size(); i++) {
            if (host.contains(jSONArrayF.getString(i))) {
                return false;
            }
        }
        return true;
    }

    public static String c(String str) {
        if (URLUtil.isNetworkUrl(str)) {
            return Uri.parse(str).getHost();
        }
        return null;
    }

    public static Map<String, String> d(String str, String str2) {
        HashMap map = new HashMap();
        map.put(k0.KEY_CALLBACK_NAME, str2);
        try {
            String[] strArrSplit = str.split("\\?");
            if (strArrSplit.length <= 1) {
                return map;
            }
            for (String str3 : strArrSplit[1].split("&")) {
                String[] strArrSplit2 = str3.split("=");
                String strDecode = URLDecoder.decode(strArrSplit2[0], "UTF-8");
                String strDecode2 = strArrSplit2.length > 1 ? URLDecoder.decode(strArrSplit2[1], "UTF-8") : "";
                if (!n0.e(strDecode2)) {
                    map.put(strDecode, strDecode2);
                }
            }
            return map;
        } catch (UnsupportedEncodingException e2) {
            t.c("e", e2);
            return map;
        }
    }

    public static boolean e(String str) {
        if (n0.e(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList(f2890a);
        arrayList.addAll(0, Arrays.asList(MucangConfig.getContext().getResources().getStringArray(R.array.core__host_white_list)));
        try {
            Uri uri = Uri.parse(str);
            if (!"file".equals(uri.getScheme())) {
                String host = uri.getHost();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (Pattern.compile((String) it.next()).matcher(host).matches()) {
                    }
                }
                return false;
            }
            return true;
        } catch (Exception e2) {
            t.n("jin", null, e2);
            return false;
        }
    }

    public static boolean f(String str) {
        return !URLUtil.isFileUrl(str) && (URLUtil.isNetworkUrl(str) || str.startsWith("mc-"));
    }

    public static boolean g(String str) {
        return n0.g(str) && str.contains("listener.luban.mucang.cn");
    }

    public static boolean h(String str) {
        return n0.g(str) && str.contains(".luban.mucang.cn");
    }

    public static boolean i(String str) {
        return n0.g(str) && str.startsWith("mc-web");
    }

    public static boolean j(String str) {
        return n0.g(str) && str.startsWith("tel");
    }

    public static boolean k(String str, boolean z) {
        return n0.e(str) ? z : Boolean.parseBoolean(str);
    }

    public static String l(String str) {
        if (n0.e(str)) {
            return str;
        }
        if (str.contains("core.luban.local.file.interceptor.mucang.cn")) {
            return Uri.parse(str).getQueryParameter("file");
        }
        return str.contains("core.luban.album.interceptor.mucang.cn") ? Uri.parse(str).getPath() : str;
    }

    public static boolean m(String str) {
        return h.f(str, false);
    }
}
