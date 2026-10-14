package cn.mucang.android.jiakaoyi.teachingk2.assist.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogAssistEndBinding;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.x;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.b.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002BI\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0002\u0010\rJ\b\u0010\u0014\u001a\u00020\u000bH\u0016J\u0012\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0015J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u000bH\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistEndDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "context", "Landroid/content/Context;", "title", "", SocialConstants.PARAM_APP_DESC, "reason", "onShow", "Lkotlin/Function0;", "", "onDismiss", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "brakeTime", "", "descTipTtsPlayEnd", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "show", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AssistEndDialog extends Dialog implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6101a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<v> f6102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0<v> f6103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DialogAssistEndBinding f6104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6106h;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.b.m$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistEndDialog$onCreate$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onSpeakEnd", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends SimpleTtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            AssistEndDialog.this.f6106h = true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.b.m$b */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistEndDialog$onSignalChanged$4$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            super.onIntercept();
            f.o("AssistEndDialog: 自动辅助结束，刹车已解除");
            DialogExtensionKt.b(AssistEndDialog.this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            f.o("AssistEndDialog: 自动辅助结束，刹车已解除");
            DialogExtensionKt.b(AssistEndDialog.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssistEndDialog(Context context, String title, String desc, String reason, Function0<v> function0, Function0<v> function1) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(title, "title");
        r.e(desc, "desc");
        r.e(reason, "reason");
        this.f6101a = title;
        this.b = desc;
        this.c = reason;
        this.f6102d = function0;
        this.f6103e = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(AssistEndDialog this$0, DialogInterface dialogInterface) {
        r.e(this$0, "this$0");
        Function0<v> function0 = this$0.f6103e;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String str) {
        TtsManager.r(str, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String str) {
        TtsManager.r(str, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(String str) {
        TtsManager.r(str, TtsGrade.Teach);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String str, AssistEndDialog this$0) {
        r.e(this$0, "this$0");
        TtsManager.H();
        TtsManager.u(str, TtsGrade.Teach, this$0.new b());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        d.m.n(this);
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        String str;
        super.onCreate(savedInstanceState);
        DialogAssistEndBinding dialogAssistEndBindingInflate = DialogAssistEndBinding.inflate(getLayoutInflater());
        r.d(dialogAssistEndBindingInflate, "inflate(layoutInflater)");
        this.f6104f = dialogAssistEndBindingInflate;
        if (dialogAssistEndBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogAssistEndBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        DialogAssistEndBinding dialogAssistEndBinding = this.f6104f;
        if (dialogAssistEndBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogAssistEndBinding.titleTv;
        String str2 = this.f6101a;
        if (TextUtils.isEmpty(this.c)) {
            str = "";
        } else {
            str = (char) 65288 + this.c + (char) 65289;
        }
        textView.setText(r.m(str2, str));
        String str3 = this.c + (char) 65292 + this.b;
        DialogAssistEndBinding dialogAssistEndBinding2 = this.f6104f;
        if (dialogAssistEndBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistEndBinding2.descTv.setText(str3);
        TtsManager.u(str3, TtsGrade.Teach, new a());
        d.m.b(this);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.a
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AssistEndDialog.g(this.f6089a, dialogInterface);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        DialogAssistEndBinding dialogAssistEndBinding = this.f6104f;
        if (dialogAssistEndBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistEndBinding.engineIv.setSelected(signalGetter.d().f5270h);
        DialogAssistEndBinding dialogAssistEndBinding2 = this.f6104f;
        if (dialogAssistEndBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogAssistEndBinding2.gearIv;
        Gear gear = signalGetter.d().m;
        Gear gear2 = Gear.GearN;
        imageView.setSelected(gear == gear2 || signalGetter.d().m == Gear.GearP);
        DialogAssistEndBinding dialogAssistEndBinding3 = this.f6104f;
        if (dialogAssistEndBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogAssistEndBinding3.brakeIv.setSelected(!signalGetter.d().f5268f);
        if (!this.f6106h) {
            DialogAssistEndBinding dialogAssistEndBinding4 = this.f6104f;
            if (dialogAssistEndBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistEndBinding4.engineIv.isSelected()) {
                return;
            }
            DialogAssistEndBinding dialogAssistEndBinding5 = this.f6104f;
            if (dialogAssistEndBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistEndBinding5.gearIv.isSelected()) {
                return;
            }
            DialogAssistEndBinding dialogAssistEndBinding6 = this.f6104f;
            if (dialogAssistEndBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (!dialogAssistEndBinding6.brakeIv.isSelected()) {
                return;
            }
        }
        CarModel carModelD = d.t().d();
        if (!carModelD.f5270h) {
            final String tip = k0.a(R.string.teachbase_please_start_engine);
            DebounceUtil debounceUtil = DebounceUtil.f3633a;
            r.d(tip, "tip");
            debounceUtil.b(tip, 4000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.d
                @Override // java.lang.Runnable
                public final void run() {
                    AssistEndDialog.h(tip);
                }
            });
            return;
        }
        Gear gear3 = carModelD.m;
        if (gear3 != gear2 && gear3 != Gear.GearP) {
            final String tip2 = k0.a(R.string.teachbase_please_gearN);
            DebounceUtil debounceUtil2 = DebounceUtil.f3633a;
            r.d(tip2, "tip");
            debounceUtil2.b(tip2, 4000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.b
                @Override // java.lang.Runnable
                public final void run() {
                    AssistEndDialog.i(tip2);
                }
            });
            return;
        }
        if (carModelD.f5268f) {
            final String tip3 = k0.a(R.string.teachingk2_please_pull_handbrake);
            DebounceUtil debounceUtil3 = DebounceUtil.f3633a;
            r.d(tip3, "tip");
            debounceUtil3.b(tip3, 4000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.e
                @Override // java.lang.Runnable
                public final void run() {
                    AssistEndDialog.j(tip3);
                }
            });
            return;
        }
        ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
        if ((receiveSenorInfo != null ? receiveSenorInfo.safeBoardBrakeState : null) == CarBrakeState.STATE_NONE) {
            final String strA = k0.a(R.string.teachbase_auto_subsidiary_end);
            DebounceUtil.f3633a.b("", 4000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.b.c
                @Override // java.lang.Runnable
                public final void run() {
                    AssistEndDialog.k(strA, this);
                }
            });
        }
        for (BrakeReason brakeReason : BrakeReason.values()) {
            if (brakeReason.isByApp() && x.a(brakeReason)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f6105g > 3000) {
                    this.f6105g = jCurrentTimeMillis;
                    SafeCommandAdapter.f((byte) 1);
                }
            }
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Function0<v> function0 = this.f6102d;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }
}
