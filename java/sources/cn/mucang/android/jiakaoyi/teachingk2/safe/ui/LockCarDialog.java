package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.d0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogLockCarBinding;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.ManagerPasswordDialog;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FlameOutReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.consts.LockCarType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0001(B8\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\u0002\u0010\fJ\u0012\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0010\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010&H\u0002J\b\u0010'\u001a\u00020\u000bH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "context", "Landroid/content/Context;", "lockType", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;", "unLocked", "Lkotlin/Function1;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;Lkotlin/jvm/functions/Function1;)V", "hasPlayDesc", "", "isEngineAlreadyStop", "isEngineRestart", "getLockType", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;", "passwordDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/ManagerPasswordDialog;", "tipPlayTime", "", "getUnLocked", "()Lkotlin/jvm/functions/Function1;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "setSystemWindowType", "window", "Landroid/view/Window;", "unLock", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LockCarDialog extends Dialog implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LockCarType f7831a;
    private final Function1<LockCarType, kotlin.v> b;
    private DialogLockCarBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ManagerPasswordDialog f7834f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7835g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f7836h;
    private final a0<AudioStatus> i;

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$onCreate$2", "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TtsListener {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            LockCarDialog.this.f7832d = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakBegin() {
            TtsListener.a.c(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            LockCarDialog.this.f7832d = true;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakPaused() {
            TtsListener.a.e(this);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakResumed() {
            TtsListener.a.g(this);
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$onSignalChanged$1$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onIntercept", "", "onSpeakEnd", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onIntercept() {
            super.onIntercept();
            LockCarDialog.this.o();
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            LockCarDialog.this.o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LockCarDialog(Context context, LockCarType lockType, Function1<? super LockCarType, kotlin.v> unLocked) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(lockType, "lockType");
        kotlin.jvm.internal.r.e(unLocked, "unLocked");
        this.f7831a = lockType;
        this.b = unLocked;
        this.i = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LockCarDialog.i(this.f7858a, (AudioStatus) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(LockCarDialog this$0, AudioStatus audioStatus) {
        String strA;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogLockCarBinding dialogLockCarBinding = this$0.c;
        if (dialogLockCarBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogLockCarBinding.callTv;
        int f6175a = audioStatus.getF6175a();
        if (f6175a != 1) {
            strA = f6175a != 2 ? k0.a(R.string.teachbase_call_monitoring_center) : k0.a(R.string.teachbase_hang_up);
        } else {
            strA = k0.a(R.string.teachbase_calling);
        }
        textView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(LockCarDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        String string = this$0.getContext().getString(R.string.teachbase_input_admin_psw_unlock);
        kotlin.jvm.internal.r.d(string, "context.getString(R.stri…e_input_admin_psw_unlock)");
        ManagerPasswordDialog managerPasswordDialog = new ManagerPasswordDialog(activityI, string, null, 4, null);
        this$0.f7834f = managerPasswordDialog;
        this$0.n(managerPasswordDialog == null ? null : managerPasswordDialog.getWindow());
        ManagerPasswordDialog managerPasswordDialog2 = this$0.f7834f;
        if (managerPasswordDialog2 != null) {
            managerPasswordDialog2.k(new Function1<XyUserModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.LockCarDialog$onCreate$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(XyUserModel xyUserModel) {
                    invoke2(xyUserModel);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(XyUserModel it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    cn.mucang.android.jiakaoyi.framework.log.f.o("管理员密码验证成功，解除大熄火");
                    SafeCommandAdapter.h(FlameOutReason.APP, null, 2, null);
                }
            });
        }
        ManagerPasswordDialog managerPasswordDialog3 = this$0.f7834f;
        if (managerPasswordDialog3 == null) {
            return;
        }
        managerPasswordDialog3.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view) {
        AudioManager.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LockCarDialog this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LiveBus.d(AudioStatus.class).m(this$0.i);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this$0);
        ManagerPasswordDialog managerPasswordDialog = this$0.f7834f;
        if (managerPasswordDialog != null) {
            managerPasswordDialog.dismiss();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(((Object) this$0.getF7831a().desc) + "弹窗消失, " + this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(LockCarDialog this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TtsManager.H();
        TtsManager.u(k0.a(R.string.teachbase_car_unlocked), TtsGrade.SpecialVoice, this$0.new b());
    }

    private final void n(Window window) {
        if (!d0.a()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog: 没有悬浮窗权限");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (window == null) {
                return;
            }
            window.setType(2038);
        } else {
            if (window == null) {
                return;
            }
            window.setType(2003);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog: 已解除锁定");
        this.b.invoke(this.f7831a);
        DialogExtensionKt.b(this);
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final LockCarType getF7831a() {
        return this.f7831a;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogLockCarBinding dialogLockCarBindingInflate = DialogLockCarBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogLockCarBindingInflate, "inflate(layoutInflater)");
        this.c = dialogLockCarBindingInflate;
        if (dialogLockCarBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogLockCarBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        if (this.f7831a == LockCarType.CONTROL) {
            DialogLockCarBinding dialogLockCarBinding = this.c;
            if (dialogLockCarBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogLockCarBinding.settingIv.setVisibility(8);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog: " + ((Object) this.f7831a.desc) + (char) 65292 + this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        n(getWindow());
        DialogLockCarBinding dialogLockCarBinding2 = this.c;
        if (dialogLockCarBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogLockCarBinding2.settingIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LockCarDialog.j(this.f7857a, view);
            }
        });
        TtsManager.u(k0.a(R.string.teachbase_car_locked_desc), TtsGrade.SpecialVoice, new a());
        cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog:车辆处于危险状态已锁死，请联系教练或监控中心解除状态");
        DialogLockCarBinding dialogLockCarBinding3 = this.c;
        if (dialogLockCarBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogLockCarBinding3.callTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LockCarDialog.k(view);
            }
        });
        this.f7835g = !cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5270h;
        cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog: isEngineAlreadyStop: " + this.f7835g + ", 转速: " + cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5265a);
        LiveBus.d(AudioStatus.class).i(this.i);
        LiveBus.d(AudioStatus.class).l(new AudioStatus(AudioManager.s()));
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.g
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                LockCarDialog.l(this.f7859a, dialogInterface);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        if (signalGetter.d().k()) {
            if (this.f7835g) {
                this.f7836h = cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5270h;
            } else {
                boolean z = !cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5270h;
                this.f7835g = z;
                if (z) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarDialog: 已经熄火");
                }
            }
            if (this.f7836h) {
                DebounceUtil.f3633a.b("", 4000, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        LockCarDialog.m(this.f7856a);
                    }
                });
            }
            DialogLockCarBinding dialogLockCarBinding = this.c;
            if (dialogLockCarBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogLockCarBinding.engineIv.setSelected(this.f7836h);
            if (this.f7832d) {
                DialogLockCarBinding dialogLockCarBinding2 = this.c;
                if (dialogLockCarBinding2 == null) {
                    kotlin.jvm.internal.r.u("viewBinding");
                    throw null;
                }
                if (dialogLockCarBinding2.engineIv.isSelected() || signalGetter.d().L - this.f7833e <= DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                    return;
                }
                this.f7833e = signalGetter.d().L;
                TtsManager.r(k0.a(R.string.teachbase_open_engine), TtsGrade.SpecialVoice);
            }
        }
    }
}
