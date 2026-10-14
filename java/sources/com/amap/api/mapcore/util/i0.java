package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10895a;

    public i0(Context context) {
        this.f10895a = context;
    }

    private boolean b(String str, Context context, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strD0 = r3.d0(context);
        try {
            File file = new File(strD0 + str2 + str + ".dat");
            if (file.exists() && !z0.l(file)) {
                z0.h("deleteDownload delete some thing wrong!");
                return false;
            }
            try {
                z0.j(strD0 + str2);
                z0.k(str, context);
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            } catch (Exception e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        } catch (Exception e5) {
            e5.printStackTrace();
            return false;
        }
    }

    private boolean c(az azVar) {
        if (azVar != null) {
            String pinyin = azVar.getPinyin();
            boolean zB = b(pinyin, this.f10895a, "vmap/");
            if (pinyin.equals("quanguogaiyaotu")) {
                pinyin = "quanguo";
            }
            boolean z = true;
            boolean z2 = b(pinyin, this.f10895a, "map/") || zB;
            if (!d(z0.o(azVar.getUrl()), this.f10895a, "map/") && !z2) {
                z = false;
            }
            if (z) {
                azVar.B();
                return z;
            }
            azVar.A();
        }
        return false;
    }

    private boolean d(String str, Context context, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strY = r3.y(context);
        try {
            File file = new File(strY + str2 + str);
            if (file.exists() && !z0.l(file)) {
                z0.h("deleteDownload delete some thing wrong!");
                return false;
            }
            try {
                z0.j(strY + str2);
                z0.k(str, context);
                return true;
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            } catch (Exception e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        } catch (Exception e5) {
            e5.printStackTrace();
            return false;
        }
    }

    public void a(az azVar) {
        c(azVar);
    }
}
