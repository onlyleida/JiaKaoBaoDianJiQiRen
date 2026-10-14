package f.a.a.a;

import android.content.Context;
import android.webkit.URLUtil;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u0;

/* JADX INFO: loaded from: classes.dex */
public class g implements f.a.a.a.activity.c {
    @Override // f.a.a.a.activity.c
    public boolean a(Context context, String str) {
        if (!URLUtil.isNetworkUrl(str) && !str.startsWith("mc-web://")) {
            return false;
        }
        u0.g(MucangConfig.getContext(), str);
        return true;
    }
}
