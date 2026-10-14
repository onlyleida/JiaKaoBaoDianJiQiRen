package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogSwitchStudentBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSwitchStudentBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.login.UserSwitcher;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.SwitchLoginData;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSwitchStudentBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "StudentItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchStudentDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogSwitchStudentBinding f7387a;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.j0$a */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog$StudentItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSwitchStudentBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/SwitchStudentDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<XyUserModel, ItemSwitchStudentBinding> {
        final /* synthetic */ SwitchStudentDialog b;

        public a(SwitchStudentDialog this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(XyUserModel item, SwitchStudentDialog this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            UserSwitcher.i(item);
            DialogExtensionKt.b(this$0);
            RobotAccount.p("SwitchStudentFunc", null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(XyUserModel item, SwitchStudentDialog this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            UserSwitcher.i(item);
            DialogSwitchStudentBinding dialogSwitchStudentBinding = this$0.f7387a;
            if (dialogSwitchStudentBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            RecyclerView.Adapter adapter = dialogSwitchStudentBinding.studentRv.getAdapter();
            if (adapter == null) {
                return;
            }
            adapter.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(SwitchStudentDialog this$0, XyUserModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            DialogExtensionKt.b(this$0);
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            LoginManager.j(activityI, LoginType.SWITCH_LOGIN, new SwitchLoginData(item.getXyToken()), null, 8, null);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"NotifyDataSetChanged"})
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemSwitchStudentBinding> holder, final XyUserModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemSwitchStudentBinding) holder.getViewBinding()).avatarIv.d(item.getAvatar(), item.getGender() == 1 ? R.drawable.icon_default_male : R.drawable.icon_default_female);
            ((ItemSwitchStudentBinding) holder.getViewBinding()).nameTv.setText(item.getName());
            if (kotlin.jvm.internal.r.a(item.getMucangId(), RobotAccount.j())) {
                ((ItemSwitchStudentBinding) holder.getViewBinding()).tipsTv.setVisibility(0);
                ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setText(k0.a(R.string.teachbase_sign_out));
                ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setTextColor(-1);
                ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setBackgroundResource(R.drawable.shape_008aff_r100);
                TextView textView = ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv;
                final SwitchStudentDialog switchStudentDialog = this.b;
                textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.e0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SwitchStudentDialog.a.r(item, switchStudentDialog, view);
                    }
                });
                ((ItemSwitchStudentBinding) holder.getViewBinding()).getRoot().setOnClickListener(null);
                return;
            }
            ((ItemSwitchStudentBinding) holder.getViewBinding()).tipsTv.setVisibility(8);
            ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setText(k0.a(R.string.teachbase_sign_out));
            ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setTextColor(-1);
            ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv.setBackgroundResource(R.drawable.shape_008aff_r100);
            TextView textView2 = ((ItemSwitchStudentBinding) holder.getViewBinding()).funcTv;
            final SwitchStudentDialog switchStudentDialog2 = this.b;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SwitchStudentDialog.a.s(item, switchStudentDialog2, view);
                }
            });
            ConstraintLayout root = ((ItemSwitchStudentBinding) holder.getViewBinding()).getRoot();
            final SwitchStudentDialog switchStudentDialog3 = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SwitchStudentDialog.a.t(switchStudentDialog3, item, view);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchStudentDialog(Context context) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SwitchStudentDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(SwitchStudentDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
        RobotAccount.p("SwitchStudentLogin", null, 2, null);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogSwitchStudentBinding dialogSwitchStudentBindingInflate = DialogSwitchStudentBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogSwitchStudentBindingInflate, "inflate(layoutInflater)");
        this.f7387a = dialogSwitchStudentBindingInflate;
        if (dialogSwitchStudentBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSwitchStudentBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        DialogSwitchStudentBinding dialogSwitchStudentBinding = this.f7387a;
        if (dialogSwitchStudentBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSwitchStudentBinding.studentRv.setLayoutManager(new LinearLayoutManager(getContext()));
        DialogSwitchStudentBinding dialogSwitchStudentBinding2 = this.f7387a;
        if (dialogSwitchStudentBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogSwitchStudentBinding2.studentRv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(XyUserModel.class, new a(this));
        List<? extends Object> listJ = (List) UserSwitcher.l().e();
        if (listJ == null) {
            listJ = kotlin.collections.u.j();
        }
        fVar.i(listJ);
        kotlin.v vVar = kotlin.v.f15822a;
        recyclerView.setAdapter(fVar);
        DialogSwitchStudentBinding dialogSwitchStudentBinding3 = this.f7387a;
        if (dialogSwitchStudentBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSwitchStudentBinding3.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SwitchStudentDialog.d(this.f7369a, view);
            }
        });
        DialogSwitchStudentBinding dialogSwitchStudentBinding4 = this.f7387a;
        if (dialogSwitchStudentBinding4 != null) {
            dialogSwitchStudentBinding4.loginTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.ui.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SwitchStudentDialog.e(this.f7367a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
