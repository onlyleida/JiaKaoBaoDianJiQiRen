package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogManagerPasswordBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotBusinessLoginApi;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.g0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\u0012\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002R(\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/ManagerPasswordDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "title", "", "tip", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "onCorrect", "Lkotlin/Function1;", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "", "getOnCorrect", "()Lkotlin/jvm/functions/Function1;", "setOnCorrect", "(Lkotlin/jvm/functions/Function1;)V", "getTip", "()Ljava/lang/String;", "getTitle", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogManagerPasswordBinding;", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "verify", "it", "Landroid/view/View;", "loginInfo", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ManagerPasswordDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7380a;
    private final String b;
    private DialogManagerPasswordBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function1<? super XyUserModel, kotlin.v> f7381d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManagerPasswordDialog(Context context, String title, String str) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(title, "title");
        this.f7380a = title;
        this.b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ManagerPasswordDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ManagerPasswordDialog this$0, View it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogManagerPasswordBinding dialogManagerPasswordBinding = this$0.c;
        if (dialogManagerPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = dialogManagerPasswordBinding.passwordEt.getText().toString();
        if (n0.e(string)) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_enter_admin_password));
        } else if (!cn.mucang.android.core.utils.x.e()) {
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_not_net));
        } else {
            kotlin.jvm.internal.r.d(it, "it");
            this$0.l(it, string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ManagerPasswordDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogManagerPasswordBinding dialogManagerPasswordBinding = this$0.c;
        if (dialogManagerPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (dialogManagerPasswordBinding.passwordEt.isInputMethodTarget()) {
            return;
        }
        DialogManagerPasswordBinding dialogManagerPasswordBinding2 = this$0.c;
        if (dialogManagerPasswordBinding2 != null) {
            dialogManagerPasswordBinding2.passwordEt.clearFocus();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    private final void l(View view, final String str) {
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(context);
        jLoadingDialog.b("");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                ManagerPasswordDialog.m(str, this, jLoadingDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(String loginInfo, final ManagerPasswordDialog this$0, final JLoadingDialog loading) {
        Runnable runnable;
        kotlin.jvm.internal.r.e(loginInfo, "$loginInfo");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(loading, "$loading");
        try {
            try {
                final XyUserModel xyUserModelO = new RobotBusinessLoginApi().o(loginInfo);
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        ManagerPasswordDialog.n(this.f7400a, xyUserModelO);
                    }
                });
                runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        ManagerPasswordDialog.o(loading);
                    }
                };
            } catch (Exception e2) {
                if (e2 instanceof ApiException) {
                    cn.mucang.android.core.utils.u.h(e2.getMessage());
                } else {
                    cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_password_error));
                }
                runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        ManagerPasswordDialog.o(loading);
                    }
                };
            }
            cn.mucang.android.core.utils.u.c(runnable);
        } catch (Throwable th) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.v
                @Override // java.lang.Runnable
                public final void run() {
                    ManagerPasswordDialog.o(loading);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ManagerPasswordDialog this$0, XyUserModel user) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(user, "$user");
        this$0.dismiss();
        Function1<XyUserModel, kotlin.v> function1A = this$0.a();
        if (function1A == null) {
            return;
        }
        function1A.invoke(user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(JLoadingDialog loading) {
        kotlin.jvm.internal.r.e(loading, "$loading");
        loading.dismiss();
    }

    public final Function1<XyUserModel, kotlin.v> a() {
        return this.f7381d;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        DialogManagerPasswordBinding dialogManagerPasswordBinding = this.c;
        if (dialogManagerPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding.passwordEt.clearFocus();
        Object systemService = getContext().getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        DialogManagerPasswordBinding dialogManagerPasswordBinding2 = this.c;
        if (dialogManagerPasswordBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        inputMethodManager.hideSoftInputFromWindow(dialogManagerPasswordBinding2.passwordEt.getWindowToken(), 2);
        super.dismiss();
    }

    public final void k(Function1<? super XyUserModel, kotlin.v> function1) {
        this.f7381d = function1;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogManagerPasswordBinding dialogManagerPasswordBindingInflate = DialogManagerPasswordBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogManagerPasswordBindingInflate, "inflate(layoutInflater)");
        this.c = dialogManagerPasswordBindingInflate;
        if (dialogManagerPasswordBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogManagerPasswordBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        DialogManagerPasswordBinding dialogManagerPasswordBinding = this.c;
        if (dialogManagerPasswordBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding.titleTv.setText(this.f7380a);
        DialogManagerPasswordBinding dialogManagerPasswordBinding2 = this.c;
        if (dialogManagerPasswordBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding2.tipTv.setText(this.b);
        DialogManagerPasswordBinding dialogManagerPasswordBinding3 = this.c;
        if (dialogManagerPasswordBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogManagerPasswordBinding3.tipTv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.tipTv");
        textView.setVisibility(n0.g(this.b) ? 0 : 8);
        DialogManagerPasswordBinding dialogManagerPasswordBinding4 = this.c;
        if (dialogManagerPasswordBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding4.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManagerPasswordDialog.h(this.f7407a, view);
            }
        });
        DialogManagerPasswordBinding dialogManagerPasswordBinding5 = this.c;
        if (dialogManagerPasswordBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding5.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ManagerPasswordDialog.i(this.f7409a, view);
            }
        });
        DialogManagerPasswordBinding dialogManagerPasswordBinding6 = this.c;
        if (dialogManagerPasswordBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogManagerPasswordBinding6.passwordEt.clearFocus();
        DialogManagerPasswordBinding dialogManagerPasswordBinding7 = this.c;
        if (dialogManagerPasswordBinding7 != null) {
            dialogManagerPasswordBinding7.passwordEt.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ManagerPasswordDialog.j(this.f7408a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    public /* synthetic */ ManagerPasswordDialog(Context context, String str, String str2, int i, kotlin.jvm.internal.o oVar) {
        this(context, str, (i & 4) != 0 ? null : str2);
    }
}
