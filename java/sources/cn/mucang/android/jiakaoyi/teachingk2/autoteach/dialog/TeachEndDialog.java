package cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogTeachEndBinding;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.x;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachEndDialog;", "Landroid/app/Dialog;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "context", "Landroid/content/Context;", "title", "", SocialConstants.PARAM_APP_DESC, "brakeCode", "", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V", "brakeTime", "", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogTeachEndBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachEndDialog extends Dialog implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6288a;
    private final String b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DialogTeachEndBinding f6289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0<AudioStatus> f6291f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TeachEndDialog(Context context, String title, String desc, int i) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(title, "title");
        r.e(desc, "desc");
        this.f6288a = title;
        this.b = desc;
        this.c = i;
        this.f6291f = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TeachEndDialog.c(this.f6284a, (AudioStatus) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(TeachEndDialog this$0, AudioStatus audioStatus) {
        String strA;
        r.e(this$0, "this$0");
        DialogTeachEndBinding dialogTeachEndBinding = this$0.f6289d;
        if (dialogTeachEndBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogTeachEndBinding.callTv;
        int f6175a = audioStatus.getF6175a();
        if (f6175a != 1) {
            strA = f6175a != 2 ? k0.a(R.string.teachbase_call_monitoring_center) : k0.a(R.string.teachbase_hang_up);
        } else {
            strA = k0.a(R.string.teachbase_calling);
        }
        textView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(View view) {
        AudioManager.C();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogTeachEndBinding dialogTeachEndBindingInflate = DialogTeachEndBinding.inflate(getLayoutInflater());
        r.d(dialogTeachEndBindingInflate, "inflate(layoutInflater)");
        this.f6289d = dialogTeachEndBindingInflate;
        if (dialogTeachEndBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogTeachEndBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        DialogTeachEndBinding dialogTeachEndBinding = this.f6289d;
        if (dialogTeachEndBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogTeachEndBinding.titleTv.setText(this.f6288a);
        DialogTeachEndBinding dialogTeachEndBinding2 = this.f6289d;
        if (dialogTeachEndBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogTeachEndBinding2.descTv.setText(this.b);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        if (this.c == BrakeReason.RemoteBrake.getCode()) {
            DialogTeachEndBinding dialogTeachEndBinding3 = this.f6289d;
            if (dialogTeachEndBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogTeachEndBinding3.callTv.setVisibility(0);
            DialogTeachEndBinding dialogTeachEndBinding4 = this.f6289d;
            if (dialogTeachEndBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogTeachEndBinding4.callTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachEndDialog.d(view);
                }
            });
            LiveBus.d(AudioStatus.class).i(this.f6291f);
            LiveBus.d(AudioStatus.class).l(new AudioStatus(AudioManager.s()));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        DialogTeachEndBinding dialogTeachEndBinding = this.f6289d;
        if (dialogTeachEndBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogTeachEndBinding.engineIv.setSelected(signalGetter.d().f5270h);
        DialogTeachEndBinding dialogTeachEndBinding2 = this.f6289d;
        if (dialogTeachEndBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogTeachEndBinding2.gearIv;
        Gear gear = signalGetter.d().m;
        Gear gear2 = Gear.GearN;
        imageView.setSelected(gear == gear2 || signalGetter.d().m == Gear.GearP);
        DialogTeachEndBinding dialogTeachEndBinding3 = this.f6289d;
        if (dialogTeachEndBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogTeachEndBinding3.brakeIv.setSelected(!signalGetter.d().f5268f);
        CarModel carModelD = cn.mucang.android.jiakaoyi.signal.c.d.t().d();
        if (carModelD.f5268f) {
            return;
        }
        Gear gear3 = carModelD.m;
        if (gear3 == gear2 || gear3 == Gear.GearP) {
            ReceiveSenorInfo receiveSenorInfo = signalGetter.d().G;
            if ((receiveSenorInfo != null ? receiveSenorInfo.safeBoardBrakeState : null) == CarBrakeState.STATE_NONE) {
                DialogExtensionKt.b(this);
            }
            for (BrakeReason brakeReason : BrakeReason.values()) {
                if (brakeReason.isByApp() && x.a(brakeReason)) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - this.f6290e > 3000) {
                        this.f6290e = jCurrentTimeMillis;
                        SafeCommandAdapter.f((byte) 1);
                    }
                }
            }
        }
    }
}
