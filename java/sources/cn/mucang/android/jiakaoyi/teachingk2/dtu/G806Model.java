package cn.mucang.android.jiakaoyi.teachingk2.dtu;

import cn.mucang.android.jiakaoyi.framework.log.f;
import com.google.common.net.HttpHeaders;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.dtu.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/dtu/G806Model;", "", "()V", "IP_ADDRESS", "", "getG806SimInfo", "", "getICCID", "info", "getIMEI", "getPhoneNumeber", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class G806Model {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7001a = "http://192.168.118.1";

    private final String b(String str) {
        int iT = StringsKt__StringsKt.T(str, "<td width=\"50%\">SIM卡ICCID:</td><td>", 0, false, 6, null);
        int iT2 = StringsKt__StringsKt.T(str, "<tr><td width=\"50%\">", iT, false, 4, null);
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iT + 35, iT2);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private final String c(String str) {
        int iT = StringsKt__StringsKt.T(str, "IMEI号:</td><td>", 0, false, 6, null);
        int iT2 = StringsKt__StringsKt.T(str, "<tr><td width=\"50%\">", iT, false, 4, null);
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iT + 15, iT2);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private final String d(String str) {
        int iT = StringsKt__StringsKt.T(str, "<td width=\"50%\">短消息服务中心:</td><td>", 0, false, 6, null);
        int iT2 = StringsKt__StringsKt.T(str, "<tr><td width=\"50%\">", iT, false, 4, null);
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iT + 33, iT2);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final boolean a() {
        boolean z = true;
        try {
            Response responseExecute = new OkHttpClient().newCall(new Request.Builder().url(r.m(this.f7001a, "/cgi-bin/luci")).post(RequestBody.create(MediaType.parse("application/x-www-form-urlencoded"), "luci_username=root&luci_password=root")).build()).execute();
            if (responseExecute.isSuccessful()) {
                f.o("-DTU POST请求成功");
                ResponseBody responseBodyBody = responseExecute.body();
                r.c(responseBodyBody);
                String body = responseBodyBody.string();
                String str = responseExecute.headers().get(HttpHeaders.SET_COOKIE);
                r.d(body, "body");
                int iT = StringsKt__StringsKt.T(body, "接口</a></li>\n      <li id=\"4-menu-1\" ><a href=\"", 0, false, 6, null);
                r.d(body, "body");
                int iT2 = StringsKt__StringsKt.T(body, "\">APN设置</a></li>", iT, false, 4, null);
                r.d(body, "body");
                String strSubstring = body.substring(iT + 46, iT2);
                r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                f.o(r.m("-DTU apnGet=", strSubstring));
                f.o(r.m("-DTU cookie=", str));
                if (strSubstring.length() > 0) {
                    r.c(str);
                    if (str.length() > 0) {
                        Response responseExecute2 = new OkHttpClient().newCall(new Request.Builder().url(r.m(this.f7001a, strSubstring)).addHeader(HttpHeaders.COOKIE, str).get().build()).execute();
                        if (responseExecute2.isSuccessful()) {
                            f.o("-DTU GET请求成功");
                            ResponseBody responseBodyBody2 = responseExecute2.body();
                            r.c(responseBodyBody2);
                            String body2 = responseBodyBody2.string();
                            r.d(body2, "body");
                            int iT3 = StringsKt__StringsKt.T(body2, "<table width=\"100%\" cellspacing=\"10\"><tr><td width=\"50%\">", 0, false, 6, null);
                            r.d(body2, "body");
                            int iT4 = StringsKt__StringsKt.T(body2, "</table>", iT3, false, 4, null);
                            r.d(body2, "body");
                            String strSubstring2 = body2.substring(iT3 + 57, iT4);
                            r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                            f.o(r.m("-DTU info=", strSubstring2));
                            String strC = c(strSubstring2);
                            if ((strC.length() > 0) && strC.length() == 15) {
                                DTUManager.f6989a.c().j(strC);
                            }
                            String strB = b(strSubstring2);
                            if ((strB.length() > 0) && strB.length() == 20) {
                                DTUManager.f6989a.b().j(strB);
                            }
                            String strD = d(strSubstring2);
                            if (strD.length() > 0) {
                                DTUManager.f6989a.d().j(strD);
                            }
                            DTUManager dTUManager = DTUManager.f6989a;
                            if (dTUManager.i()) {
                                try {
                                    dTUManager.m();
                                    return true;
                                } catch (Exception e2) {
                                    e = e2;
                                    f.o(r.m("-DTU ", e.getLocalizedMessage()));
                                    return z;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
    }
}
