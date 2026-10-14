package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.c;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteSaveDialogBinding;
import cn.mucang.jiakaoyi.uilib.utils.TextChecker;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.detail.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0018\u001a\u00020\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010!\u001a\u00020\u0013H\u0016J \u0010\"\u001a\u00020\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0006\"\u0004\b\n\u0010\bR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R.\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteSaveDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", MenuOptions.COPY, "", "getCopy", "()Z", "setCopy", "(Z)V", "isPublic", "setPublic", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "onSave", "Lkotlin/Function2;", "", "getOnSave", "()Lkotlin/jvm/functions/Function2;", "setOnSave", "(Lkotlin/jvm/functions/Function2;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "setData", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteSaveDialog extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Function2<? super String, ? super Boolean, v> f4526a;
    private String b;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4527d;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RouteSaveDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(RouteSaveDialogBinding viewBinding, RouteSaveDialog this$0, View view) {
        r.e(viewBinding, "$viewBinding");
        r.e(this$0, "this$0");
        String string = viewBinding.nameEt.getText().toString();
        if (TextChecker.c(string, null, 2, null)) {
            Function2<String, Boolean, v> function2R = this$0.r();
            if (function2R != null) {
                function2R.invoke(string, Boolean.valueOf(viewBinding.isPublicIv.isSelected()));
            }
            this$0.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(View view) {
        u.h("该路线属于复制路线不能公开");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(View view) {
        view.setSelected(!view.isSelected());
    }

    public final void A(String str, boolean z, boolean z2) {
        this.b = str;
        this.c = z;
        this.f4527d = z2;
    }

    public final void B(Function2<? super String, ? super Boolean, v> function2) {
        this.f4526a = function2;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        final RouteSaveDialogBinding routeSaveDialogBindingInflate = RouteSaveDialogBinding.inflate(inflater, container, false);
        r.d(routeSaveDialogBindingInflate, "inflate(inflater, container, false)");
        routeSaveDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteSaveDialog.w(this.f4518a, view);
            }
        });
        routeSaveDialogBindingInflate.okTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteSaveDialog.x(routeSaveDialogBindingInflate, this, view);
            }
        });
        routeSaveDialogBindingInflate.nameEt.setText(this.b);
        routeSaveDialogBindingInflate.isPublicIv.setSelected(this.c);
        if (this.f4527d) {
            routeSaveDialogBindingInflate.isPublicIv.setEnabled(true);
            routeSaveDialogBindingInflate.isPublicIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteSaveDialog.y(view);
                }
            });
        } else {
            routeSaveDialogBindingInflate.isPublicIv.setEnabled(true);
            routeSaveDialogBindingInflate.isPublicIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteSaveDialog.z(view);
                }
            });
        }
        return routeSaveDialogBindingInflate.getRoot();
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

    public final Function2<String, Boolean, v> r() {
        return this.f4526a;
    }
}
