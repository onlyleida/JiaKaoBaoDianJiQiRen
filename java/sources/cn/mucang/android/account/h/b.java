package cn.mucang.android.account.h;

import androidx.fragment.app.FragmentManager;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {
    private e.b j;
    private String k;
    private String l;
    private int m;

    public static void D(FragmentManager fragmentManager, PopupCaptchaResponse popupCaptchaResponse, String str, String str2, int i, e.b bVar) {
        if (popupCaptchaResponse == null) {
            u.h("非法的验证码弹框请求");
            return;
        }
        b bVar2 = new b();
        bVar2.f2175g = popupCaptchaResponse;
        bVar2.k = str;
        bVar2.m = i;
        bVar2.l = str2;
        bVar2.j = bVar;
        bVar2.show(fragmentManager, (String) null);
    }

    public e.b C() {
        return this.j;
    }

    @Override // cn.mucang.android.account.h.d
    protected cn.mucang.android.core.api.c.a x(String str) {
        return new cn.mucang.android.account.g.q.c(this, MucangConfig.i(), this.k, this.l, this.f2175g.getCaptchaId(), str, this.m);
    }
}
