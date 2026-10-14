package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityCoachLoginBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginScanBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppTeachExtensionsKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.RobotStatusBarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.logic.ScanLoginLogic;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\u0006\u0010\n\u001a\u00020\tJ\b\u0010\u000b\u001a\u00020\tH\u0014J\b\u0010\f\u001a\u00020\tH\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCoachLoginBinding;", "()V", "logic", "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;", "getStatName", "", "init", "", "onLogin", "onPause", "onResume", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CoachLoginActivity extends BaseViewBindingActivity<ActivityCoachLoginBinding> {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<Activity> f7352d;
    private ScanLoginLogic b;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/CoachLoginActivity$Companion;", "", "()V", "weakReference", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "launch", "", "activity", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Activity activity) {
            kotlin.jvm.internal.r.e(activity, "activity");
            CoachLoginActivity.f7352d = new WeakReference(activity);
            ActivityUtils.c(activity, new Intent(activity, (Class<?>) CoachLoginActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CoachLoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "CoachLogin";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        RobotStatusBarBinding robotStatusBarBinding = g().statusBar;
        kotlin.jvm.internal.r.d(robotStatusBarBinding, "viewBinding.statusBar");
        AppTeachExtensionsKt.c(robotStatusBarBinding, androidx.lifecycle.s.a(this), false);
        TextView textView = g().closeIv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.closeIv");
        AppTeachExtensionsKt.h(textView, R.drawable.ic_coach_back, (int) getResources().getDimension(R.dimen.rpx_38));
        g().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoachLoginActivity.k(this.f7376a, view);
            }
        });
        LayoutLoginScanBinding layoutLoginScanBinding = g().scanLayout;
        kotlin.jvm.internal.r.d(layoutLoginScanBinding, "viewBinding.scanLayout");
        this.b = new ScanLoginLogic(layoutLoginScanBinding, LoginType.COACH_QR_CODE);
        g().scanLayout.title1.setText(k0.a(R.string.teachbase_jlbd_app));
        ScanLoginLogic scanLoginLogic = this.b;
        if (scanLoginLogic == null) {
            return;
        }
        scanLoginLogic.f();
    }

    public final void m() {
        Activity activity;
        WeakReference<Activity> weakReference = f7352d;
        if (weakReference != null && (activity = weakReference.get()) != null) {
            activity.finish();
        }
        WeakReference<Activity> weakReference2 = f7352d;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        finish();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        ScanLoginLogic scanLoginLogic = this.b;
        if (scanLoginLogic != null) {
            scanLoginLogic.j(false);
        }
        super.onPause();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        ScanLoginLogic scanLoginLogic = this.b;
        if (scanLoginLogic != null) {
            scanLoginLogic.h(true);
        }
        super.onResume();
    }
}
