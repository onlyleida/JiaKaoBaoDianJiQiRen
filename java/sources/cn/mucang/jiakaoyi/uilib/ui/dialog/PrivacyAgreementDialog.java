package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogPrivacyAgreementBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001!B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u000fH\u0002J\b\u0010\u001a\u001a\u00020\tH\u0002J\b\u0010\u001b\u001a\u00020\tH\u0002J\b\u0010\u001c\u001a\u00020\tH\u0002J\u0012\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0015J\u0006\u0010 \u001a\u00020\tR\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0010j\b\u0012\u0004\u0012\u00020\u0006`\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0010j\b\u0012\u0004\u0012\u00020\u0015`\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082D¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "privacyViews", "", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "agree", "Lkotlin/Function0;", "", "closeListener", "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "confirming", "", "currentPrivacyViewIndex", "", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPrivacyAgreementBinding;", "views", "Landroid/view/View;", "widthDp", "", "changeViewIndex", "index", "clickAgree", "exitApp", "judgeFinish", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "refusePrivacy", "IPrivacyView", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrivacyAgreementDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<kotlin.v> f9798a;
    private final Function0<kotlin.v> b;
    private DialogPrivacyAgreementBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<a> f9799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<View> f9800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f9801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9802g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9803h;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H\u0016¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "", "confirmRead", "", "createView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "inflater", "Landroid/view/LayoutInflater;", "getCancelText", "", "getConfirmText", "isConfirmRead", "isRequired", "isSync", "refuseRead", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public interface a {

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        public static final class C0162a {
            public static boolean a(a aVar) {
                kotlin.jvm.internal.r.e(aVar, "this");
                return true;
            }
        }

        boolean a();

        String b();

        boolean c();

        String d();

        boolean e();

        boolean f();

        View g(ViewGroup viewGroup, LayoutInflater layoutInflater);

        boolean isSync();
    }

    public /* synthetic */ PrivacyAgreementDialog(Context context, List list, Function0 function0, Function0 function1, int i, kotlin.jvm.internal.o oVar) {
        this(context, list, function0, (i & 8) != 0 ? null : function1);
    }

    private final void d(int i) {
        Iterator<T> it = this.f9800e.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(4);
        }
        this.f9803h = i;
        a aVar = (a) kotlin.collections.s.f0(this.f9799d, i);
        if (aVar != null) {
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding = this.c;
            if (dialogPrivacyAgreementBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogPrivacyAgreementBinding.agree.setText(aVar.b());
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding2 = this.c;
            if (dialogPrivacyAgreementBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogPrivacyAgreementBinding2.exit.setText(aVar.d());
        }
        View view = (View) kotlin.collections.s.f0(this.f9800e, this.f9803h);
        if (view == null) {
            return;
        }
        view.setVisibility(0);
    }

    private final void e() {
        final a aVar = (a) kotlin.collections.s.f0(this.f9799d, this.f9803h);
        if (aVar == null) {
            return;
        }
        if (aVar.isSync()) {
            if (aVar.c()) {
                j();
            }
        } else if (this.f9802g) {
            cn.mucang.android.core.utils.u.h("正在执行...");
        } else {
            this.f9802g = true;
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.u
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacyAgreementDialog.f(aVar, this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(a it, final PrivacyAgreementDialog this$0) {
        Runnable runnable;
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            try {
                if (it.c()) {
                    cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            PrivacyAgreementDialog.g(this.f9853a);
                        }
                    });
                } else {
                    cn.mucang.android.core.utils.u.h("设置状态失败");
                }
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        PrivacyAgreementDialog.h(this.f9854a);
                    }
                };
            } catch (Exception e2) {
                e2.printStackTrace();
                String message = e2.getMessage();
                if (message == null) {
                    message = "同意失败";
                }
                cn.mucang.android.core.utils.u.h(message);
                runnable = new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        PrivacyAgreementDialog.h(this.f9854a);
                    }
                };
            }
            cn.mucang.android.core.utils.u.c(runnable);
        } catch (Throwable th) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.t
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacyAgreementDialog.h(this.f9854a);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(PrivacyAgreementDialog this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(PrivacyAgreementDialog this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f9802g = false;
    }

    private final void i() {
        dismiss();
        AccountManager.h().m();
        try {
            Result.Companion companion = Result.INSTANCE;
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        if (this.f9803h != this.f9799d.size() - 1) {
            d(this.f9803h + 1);
            return;
        }
        dismiss();
        Function0<kotlin.v> function0 = this.f9798a;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(PrivacyAgreementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        a aVar = (a) kotlin.collections.s.f0(this$0.f9799d, this$0.f9803h);
        if (aVar == null) {
            return;
        }
        if (!aVar.f()) {
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new PrivacyAgreementDialog$onCreate$2$1$1(aVar, this$0, null), 3, null);
            return;
        }
        Function0<kotlin.v> function0 = this$0.b;
        if (function0 != null) {
            function0.invoke();
        } else {
            this$0.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(PrivacyAgreementDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.e();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n", "RestrictedApi"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogPrivacyAgreementBinding dialogPrivacyAgreementBindingInflate = DialogPrivacyAgreementBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogPrivacyAgreementBindingInflate, "inflate(layoutInflater)");
        this.c = dialogPrivacyAgreementBindingInflate;
        for (a aVar : this.f9799d) {
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding = this.c;
            if (dialogPrivacyAgreementBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            FrameLayout frameLayout = dialogPrivacyAgreementBinding.container;
            kotlin.jvm.internal.r.d(frameLayout, "viewBinding.container");
            LayoutInflater layoutInflater = getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            View viewG = aVar.g(frameLayout, layoutInflater);
            this.f9800e.add(viewG);
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding2 = this.c;
            if (dialogPrivacyAgreementBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogPrivacyAgreementBinding2.container.addView(viewG);
        }
        d(0);
        DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding3 = this.c;
        if (dialogPrivacyAgreementBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogPrivacyAgreementBinding3.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        int iA = s0.a(this.f9801f);
        if (iA <= this.f9801f) {
            iA = (int) (((double) cn.mucang.android.core.utils.o0.q(MucangConfig.i().getWindowManager())) * 0.52d);
        }
        Window window = getWindow();
        if (window != null) {
            window.setLayout(iA, -2);
        }
        DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding4 = this.c;
        if (dialogPrivacyAgreementBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPrivacyAgreementBinding4.exit.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrivacyAgreementDialog.p(this.f9852a, view);
            }
        });
        if (AppUtils.g()) {
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding5 = this.c;
            if (dialogPrivacyAgreementBinding5 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogPrivacyAgreementBinding5.line.setVisibility(0);
            DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding6 = this.c;
            if (dialogPrivacyAgreementBinding6 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogPrivacyAgreementBinding6.closeIv.setVisibility(8);
        }
        DialogPrivacyAgreementBinding dialogPrivacyAgreementBinding7 = this.c;
        if (dialogPrivacyAgreementBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogPrivacyAgreementBinding7.agree.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrivacyAgreementDialog.q(this.f9856a, view);
            }
        });
    }

    public final void r() {
        i();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyAgreementDialog(Context context, List<? extends a> privacyViews, Function0<kotlin.v> function0, Function0<kotlin.v> function1) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(privacyViews, "privacyViews");
        this.f9798a = function0;
        this.b = function1;
        this.f9799d = new ArrayList<>();
        this.f9800e = new ArrayList<>();
        this.f9801f = 500.0f;
        this.f9803h = -1;
        this.f9799d.addAll(privacyViews);
    }
}
