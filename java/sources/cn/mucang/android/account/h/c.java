package cn.mucang.android.account.h;

import androidx.fragment.app.FragmentManager;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class c extends d {
    private e.b j;

    public static void D(FragmentManager fragmentManager, PopupCaptchaResponse popupCaptchaResponse, e.b bVar) {
        if (popupCaptchaResponse == null) {
            u.h("非法的验证码弹框请求");
            return;
        }
        c cVar = new c();
        cVar.f2175g = popupCaptchaResponse;
        cVar.j = bVar;
        cVar.show(fragmentManager, (String) null);
    }

    public e.b C() {
        return this.j;
    }

    @Override // cn.mucang.android.account.h.d
    protected cn.mucang.android.core.api.c.a x(String str) {
        return new cn.mucang.android.account.g.q.d(this, MucangConfig.i(), this.f2175g, str);
    }
}
