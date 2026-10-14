package cn.mucang.android.core.utils;

import cn.mucang.android.core.config.MucangConfig;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class b0 {
    public static String a(int i) {
        String strQ;
        InputStream inputStreamOpenRawResource = null;
        try {
            try {
                inputStreamOpenRawResource = MucangConfig.getContext().getResources().openRawResource(i);
                strQ = j.q(inputStreamOpenRawResource);
                o.a(inputStreamOpenRawResource);
            } catch (Exception e2) {
                t.c("默认替换", e2);
                o.a(inputStreamOpenRawResource);
                strQ = "";
            }
            return strQ;
        } catch (Throwable th) {
            o.a(inputStreamOpenRawResource);
            throw th;
        }
    }
}
