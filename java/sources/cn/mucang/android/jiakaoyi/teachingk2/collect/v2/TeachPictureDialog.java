package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import androidx.core.view.GravityCompat;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogPracticeTipsBinding;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "job", "Lkotlinx/coroutines/Job;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "showMediaTip", "url", "", "tip", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachPictureDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f6770a;
    private kotlinx.coroutines.t1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TeachPictureDialog(final Context context) {
        super(context, R.style.ThemeVideoDialog);
        kotlin.jvm.internal.r.e(context, "context");
        this.f6770a = kotlin.i.b(new Function0<DialogPracticeTipsBinding>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachPictureDialog$viewBinding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DialogPracticeTipsBinding invoke() {
                return DialogPracticeTipsBinding.inflate(LayoutInflater.from(context));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogPracticeTipsBinding b() {
        return (DialogPracticeTipsBinding) this.f6770a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TeachPictureDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    @SuppressLint({"SetTextI18n"})
    public final void e(String url, String tip, androidx.appcompat.app.d activity) {
        kotlin.jvm.internal.r.e(url, "url");
        kotlin.jvm.internal.r.e(tip, "tip");
        kotlin.jvm.internal.r.e(activity, "activity");
        super.show();
        b().tvTips.setText(tip);
        f.a.a.b.a.a.i(b().image, url, R.drawable.shape_default_round_pic);
        kotlinx.coroutines.t1 t1Var = this.b;
        if (t1Var != null) {
            kotlinx.coroutines.t1.a.a(t1Var, null, 1, null);
        }
        this.b = kotlinx.coroutines.g.b(androidx.lifecycle.s.a(activity), null, null, new TeachPictureDialog$showMediaTip$1(this, null), 3, null);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(b().getRoot());
        Window window = getWindow();
        if (window != null) {
            window.getAttributes().gravity = GravityCompat.END;
            window.setAttributes(window.getAttributes());
            window.setLayout((int) (((double) getContext().getResources().getDisplayMetrics().widthPixels) * 0.5d), -1);
        }
        b().ivClose.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.b2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachPictureDialog.d(this.f6792a, view);
            }
        });
    }
}
