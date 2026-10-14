package cn.mucang.android.jiakaoyi.teachingk2.v0.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogFpFailedBinding;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioStatus;
import com.tencent.open.SocialConstants;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.v0.d.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\nJ\u0012\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/fp/dialog/FpFailedDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SocialConstants.PARAM_APP_DESC, "", "func", "Lkotlin/Function0;", "", "onClickVideo", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getDesc", "()Ljava/lang/String;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogFpFailedBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FpFailedDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8698a;
    private final Function0<v> b;
    private final Function0<v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DialogFpFailedBinding f8699d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FpFailedDialog(Context context, String desc, Function0<v> func, Function0<v> onClickVideo) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(desc, "desc");
        r.e(func, "func");
        r.e(onClickVideo, "onClickVideo");
        this.f8698a = desc;
        this.b = func;
        this.c = onClickVideo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(View view) {
        AudioManager.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(FpFailedDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.b.invoke();
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(FpFailedDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.c.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(FpFailedDialog this$0, AudioStatus audioStatus) {
        String strA;
        r.e(this$0, "this$0");
        DialogFpFailedBinding dialogFpFailedBinding = this$0.f8699d;
        if (dialogFpFailedBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogFpFailedBinding.callTv;
        int f6175a = audioStatus.getF6175a();
        if (f6175a != 1) {
            strA = f6175a != 2 ? k0.a(R.string.teachbase_call_coach) : k0.a(R.string.teachbase_hang_up);
        } else {
            strA = k0.a(R.string.teachbase_calling);
        }
        textView.setText(strA);
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        DialogFpFailedBinding dialogFpFailedBindingInflate = DialogFpFailedBinding.inflate(getLayoutInflater());
        r.d(dialogFpFailedBindingInflate, "inflate(layoutInflater)");
        this.f8699d = dialogFpFailedBindingInflate;
        if (dialogFpFailedBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogFpFailedBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 796.0f) / 1920.0f), -2);
        }
        DialogFpFailedBinding dialogFpFailedBinding = this.f8699d;
        if (dialogFpFailedBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogFpFailedBinding.descTv.setText(this.f8698a);
        DialogFpFailedBinding dialogFpFailedBinding2 = this.f8699d;
        if (dialogFpFailedBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogFpFailedBinding2.callTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v0.d.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FpFailedDialog.e(view);
            }
        });
        DialogFpFailedBinding dialogFpFailedBinding3 = this.f8699d;
        if (dialogFpFailedBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogFpFailedBinding3.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v0.d.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FpFailedDialog.f(this.f8696a, view);
            }
        });
        DialogFpFailedBinding dialogFpFailedBinding4 = this.f8699d;
        if (dialogFpFailedBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogFpFailedBinding4.tvVideo.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v0.d.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FpFailedDialog.g(this.f8695a, view);
            }
        });
        Object context = getContext();
        androidx.lifecycle.r rVar = context instanceof androidx.lifecycle.r ? (androidx.lifecycle.r) context : null;
        if (rVar == null) {
            Object baseContext = ((ContextThemeWrapper) getContext()).getBaseContext();
            Objects.requireNonNull(baseContext, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            rVar = (androidx.lifecycle.r) baseContext;
        }
        LiveBus.d(AudioStatus.class).h(rVar, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.v0.d.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                FpFailedDialog.h(this.f8697a, (AudioStatus) obj);
            }
        });
    }
}
