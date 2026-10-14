package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.ui.dialog.DefaultPrivacyView;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestPrivacy;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;", "activity", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", ErrorDialogParams.EXTRA_MESSAGE, "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "nextEvent", "(Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TestEvent;)V", "test", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TestPrivacy extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPrivacy(BaseActivity activity, cn.mucang.android.jiakaoyi.framework.h.b<String> message, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k nextEvent) {
        super(activity, message, nextEvent, "隐私弹窗");
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(message, "message");
        kotlin.jvm.internal.r.e(nextEvent, "nextEvent");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        DefaultPrivacyView defaultPrivacyView = new DefaultPrivacyView("keyAppPrivacy", (AppUtils.b() ? DeviceType.ROBOT_B2 : DeviceType.ROBOT).getType(), AppUtils.b() ? "b2_coach_1" : "ai_coach_1");
        if (defaultPrivacyView.e()) {
            g();
            return;
        }
        BaseActivity activity = this.b;
        kotlin.jvm.internal.r.d(activity, "activity");
        new PrivacyAgreementDialog(activity, kotlin.collections.t.d(defaultPrivacyView), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestPrivacy$test$1
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.g();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.TestPrivacy$test$2
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) this.this$0).b.finish();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }).show();
    }
}
