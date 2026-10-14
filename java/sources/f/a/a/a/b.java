package f.a.a.a;

import android.content.Context;
import cn.mucang.android.core.webview.core.page.AsteroidManager;

/* JADX INFO: loaded from: classes.dex */
public class b implements f.a.a.a.activity.c {
    @Override // f.a.a.a.activity.c
    public boolean a(Context context, String str) {
        if (!cn.mucang.android.core.webview.core.page.e.h(str)) {
            return false;
        }
        AsteroidManager.d().h(context, str);
        return true;
    }
}
