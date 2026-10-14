package cn.mucang.android.jiakaoyi.teachingk2.safe.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogP0ErrorBinding;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/P0ErrorDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "error", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V", SocialConstants.PARAM_APP_DESC, "", "kotlin.jvm.PlatformType", "getError", "()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "setError", "(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "updateError", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class P0ErrorDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CheckModuleStatus f7893a;
    private final String b;
    private DialogP0ErrorBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a0<AudioStatus> f7894d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P0ErrorDialog(Context context, CheckModuleStatus error) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(error, "error");
        this.f7893a = error;
        this.b = k0.a(R.string.teachbase_back_n_gear_hint);
        this.f7894d = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                P0ErrorDialog.d(this.f7867a, (AudioStatus) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(P0ErrorDialog this$0, AudioStatus audioStatus) {
        String strA;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogP0ErrorBinding dialogP0ErrorBinding = this$0.c;
        if (dialogP0ErrorBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogP0ErrorBinding.callTv;
        int f6175a = audioStatus.getF6175a();
        if (f6175a != 1) {
            strA = f6175a != 2 ? k0.a(R.string.teachbase_call_monitoring_center) : k0.a(R.string.teachbase_hang_up);
        } else {
            strA = k0.a(R.string.teachbase_calling);
        }
        textView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(View view) {
        AudioManager.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(View view) {
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        Safer.h(activityI);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        LiveBus.d(AudioStatus.class).m(this.f7894d);
    }

    public final void g(CheckModuleStatus error) {
        kotlin.jvm.internal.r.e(error, "error");
        if (this.f7893a != error) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("P0ErrorDialog: ", error.getZhTitle()));
            DialogP0ErrorBinding dialogP0ErrorBinding = this.c;
            if (dialogP0ErrorBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogP0ErrorBinding.titleTv.setText(error.getTitle());
            DialogP0ErrorBinding dialogP0ErrorBinding2 = this.c;
            if (dialogP0ErrorBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            ImageView imageView = dialogP0ErrorBinding2.settingIv;
            kotlin.jvm.internal.r.d(imageView, "viewBinding.settingIv");
            imageView.setVisibility(error == CheckModuleStatus.M_50012 || error == CheckModuleStatus.M_50013 ? 0 : 8);
            TtsManager.r(error.getTitle() + (char) 65292 + ((Object) this.b), TtsGrade.SpecialVoice);
            this.f7893a = error;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogP0ErrorBinding dialogP0ErrorBindingInflate = DialogP0ErrorBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogP0ErrorBindingInflate, "inflate(layoutInflater)");
        this.c = dialogP0ErrorBindingInflate;
        if (dialogP0ErrorBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogP0ErrorBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_1060), -2);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("P0ErrorDialog: ", this.f7893a.getZhTitle()));
        DialogP0ErrorBinding dialogP0ErrorBinding = this.c;
        if (dialogP0ErrorBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogP0ErrorBinding.titleTv.setText(this.f7893a.getTitle());
        DialogP0ErrorBinding dialogP0ErrorBinding2 = this.c;
        if (dialogP0ErrorBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogP0ErrorBinding2.descTv.setText(this.b);
        DialogP0ErrorBinding dialogP0ErrorBinding3 = this.c;
        if (dialogP0ErrorBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        ImageView imageView = dialogP0ErrorBinding3.settingIv;
        kotlin.jvm.internal.r.d(imageView, "viewBinding.settingIv");
        CheckModuleStatus checkModuleStatus = this.f7893a;
        imageView.setVisibility(checkModuleStatus == CheckModuleStatus.M_50012 || checkModuleStatus == CheckModuleStatus.M_50013 ? 0 : 8);
        TtsManager.r(this.f7893a.getTitle() + (char) 65292 + ((Object) this.b), TtsGrade.SpecialVoice);
        DialogP0ErrorBinding dialogP0ErrorBinding4 = this.c;
        if (dialogP0ErrorBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogP0ErrorBinding4.callTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                P0ErrorDialog.e(view);
            }
        });
        DialogP0ErrorBinding dialogP0ErrorBinding5 = this.c;
        if (dialogP0ErrorBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogP0ErrorBinding5.settingIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.ui.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                P0ErrorDialog.f(view);
            }
        });
        LiveBus.d(AudioStatus.class).i(this.f7894d);
        LiveBus.d(AudioStatus.class).l(new AudioStatus(AudioManager.s()));
    }
}
