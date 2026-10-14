package cn.mucang.android.jiakaoyi.mapcollect.collect.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.c;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.CollectPreviewDialogBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/collect/dialog/CollectPreviewDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getStep", "()Lcn/mucang/android/jiakaoyi/engine/model/Step;", "setStep", "(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CollectPreviewDialog extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Step f4986a;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(CollectPreviewDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        CollectPreviewDialogBinding collectPreviewDialogBindingInflate = CollectPreviewDialogBinding.inflate(inflater, container, false);
        r.d(collectPreviewDialogBindingInflate, "inflate(inflater, container, false)");
        collectPreviewDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectPreviewDialog.t(this.f4975a, view);
            }
        });
        Step step = this.f4986a;
        if (step != null) {
            collectPreviewDialogBindingInflate.titleTv.setText(step.getStepName());
            collectPreviewDialogBindingInflate.imageIv.setImageResource(d.c().g(getF4986a()));
            if (step == Step.K2_SQuXian) {
                collectPreviewDialogBindingInflate.tipTv.setText("注意：采集内边线的点。左边是1号线，右边是2号线。");
            } else if (step == Step.K2_SuiDao) {
                collectPreviewDialogBindingInflate.tipTv.setText("注意：边线采内测点，中间线采中间点");
            } else if (step == Step.Moto_DiaoTou) {
                collectPreviewDialogBindingInflate.tipTv.setText("注意：评判区域和掉头区域均为可选采集");
            } else if (step == Step.Moto_BanMaXian || step == Step.Moto_LuKouZuoZhuan || step == Step.Moto_LuKouYouZhuan) {
                collectPreviewDialogBindingInflate.tipTv.setText("注意：评判区域为可选采集");
            }
        }
        return collectPreviewDialogBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 == null) {
            return;
        }
        dialog3.setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: renamed from: r, reason: from getter */
    public final Step getF4986a() {
        return this.f4986a;
    }

    public final void u(Step step) {
        this.f4986a = step;
    }
}
