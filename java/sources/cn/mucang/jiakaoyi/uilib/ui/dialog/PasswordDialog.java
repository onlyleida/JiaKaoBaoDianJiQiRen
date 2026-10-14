package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.ui.backup.BackupApi;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogPasswordBinding;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "passwordType", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;", "(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;)V", "onCorrect", "Lkotlin/Function0;", "", "getOnCorrect", "()Lkotlin/jvm/functions/Function0;", "setOnCorrect", "(Lkotlin/jvm/functions/Function0;)V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "verify", "it", "Landroid/view/View;", "password", "", "PasswordType", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PasswordDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PasswordType f9796a;
    private DialogPasswordBinding b;
    private Function0<kotlin.v> c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;", "", "(Ljava/lang/String;I)V", "Admin", "Service", "Debug", "Egg", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public enum PasswordType {
        Admin,
        Service,
        Debug,
        Egg
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9797a;

        static {
            int[] iArr = new int[PasswordType.values().length];
            iArr[PasswordType.Admin.ordinal()] = 1;
            iArr[PasswordType.Service.ordinal()] = 2;
            iArr[PasswordType.Debug.ordinal()] = 3;
            iArr[PasswordType.Egg.ordinal()] = 4;
            f9797a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasswordDialog(Context context, PasswordType passwordType) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(passwordType, "passwordType");
        this.f9796a = passwordType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(PasswordDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(PasswordDialog this$0, View it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogPasswordBinding dialogPasswordBinding = this$0.b;
        if (dialogPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = dialogPasswordBinding.passwordEt.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入密码");
        } else if (!cn.mucang.android.core.utils.x.e()) {
            cn.mucang.android.core.utils.u.h("当前设备未联网");
        } else {
            kotlin.jvm.internal.r.d(it, "it");
            this$0.j(it, string);
        }
    }

    private final void j(View view, final String str) {
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(context);
        jLoadingDialog.b("");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.k
            @Override // java.lang.Runnable
            public final void run() {
                PasswordDialog.k(this.f9827a, str, jLoadingDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(final PasswordDialog this$0, String password, final JLoadingDialog loading) {
        Runnable runnable;
        boolean zM;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(password, "$password");
        kotlin.jvm.internal.r.e(loading, "$loading");
        try {
            try {
                int i = a.f9797a[this$0.f9796a.ordinal()];
                if (i == 1) {
                    zM = new BackupApi().m(password);
                } else if (i == 2) {
                    zM = new BackupApi().n(password);
                } else if (i == 3) {
                    zM = kotlin.jvm.internal.r.a(cn.mucang.android.jiakaoyi.framework.utils.i0.g("TEST_ACCOUNT_PWD", ""), password);
                } else {
                    if (i != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    zM = kotlin.jvm.internal.r.a(new SimpleDateFormat("yyMMdd").format(new Date()), password);
                }
                if (zM) {
                    cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            PasswordDialog.l(this.f9824a);
                        }
                    });
                } else {
                    cn.mucang.android.core.utils.u.h("密码验证失败");
                }
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasswordDialog.m(loading);
                    }
                };
            } catch (Exception e2) {
                if (e2 instanceof ApiException) {
                    cn.mucang.android.core.utils.u.h(e2.getMessage());
                } else {
                    cn.mucang.android.core.utils.u.h("密码验证失败");
                }
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasswordDialog.m(loading);
                    }
                };
            }
            cn.mucang.android.core.utils.u.c(runnable);
        } catch (Throwable th) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.h
                @Override // java.lang.Runnable
                public final void run() {
                    PasswordDialog.m(loading);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(PasswordDialog this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        Function0<kotlin.v> function0A = this$0.a();
        if (function0A == null) {
            return;
        }
        function0A.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(JLoadingDialog loading) {
        kotlin.jvm.internal.r.e(loading, "$loading");
        loading.dismiss();
    }

    public final Function0<kotlin.v> a() {
        return this.c;
    }

    public final void i(Function0<kotlin.v> function0) {
        this.c = function0;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        String str;
        super.onCreate(savedInstanceState);
        DialogPasswordBinding dialogPasswordBindingInflate = DialogPasswordBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogPasswordBindingInflate, "inflate(layoutInflater)");
        this.b = dialogPasswordBindingInflate;
        if (dialogPasswordBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogPasswordBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dialog_default_width), -2);
        }
        DialogPasswordBinding dialogPasswordBinding = this.b;
        if (dialogPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogPasswordBinding.title;
        int i = a.f9797a[this.f9796a.ordinal()];
        if (i == 1) {
            str = "请输入管理员动态密码";
        } else if (i == 2) {
            str = "请输入服务商管理员密码";
        } else if (i == 3) {
            str = "请输入调试账号密码";
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            str = "请输入密码";
        }
        textView.setText(str);
        DialogPasswordBinding dialogPasswordBinding2 = this.b;
        if (dialogPasswordBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPasswordBinding2.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasswordDialog.g(this.f9818a, view);
            }
        });
        DialogPasswordBinding dialogPasswordBinding3 = this.b;
        if (dialogPasswordBinding3 != null) {
            dialogPasswordBinding3.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PasswordDialog.h(this.f9822a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
