package cn.mucang.android.jiakaoyi.k3collect.example;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.c;
import cn.mucang.android.jiakaoyi.k3collect.databinding.DialogCollectExampleBinding;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.e0.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/example/K3CollectExampleDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "drawableId", "", "Ljava/lang/Integer;", "tip", "", "title", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3CollectExampleDialog extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f3936a;
    private String b;
    private String c;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(K3CollectExampleDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
        Bundle arguments = getArguments();
        this.f3936a = arguments == null ? null : Integer.valueOf(arguments.getInt("drawableId"));
        Bundle arguments2 = getArguments();
        this.b = arguments2 == null ? null : arguments2.getString("tip");
        Bundle arguments3 = getArguments();
        this.c = arguments3 != null ? arguments3.getString("title") : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        DialogCollectExampleBinding dialogCollectExampleBindingInflate = DialogCollectExampleBinding.inflate(inflater, container, false);
        r.d(dialogCollectExampleBindingInflate, "inflate(inflater, container, false)");
        dialogCollectExampleBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.e0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3CollectExampleDialog.s(this.f3935a, view);
            }
        });
        String str = this.b;
        if (str != null) {
            dialogCollectExampleBindingInflate.tipTv.setText(str);
        }
        String str2 = this.c;
        if (str2 == null) {
            str2 = "示例";
        }
        dialogCollectExampleBindingInflate.titleTv.setText(str2);
        Integer num = this.f3936a;
        if (num != null) {
            dialogCollectExampleBindingInflate.imageIv.setImageResource(num.intValue());
        }
        return dialogCollectExampleBindingInflate.getRoot();
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
}
