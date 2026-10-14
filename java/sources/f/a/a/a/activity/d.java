package f.a.a.a.activity;

import android.content.Context;
import android.net.Uri;
import cn.mucang.android.core.config.s;
import cn.mucang.android.core.utils.b0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.framework.core.R;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements c {
    @Override // f.a.a.a.activity.c
    public boolean a(Context context, String str) {
        if (!str.startsWith("http://virtual.nav.mucang.cn")) {
            return false;
        }
        String strE = s.h().e("virtual_protocols");
        if (n0.e(strE)) {
            strE = b0.a(R.raw.virtual_protocols);
        }
        JSONObject object = null;
        try {
            object = JSON.parseObject(strE);
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
        if (object == null) {
            return false;
        }
        Uri uri = Uri.parse(str);
        String string = object.getString(uri.getPath());
        if (n0.e(string) || string.startsWith("http://virtual.nav.mucang.cn")) {
            return false;
        }
        Uri uri2 = Uri.parse(string);
        String string2 = uri.buildUpon().authority(uri2.getAuthority()).path(uri2.getPath()).toString();
        return !str.equals(string2) && h.e(string2);
    }
}
