package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import cn.mucang.jiakaoyi.uilib.utils.TextChecker;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ShareDialogBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.n0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/ShareDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "onConfirm", "Lkotlin/Function1;", "", "", "getOnConfirm", "()Lkotlin/jvm/functions/Function1;", "setOnConfirm", "(Lkotlin/jvm/functions/Function1;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShareDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function1<? super String, kotlin.v> f9837a;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ShareDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(ShareDialogBinding viewBinding, ShareDialog this$0, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String string = viewBinding.phoneEt.getText().toString();
        if (!TextChecker.a(string)) {
            cn.mucang.android.core.utils.u.h("请输入正确手机号");
            return;
        }
        if (!cn.mucang.android.core.utils.x.e()) {
            cn.mucang.android.core.utils.u.h("当前设备未联网");
            return;
        }
        Function1<String, kotlin.v> function1R = this$0.r();
        if (function1R != null) {
            function1R.invoke(string);
        }
        this$0.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        final ShareDialogBinding shareDialogBindingInflate = ShareDialogBinding.inflate(inflater, container, false);
        kotlin.jvm.internal.r.d(shareDialogBindingInflate, "inflate(inflater, container, false)");
        shareDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareDialog.u(this.f9858a, view);
            }
        });
        shareDialogBindingInflate.okTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareDialog.v(shareDialogBindingInflate, this, view);
            }
        });
        return shareDialogBindingInflate.getRoot();
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

    public final Function1<String, kotlin.v> r() {
        return this.f9837a;
    }

    public final void w(Function1<? super String, kotlin.v> function1) {
        this.f9837a = function1;
    }
}
