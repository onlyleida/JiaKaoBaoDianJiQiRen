package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogPermissionBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.l0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0011\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0015J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0002R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/PermissionDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "permissions", "", "", "agree", "Lkotlin/Function0;", "", "disagreeListener", "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "appName", "index", "", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPermissionBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "permissionConvertDesc", "permission", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f9830a;
    private final Function0<kotlin.v> b;
    private final Function0<kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DialogPermissionBinding f9831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f9833f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PermissionDialog(Context context, List<String> permissions, Function0<kotlin.v> function0, Function0<kotlin.v> function1) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(permissions, "permissions");
        this.f9830a = permissions;
        this.b = function0;
        this.c = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(PermissionDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = this$0.f9832e + 1;
        this$0.f9832e = i;
        if (i >= this$0.f9830a.size()) {
            Function0<kotlin.v> function0 = this$0.b;
            if (function0 != null) {
                function0.invoke();
            }
            this$0.dismiss();
            return;
        }
        DialogPermissionBinding dialogPermissionBinding = this$0.f9831d;
        if (dialogPermissionBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogPermissionBinding.permissionDesc;
        StringBuilder sb = new StringBuilder();
        sb.append("要允许");
        String str = this$0.f9833f;
        if (str == null) {
            kotlin.jvm.internal.r.u("appName");
            throw null;
        }
        sb.append(str);
        sb.append(this$0.e(this$0.f9830a.get(this$0.f9832e)));
        sb.append("吗?");
        textView.setText(sb.toString());
        DialogPermissionBinding dialogPermissionBinding2 = this$0.f9831d;
        if (dialogPermissionBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPermissionBinding2.permissionTag.setText((char) 31532 + (this$0.f9832e + 1) + "项权限(共" + this$0.f9830a.size() + "项)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PermissionDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        Function0<kotlin.v> function0 = this$0.c;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    private final String e(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode != -1888586689) {
            if (iHashCode != -406040016) {
                if (iHashCode == -5573545 && str.equals("android.permission.READ_PHONE_STATE")) {
                    return "拨打电话和管理通话";
                }
            } else if (str.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                return "访问设备上的照片、媒体内容和文件";
            }
        } else if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
            return "获取此设备的位置信息";
        }
        return "";
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogPermissionBinding dialogPermissionBindingInflate = DialogPermissionBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogPermissionBindingInflate, "inflate(layoutInflater)");
        this.f9831d = dialogPermissionBindingInflate;
        if (dialogPermissionBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogPermissionBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        String string = getContext().getResources().getString(R.string.app_name);
        kotlin.jvm.internal.r.d(string, "context.resources.getString(R.string.app_name)");
        this.f9833f = string;
        DialogPermissionBinding dialogPermissionBinding = this.f9831d;
        if (dialogPermissionBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogPermissionBinding.permissionDesc;
        StringBuilder sb = new StringBuilder();
        sb.append("要允许");
        String str = this.f9833f;
        if (str == null) {
            kotlin.jvm.internal.r.u("appName");
            throw null;
        }
        sb.append(str);
        sb.append(e(this.f9830a.get(this.f9832e)));
        sb.append("吗?");
        textView.setText(sb.toString());
        DialogPermissionBinding dialogPermissionBinding2 = this.f9831d;
        if (dialogPermissionBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPermissionBinding2.permissionTag.setText((char) 31532 + (this.f9832e + 1) + "项权限(共" + this.f9830a.size() + "项)");
        DialogPermissionBinding dialogPermissionBinding3 = this.f9831d;
        if (dialogPermissionBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPermissionBinding3.permissionAgree.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PermissionDialog.c(this.f9834a, view);
            }
        });
        DialogPermissionBinding dialogPermissionBinding4 = this.f9831d;
        if (dialogPermissionBinding4 != null) {
            dialogPermissionBinding4.permissionDisagree.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PermissionDialog.d(this.f9829a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
