package f.a.a.a;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public class e implements f.a.a.a.o.b.c {
    @Override // f.a.a.a.o.b.c
    public boolean a(Activity activity, Intent intent) {
        Uri data;
        if (intent == null || (data = intent.getData()) == null) {
            return false;
        }
        String queryParameter = data.getQueryParameter("navUrl");
        if (n0.g(queryParameter)) {
            return f.a.a.a.activity.h.f(queryParameter, true);
        }
        return false;
    }
}
