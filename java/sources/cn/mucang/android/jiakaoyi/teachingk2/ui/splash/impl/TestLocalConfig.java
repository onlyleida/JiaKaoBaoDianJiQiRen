package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestLocalConfig;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "nextEvent", "(Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;)V", "test", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TestLocalConfig extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    public TestLocalConfig(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, "本地配置");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_pulling_config));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(8.0f));
        LocalConfigManager.i(true, false, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestLocalConfig$test$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AbsTeachBaseProvider absTeachBaseProvider = (AbsTeachBaseProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsTeachBaseProvider.class, null, 2, null);
                if (absTeachBaseProvider != null) {
                    absTeachBaseProvider.onLocalConfigLoaded();
                }
                cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().R();
                cn.mucang.jiakaoyi.uilib.socket.t.a().Q();
                this.this$0.g();
            }
        }, 2, null);
    }
}
