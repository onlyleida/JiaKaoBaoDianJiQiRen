package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogPracticeTipsBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.TeachDialogShowEvent;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TeachMediaModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UnityCameraViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u000fH\u0014J \u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "job", "Lkotlinx/coroutines/Job;", "openJob", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "changeUnity", "", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onStop", "showMediaTip", "mediaMedia", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;", "needCountDown", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachTipsDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f8157a;
    private t1 b;
    private t1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TeachTipsDialog(final Context context) {
        super(context, R.style.ThemeVideoDialog);
        kotlin.jvm.internal.r.e(context, "context");
        this.f8157a = kotlin.i.b(new Function0<DialogPracticeTipsBinding>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.TeachTipsDialog$viewBinding$2
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

    private final void b(boolean z) {
        UnityCameraViewModel unityCameraViewModel = new UnityCameraViewModel();
        t1 t1Var = this.c;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.c = null;
        if (!z) {
            cn.mucang.android.jiakaoyi.unity.c.d.e(unityCameraViewModel);
        } else {
            unityCameraViewModel.x = -0.5f;
            this.c = kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new TeachTipsDialog$changeUnity$1(unityCameraViewModel, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogPracticeTipsBinding c() {
        return (DialogPracticeTipsBinding) this.f8157a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(TeachTipsDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    @SuppressLint({"SetTextI18n"})
    public final void f(TeachMediaModel mediaMedia, boolean z, androidx.appcompat.app.d activity) {
        kotlin.jvm.internal.r.e(mediaMedia, "mediaMedia");
        kotlin.jvm.internal.r.e(activity, "activity");
        if (cn.mucang.android.core.utils.n0.e(mediaMedia.fileName)) {
            return;
        }
        b(true);
        super.show();
        if (cn.mucang.android.core.utils.n0.g(mediaMedia.tip)) {
            c().tvTips.setText(Html.fromHtml(mediaMedia.tip));
        } else {
            c().tvTips.setText("");
        }
        f.a.a.b.a.a.h(c().image, new File(mediaMedia.fileName), R.drawable.shape_default_round_pic);
        t1 t1Var = this.b;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        if (z) {
            TextView textView = c().timeTv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.timeTv");
            textView.setVisibility(0);
            this.b = kotlinx.coroutines.g.b(androidx.lifecycle.s.a(activity), null, null, new TeachTipsDialog$showMediaTip$1(this, null), 3, null);
        } else {
            TextView textView2 = c().timeTv;
            kotlin.jvm.internal.r.d(textView2, "viewBinding.timeTv");
            textView2.setVisibility(8);
        }
        LiveBus.d(TeachDialogShowEvent.class).l(new TeachDialogShowEvent());
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(c().getRoot());
        Window window = getWindow();
        if (window != null) {
            window.getAttributes().gravity = GravityCompat.END;
            window.setAttributes(window.getAttributes());
            window.setLayout((int) (((double) getContext().getResources().getDisplayMetrics().widthPixels) * 0.5d), -1);
        }
        Window window2 = getWindow();
        View decorView = window2 == null ? null : window2.getDecorView();
        if (decorView != null) {
            decorView.setSystemUiVisibility(3590);
        }
        c().ivClose.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachTipsDialog.e(this.f8232a, view);
            }
        });
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        b(false);
    }
}
