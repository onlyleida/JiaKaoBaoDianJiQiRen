package cn.mucang.android.jiakaoyi.signal.handle.gps;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5705a;

    public d(byte[] bArr) {
        this.f5705a = a(new String(bArr).replace("\r", "").replace("\n", ""));
    }

    private String a(String str) {
        if (n0.g(str) && str.contains(Marker.ANY_MARKER)) {
            try {
                String str2 = str.split("\\*")[1];
                if (str2.length() > 2) {
                    cn.mucang.android.jiakaoyi.framework.log.f.i("gpgga数据校验码不正确:" + str);
                    return str.substring(0, str.length() - (str2.length() - 2));
                }
            } catch (Throwable th) {
                t.d("ggaTag", "gga split error : " + th);
            }
        }
        return str;
    }

    public d(String str) {
        this.f5705a = a(str);
    }
}
