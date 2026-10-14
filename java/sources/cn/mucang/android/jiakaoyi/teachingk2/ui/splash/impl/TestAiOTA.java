package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.c1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestAiOTA;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "nextEvent", "(Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;)V", "test", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TestAiOTA extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestAiOTA(BaseActivity activity, cn.mucang.android.jiakaoyi.framework.h.b<String> message, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k nextEvent) {
        super(activity, message, nextEvent, "AI升级");
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(message, "message");
        kotlin.jvm.internal.r.e(nextEvent, "nextEvent");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(65.0f));
        g();
        new cn.mucang.android.jiakaoyi.signal.ai.ota.e(null).f();
    }
}
