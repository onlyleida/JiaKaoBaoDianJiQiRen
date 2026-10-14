package cn.mucang.android.jiakaoyi.teachingk2.res.boundary;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogSwitchSiteBinding;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\u0010\u000bJ\b\u0010\u0015\u001a\u00020\nH\u0016J\u0012\u0010\u0016\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\b\u0010\u0019\u001a\u00020\nH\u0003R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0014*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/SwitchSiteDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "title", "", SocialConstants.PARAM_APP_DESC, "onSwitch", "Lkotlin/Function1;", "", "", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "getDesc", "()Ljava/lang/String;", "mainLaunch", "Lkotlinx/coroutines/Job;", "getTitle", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchSiteBinding;", "warningText", "kotlin.jvm.PlatformType", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setData", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchSiteDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7563a;
    private final String b;
    private final Function1<Boolean, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DialogSwitchSiteBinding f7565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private t1 f7566f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SwitchSiteDialog(Context context, String title, String desc, Function1<? super Boolean, v> onSwitch) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(title, "title");
        r.e(desc, "desc");
        r.e(onSwitch, "onSwitch");
        this.f7563a = title;
        this.b = desc;
        this.c = onSwitch;
        this.f7564d = k0.a(R.string.teachbase_please_warning);
    }

    @SuppressLint({"SetTextI18n"})
    private final void d() {
        DialogSwitchSiteBinding dialogSwitchSiteBinding = this.f7565e;
        if (dialogSwitchSiteBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchSiteBinding.titleTv.setText(r.m(this.f7564d, this.f7563a));
        DialogSwitchSiteBinding dialogSwitchSiteBinding2 = this.f7565e;
        if (dialogSwitchSiteBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchSiteBinding2.warningTv.setText(this.f7564d);
        DialogSwitchSiteBinding dialogSwitchSiteBinding3 = this.f7565e;
        if (dialogSwitchSiteBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchSiteBinding3.warningTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.SwitchSiteDialog$setData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(View view) {
                invoke2(view);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                r.e(it, "it");
                this.this$0.c.invoke(Boolean.FALSE);
                this.this$0.dismiss();
            }
        }, 3, null));
        DialogSwitchSiteBinding dialogSwitchSiteBinding4 = this.f7565e;
        if (dialogSwitchSiteBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchSiteBinding4.switchTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.boundary.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchSiteDialog.e(this.f7577a, view);
            }
        });
        DialogSwitchSiteBinding dialogSwitchSiteBinding5 = this.f7565e;
        if (dialogSwitchSiteBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogSwitchSiteBinding5.descTv.setText(this.b);
        this.f7566f = kotlinx.coroutines.g.b(j0.b(), null, null, new SwitchSiteDialog$setData$3(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SwitchSiteDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.c.invoke(Boolean.TRUE);
        this$0.dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e2) {
            t.d("TAG", e2.getMessage());
        }
        t1 t1Var = this.f7566f;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        } else {
            r.u("mainLaunch");
            throw null;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogSwitchSiteBinding dialogSwitchSiteBindingInflate = DialogSwitchSiteBinding.inflate(getLayoutInflater());
        r.d(dialogSwitchSiteBindingInflate, "inflate(layoutInflater)");
        this.f7565e = dialogSwitchSiteBindingInflate;
        if (dialogSwitchSiteBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSwitchSiteBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dialog_default_width), -2);
        }
        d();
    }
}
