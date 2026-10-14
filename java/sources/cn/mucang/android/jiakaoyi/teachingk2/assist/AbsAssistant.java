package cn.mucang.android.jiakaoyi.teachingk2.assist;

import android.app.Activity;
import android.app.Dialog;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.c;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.assist.dialog.AssistEndDialog;
import cn.mucang.android.jiakaoyi.teachingk2.assist.intercept.GpsErrorHandler;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\b&\u0018\u0000 02\u00020\u0001:\u00010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0004J\b\u0010\u0014\u001a\u00020\u0013H\u0004J\b\u0010\u0015\u001a\u00020\u0013H\u0004J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0018H\u0002J\b\u0010\u001b\u001a\u00020\u0013H&J\b\u0010\u001c\u001a\u00020\u0013H&J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u0003H\u0004J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u0003H\u0004J\u0018\u0010 \u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J8\u0010 \u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00182\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0004J4\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00032\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0004J\b\u0010'\u001a\u00020\rH&J\u0014\u0010(\u001a\u00020\r2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u0010\u0010*\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0003H&J\u0018\u0010*\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0013H&J\u0006\u0010+\u001a\u00020\rJ\u0010\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u0003H\u0004J\u0010\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u0003H\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "(Ljava/lang/String;)V", "assistEndDialog", "Landroid/app/Dialog;", "getAssistEndDialog", "()Landroid/app/Dialog;", "setAssistEndDialog", "(Landroid/app/Dialog;)V", "checkTask", "Lkotlin/Function0;", "", "getName", "()Ljava/lang/String;", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "checkCarStateOK", "", "checkSafeSwitchOn", "enableStop", "getActMsg", SocialConstants.PARAM_ACT, "", "getProjectMsg", "proj", "isAssisting", "isSupportAssist", BuildConfig.FLAVOR_type, SocialConstants.PARAM_SEND_MSG, "logWithToast", "sendOrder", "onSuccess", "onTimeout", "showAssistEndDialog", "reason", "onShow", "onDismiss", TtmlNode.START, "startChecker", "task", "stop", "stopChecker", "stopSpeakingTts", "tts", "ttsTip", "tip", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsAssistant {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6083a;
    private Dialog b;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0<v> f6084d;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$signalCallback$1", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "onSignalChanged", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(e signalGetter) {
            r.e(signalGetter, "signalGetter");
            if (signalGetter.d().b()) {
                d.m.n(this);
                Function0 function0 = AbsAssistant.this.f6084d;
                if (function0 == null) {
                    return;
                }
                function0.invoke();
            }
        }
    }

    public AbsAssistant(String name) {
        r.e(name, "name");
        this.f6083a = name;
        this.c = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String h(int i) {
        if (i == 0) {
            String strA = k0.a(R.string.teachbase_subsidiary_order_ready);
            r.d(strA, "getString(R.string.teach…e_subsidiary_order_ready)");
            return strA;
        }
        if (i == 1) {
            String strA2 = k0.a(R.string.teachbase_subsidiary_order_start);
            r.d(strA2, "getString(R.string.teach…e_subsidiary_order_start)");
            return strA2;
        }
        if (i == 2) {
            String strA3 = k0.a(R.string.teachbase_subsidiary_order_end);
            r.d(strA3, "getString(R.string.teachbase_subsidiary_order_end)");
            return strA3;
        }
        if (i == 3) {
            String strA4 = k0.a(R.string.teachbase_subsidiary_order_pause);
            r.d(strA4, "getString(R.string.teach…e_subsidiary_order_pause)");
            return strA4;
        }
        if (i == 4) {
            String strA5 = k0.a(R.string.teachbase_subsidiary_order_resume);
            r.d(strA5, "getString(R.string.teach…_subsidiary_order_resume)");
            return strA5;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA6 = k0.a(R.string.teachbase_subsidiary_order_none);
        r.d(strA6, "getString(R.string.teach…se_subsidiary_order_none)");
        String str = String.format(strA6, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j(int i) {
        if (i == 1) {
            String strA = k0.a(R.string.teachbase_subsidiary_shangpo);
            r.d(strA, "getString(R.string.teachbase_subsidiary_shangpo)");
            return strA;
        }
        if (i == 2) {
            String strA2 = k0.a(R.string.teachbase_subsidiary_speed);
            r.d(strA2, "getString(R.string.teachbase_subsidiary_speed)");
            return strA2;
        }
        if (i == 5) {
            String strA3 = k0.a(R.string.teachbase_subsidiary_tip);
            r.d(strA3, "getString(R.string.teachbase_subsidiary_tip)");
            return strA3;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA4 = k0.a(R.string.teachbase_subsidiary_none);
        r.d(strA4, "getString(R.string.teachbase_subsidiary_none)");
        String str = String.format(strA4, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void s(AbsAssistant absAssistant, int i, int i2, Function0 function0, Function0 function1, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendOrder");
        }
        if ((i3 & 8) != 0) {
            function1 = null;
        }
        absAssistant.r(i, i2, function0, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final AbsAssistant this$0, final int i, final int i2, final Function0 function0, final Function0 onSuccess) {
        r.e(this$0, "this$0");
        r.e(onSuccess, "$onSuccess");
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_send_subsidiary_order);
        r.d(strA, "getString(R.string.teach…se_send_subsidiary_order)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{this$0.j(i), this$0.h(i2)}, 2));
        r.d(str, "java.lang.String.format(format, *args)");
        jLoadingDialog.b(str);
        new MessageSender(c.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant$sendOrder$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.m("发送辅助" + this.this$0.h(i2) + "指令");
                this.this$0.q(i, i2);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant$sendOrder$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                String strA2 = k0.a(R.string.teachbase_subsidiary_order_timeout);
                r.d(strA2, "getString(R.string.teach…subsidiary_order_timeout)");
                String str2 = String.format(strA2, Arrays.copyOf(new Object[]{this.this$0.j(i), this.this$0.h(i2)}, 2));
                r.d(str2, "java.lang.String.format(format, *args)");
                Function0<v> function1 = function0;
                if (function1 != null) {
                    function1.invoke();
                }
                this.this$0.p(str2);
                jLoadingDialog.dismiss();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function1<c, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.AbsAssistant$sendOrder$1$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(c it) {
                r.e(it, "it");
                jLoadingDialog.dismiss();
                if (!it.f5428a) {
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                    String strA2 = k0.a(R.string.teachbase_subsidiary_order_fail);
                    r.d(strA2, "getString(R.string.teach…se_subsidiary_order_fail)");
                    String str2 = String.format(strA2, Arrays.copyOf(new Object[]{this$0.j(it.b), this$0.h(it.c)}, 2));
                    r.d(str2, "java.lang.String.format(format, *args)");
                    this$0.p(str2);
                    Function0<v> function1 = function0;
                    if (function1 == null) {
                        return;
                    }
                    function1.invoke();
                    return;
                }
                this$0.m(this$0.j(it.b) + "辅助" + this$0.h(it.c) + "指令响应成功");
                onSuccess.invoke();
                if (i2 != 0 || i == 5) {
                    return;
                }
                GpsErrorHandler.f6121a.i(this$0);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(c cVar) {
                invoke2(cVar);
                return v.f15822a;
            }
        }).i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void w(AbsAssistant absAssistant, String str, Function0 function0, Function0 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showAssistEndDialog");
        }
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        absAssistant.v(str, function0, function1);
    }

    protected final void A(String tts) {
        r.e(tts, "tts");
        if (TtsManager.m(tts)) {
            TtsManager.H();
        }
    }

    protected final void B(String tip) {
        r.e(tip, "tip");
        u.h(tip);
        A(tip);
        TtsManager.r(tip, TtsGrade.Teach);
    }

    protected final boolean d() {
        CarModel carModelD = d.t().d();
        if (carModelD.c()) {
            String strA = k0.a(R.string.teachbase_please_stop);
            r.d(strA, "getString(R.string.teachbase_please_stop)");
            B(strA);
            return false;
        }
        if (carModelD.f5270h) {
            return true;
        }
        String strA2 = k0.a(R.string.teachbase_please_start_engine);
        r.d(strA2, "getString(R.string.teachbase_please_start_engine)");
        B(strA2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e() {
        boolean zA = SafeLocalParamManager.a();
        if (!zA) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_open_save_model);
            r.d(strA, "getString(R.string.teachbase_open_save_model)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{this.f6083a}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            m(str);
            B(str);
        }
        return zA;
    }

    protected final boolean f() {
        if (k()) {
            Dialog dialog = this.b;
            if (dialog != null) {
                r.c(dialog);
                if (!dialog.isShowing()) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    protected final Dialog getB() {
        return this.b;
    }

    public abstract boolean k();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m(String msg) {
        r.e(msg, "msg");
        f.o(this.f6083a + ": " + msg);
    }

    protected final void p(String msg) {
        r.e(msg, "msg");
        m(msg);
        u.h(msg);
        A(msg);
        TtsManager.r(msg, TtsGrade.Teach);
    }

    public void q(int i, int i2) {
        cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
        vVar.c((byte) i);
        vVar.c((byte) i2);
        m.h().Q(Cmd.AutoAssist, vVar.b());
    }

    protected final void r(final int i, final int i2, final Function0<v> onSuccess, final Function0<v> function0) {
        r.e(onSuccess, "onSuccess");
        u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.a
            @Override // java.lang.Runnable
            public final void run() {
                AbsAssistant.t(this.f6086a, i, i2, function0, onSuccess);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(Dialog dialog) {
        this.b = dialog;
    }

    protected final void v(String reason, Function0<v> function0, Function0<v> function1) {
        r.e(reason, "reason");
        m("showAssistEndDialog: " + this.f6083a + "结束(" + reason + ')');
        Dialog dialog = this.b;
        if (dialog != null) {
            dialog.dismiss();
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_subsidiary_end);
        r.d(strA, "getString(R.string.teachbase_subsidiary_end)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{this.f6083a}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        String strA2 = k0.a(R.string.teachbase_subsidiary_end_out);
        r.d(strA2, "getString(R.string.teachbase_subsidiary_end_out)");
        String str2 = String.format(strA2, Arrays.copyOf(new Object[]{this.f6083a}, 1));
        r.d(str2, "java.lang.String.format(format, *args)");
        AssistEndDialog assistEndDialog = new AssistEndDialog(activityI, str, str2, reason, function0, function1);
        this.b = assistEndDialog;
        if (assistEndDialog != null) {
            assistEndDialog.show();
        }
        GpsErrorHandler.f6121a.e();
    }

    public final void x(Function0<v> task) {
        r.e(task, "task");
        this.f6084d = task;
        d dVar = d.m;
        dVar.n(this.c);
        dVar.b(this.c);
    }

    public abstract void y(String str, boolean z);

    public final void z() {
        this.f6084d = null;
        d.m.n(this.c);
    }
}
