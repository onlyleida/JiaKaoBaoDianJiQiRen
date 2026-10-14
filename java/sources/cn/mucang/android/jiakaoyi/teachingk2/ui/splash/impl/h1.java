package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity;

/* JADX INFO: loaded from: classes4.dex */
public class h1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    public h1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, "结束");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(100.0f));
        LocalConfigManager.g(false, null);
        CheckActivity.z(this.b);
        this.b.finish();
    }
}
