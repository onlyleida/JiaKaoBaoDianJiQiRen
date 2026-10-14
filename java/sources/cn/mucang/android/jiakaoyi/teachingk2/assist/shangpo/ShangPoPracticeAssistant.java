package cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant;
import cn.mucang.android.jiakaoyi.teachingk2.assist.dialog.AssistingDialog;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.ErrorEventInterceptor;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.HardwareErrorHandler;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\b\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "()V", "assistingDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog;", "isAssisting", "", "onAssistEnd", "Lkotlin/Function0;", "", "isSupportAssist", "realStop", "reason", "", "setAssistEndCallback", TtmlNode.START, "stop", "sendOrder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShangPoPracticeAssistant extends AbsAssistant {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ShangPoPracticeAssistant f6149e = new ShangPoPracticeAssistant();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f6150f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AssistingDialog f6151g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Function0<v> f6152h;

    /* JADX WARN: Illegal instructions before constructor call */
    private ShangPoPracticeAssistant() {
        String strA = k0.a(R.string.teachbase_poqi_assist);
        r.d(strA, "getString(R.string.teachbase_poqi_assist)");
        super(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(String str) {
        AssistingDialog assistingDialog = f6151g;
        if (assistingDialog != null) {
            assistingDialog.dismiss();
        }
        AbsAssistant.w(this, str, null, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistant$realStop$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ShangPoPracticeAssistant.f6149e.u(null);
                ShangPoPracticeAssistant.f6150f = false;
                ErrorEventInterceptor.b.d(this.this$0);
                Function0 function0 = ShangPoPracticeAssistant.f6152h;
                if (function0 == null) {
                    return;
                }
                function0.invoke();
            }
        }, 2, null);
        HardwareErrorHandler.b.d(this);
    }

    public final void H(Function0<v> function0) {
        f6152h = function0;
    }

    public void I() {
        if (f6150f) {
            m("正在坡起辅助中...");
            return;
        }
        m("开始坡起辅助");
        AssistingDialog assistingDialog = f6151g;
        if (assistingDialog != null) {
            assistingDialog.dismiss();
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        String strA = k0.a(R.string.teachbase_shangpo_subsidiary_ing);
        r.d(strA, "getString(R.string.teach…e_shangpo_subsidiary_ing)");
        String strA2 = k0.a(R.string.teachbase_app_help_shangpo_done);
        r.d(strA2, "getString(R.string.teach…se_app_help_shangpo_done)");
        AssistingDialog assistingDialog2 = new AssistingDialog(activityI, strA, strA2, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistant$start$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AbsAssistant.s(ShangPoPracticeAssistant.f6149e, 1, 1, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistant$start$1.1
                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        HardwareErrorHandler.b.h();
                    }
                }, null, 8, null);
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistant$start$2
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ShangPoPracticeAssistant shangPoPracticeAssistant = ShangPoPracticeAssistant.f6149e;
                String strA3 = k0.a(R.string.teachbase_user_terminate);
                r.d(strA3, "getString(R.string.teachbase_user_terminate)");
                shangPoPracticeAssistant.y(strA3, true);
            }
        });
        f6151g = assistingDialog2;
        if (assistingDialog2 != null) {
            assistingDialog2.show();
        }
        f6150f = true;
        ErrorEventInterceptor.b.b(this);
        HardwareErrorHandler.b.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public boolean k() {
        return f6150f;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant
    public void y(final String reason, boolean z) {
        r.e(reason, "reason");
        m("结束坡起辅助, 理由: " + reason + ", isAssisting: " + f6150f);
        HardwareErrorHandler.b.i();
        z();
        if (f()) {
            if (z) {
                AbsAssistant.s(this, 1, 2, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.shangpo.ShangPoPracticeAssistant$stop$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ v invoke() {
                        invoke2();
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ShangPoPracticeAssistant.f6149e.G(reason);
                    }
                }, null, 8, null);
            } else {
                G(reason);
            }
        }
    }
}
