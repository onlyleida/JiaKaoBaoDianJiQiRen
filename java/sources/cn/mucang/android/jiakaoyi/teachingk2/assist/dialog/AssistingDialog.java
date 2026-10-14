package cn.mucang.android.jiakaoyi.teachingk2.assist.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAssistingBinding;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.b.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\fJ\b\u0010\u0017\u001a\u00020\nH\u0016J\u0012\u0010\u0018\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0016\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000e*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000e*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u000e*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "context", "Landroid/content/Context;", "title", "", SocialConstants.PARAM_APP_DESC, "onCarReady", "Lkotlin/Function0;", "", "onStopClick", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "TIP_GEAR", "kotlin.jvm.PlatformType", "TIP_HAND_BRAKE", "TIP_START_ENGINE", "confirmDialog", "descTipTtsPlayEnd", "", "readyTip", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistingBinding;", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AssistingDialog extends Dialog implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6109a;
    private final String b;
    private final Function0<v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<v> f6110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DialogAssistingBinding f6111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f6113g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f6114h;
    private final String i;
    private boolean j;
    private Dialog k;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.b.n$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog$onCreate$2", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onSpeakEnd", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            AssistingDialog.this.j = true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssistingDialog(Context context, String title, String desc, Function0<v> onCarReady, Function0<v> onStopClick) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(title, "title");
        r.e(desc, "desc");
        r.e(onCarReady, "onCarReady");
        r.e(onStopClick, "onStopClick");
        this.f6109a = title;
        this.b = desc;
        this.c = onCarReady;
        this.f6110d = onStopClick;
        this.f6112f = k0.a(f.c() ? R.string.teachbase_please_gear1 : R.string.teachbase_please_gearD);
        this.f6113g = k0.a(R.string.teachingk2_please_push_handbrake);
        this.f6114h = k0.a(R.string.teachbase_open_engine);
        this.i = k0.a(f.c() ? R.string.teachbase_please_lift_foot : R.string.teachbase_please_lift_footbrake);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(final AssistingDialog this$0, View view) {
        r.e(this$0, "this$0");
        int i = R.string.teachbase_confirm_end_auto_subsidiary;
        TtsManager.r(k0.a(i), TtsGrade.Teach);
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        String strA = k0.a(i);
        String strA2 = k0.a(R.string.teachbase_confirm_exit);
        r.d(strA2, "getString(R.string.teachbase_confirm_exit)");
        JCommonDialog jCommonDialog = new JCommonDialog(activityI, new JCommonDialog.DialogParams(strA, strA2, k0.a(R.string.teachbase_continue_subsidiary), (View.OnClickListener) null, k0.a(R.string.teachbase_end_subsidiary), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AssistingDialog.j(this.f6095a, view2);
            }
        }, false, 8, (o) null));
        this$0.k = jCommonDialog;
        if (jCommonDialog == null) {
            return;
        }
        jCommonDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AssistingDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f6110d.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(AssistingDialog this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        Dialog dialog = this$0.k;
        if (dialog == null) {
            return;
        }
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AssistingDialog this$0) {
        r.e(this$0, "this$0");
        TtsManager.r(this$0.f6114h, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AssistingDialog this$0) {
        r.e(this$0, "this$0");
        TtsManager.r(this$0.f6112f, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AssistingDialog this$0) {
        r.e(this$0, "this$0");
        TtsManager.r(this$0.f6113g, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AssistingDialog this$0) {
        r.e(this$0, "this$0");
        this$0.c.invoke();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        d.m.n(this);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogAssistingBinding dialogAssistingBindingInflate = DialogAssistingBinding.inflate(getLayoutInflater());
        r.d(dialogAssistingBindingInflate, "inflate(layoutInflater)");
        this.f6111e = dialogAssistingBindingInflate;
        if (dialogAssistingBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogAssistingBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        DialogAssistingBinding dialogAssistingBinding = this.f6111e;
        if (dialogAssistingBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding.titleTv.setText(this.f6109a);
        DialogAssistingBinding dialogAssistingBinding2 = this.f6111e;
        if (dialogAssistingBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding2.descTv.setText(this.b);
        d.m.b(this);
        DialogAssistingBinding dialogAssistingBinding3 = this.f6111e;
        if (dialogAssistingBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding3.tvExit.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AssistingDialog.i(this.f6098a, view);
            }
        });
        TtsManager.u(r.m(this.b, this.i), TtsGrade.Teach, new a());
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.f
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AssistingDialog.k(this.f6094a, dialogInterface);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        DialogAssistingBinding dialogAssistingBinding = this.f6111e;
        if (dialogAssistingBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding.gearIv.setSelected(signalGetter.d().m == Gear.Gear1 || signalGetter.d().m == Gear.GearD);
        DialogAssistingBinding dialogAssistingBinding2 = this.f6111e;
        if (dialogAssistingBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding2.brakeIv.setSelected(signalGetter.d().f5268f);
        DialogAssistingBinding dialogAssistingBinding3 = this.f6111e;
        if (dialogAssistingBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistingBinding3.engineIv.setSelected(signalGetter.d().f5270h);
        if (!this.j) {
            DialogAssistingBinding dialogAssistingBinding4 = this.f6111e;
            if (dialogAssistingBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistingBinding4.gearIv.isSelected()) {
                return;
            }
            DialogAssistingBinding dialogAssistingBinding5 = this.f6111e;
            if (dialogAssistingBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistingBinding5.brakeIv.isSelected()) {
                return;
            }
            DialogAssistingBinding dialogAssistingBinding6 = this.f6111e;
            if (dialogAssistingBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistingBinding6.engineIv.isSelected()) {
                return;
            }
        }
        DialogAssistingBinding dialogAssistingBinding7 = this.f6111e;
        if (dialogAssistingBinding7 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (!dialogAssistingBinding7.engineIv.isSelected()) {
            DebounceUtil debounceUtil = DebounceUtil.f3633a;
            String TIP_START_ENGINE = this.f6114h;
            r.d(TIP_START_ENGINE, "TIP_START_ENGINE");
            debounceUtil.b(TIP_START_ENGINE, 5000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.k
                @Override // java.lang.Runnable
                public final void run() {
                    AssistingDialog.l(this.f6099a);
                }
            });
            return;
        }
        DialogAssistingBinding dialogAssistingBinding8 = this.f6111e;
        if (dialogAssistingBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (!dialogAssistingBinding8.gearIv.isSelected()) {
            DebounceUtil debounceUtil2 = DebounceUtil.f3633a;
            String TIP_GEAR = this.f6112f;
            r.d(TIP_GEAR, "TIP_GEAR");
            debounceUtil2.b(TIP_GEAR, 5000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.l
                @Override // java.lang.Runnable
                public final void run() {
                    AssistingDialog.m(this.f6100a);
                }
            });
            return;
        }
        DialogAssistingBinding dialogAssistingBinding9 = this.f6111e;
        if (dialogAssistingBinding9 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (!dialogAssistingBinding9.brakeIv.isSelected()) {
            DebounceUtil debounceUtil3 = DebounceUtil.f3633a;
            String TIP_HAND_BRAKE = this.f6113g;
            r.d(TIP_HAND_BRAKE, "TIP_HAND_BRAKE");
            debounceUtil3.b(TIP_HAND_BRAKE, 5000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.h
                @Override // java.lang.Runnable
                public final void run() {
                    AssistingDialog.n(this.f6096a);
                }
            });
            return;
        }
        DialogAssistingBinding dialogAssistingBinding10 = this.f6111e;
        if (dialogAssistingBinding10 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (dialogAssistingBinding10.gearIv.isSelected()) {
            DialogAssistingBinding dialogAssistingBinding11 = this.f6111e;
            if (dialogAssistingBinding11 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (dialogAssistingBinding11.brakeIv.isSelected()) {
                d.m.n(this);
                TtsManager.H();
                TtsManager.r(k0.a(R.string.teachbase_hold_on_steering), TtsGrade.Teach);
                u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AssistingDialog.o(this.f6097a);
                    }
                }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
        }
    }
}
