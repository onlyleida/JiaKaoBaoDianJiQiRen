package f.a.a.a.p009n.dialog;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.permission.model.PermissionGuideModel;
import cn.mucang.android.core.permission.mvp.PermissionGuideItemView;
import cn.mucang.android.core.permission.mvp.PermissionGuidePresenter;
import cn.mucang.android.core.permission.mvp.PermissionItemModel;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.framework.core.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: f.a.a.a.n.d.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "()V", "dismissListener", "Lcn/mucang/android/core/permission/callbacks/PermissionsDialogCallback;", "model", "Lcn/mucang/android/core/permission/model/PermissionGuideModel;", "initView", "", "view", "Landroid/view/View;", "onCancel", "dialog", "Landroid/content/DialogInterface;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDismiss", "Companion", "PermissionAdapter", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionGuideDialog extends SafeDialogFragment {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PermissionGuideModel f14475a;
    private f.a.a.a.p009n.c.b b;

    /* JADX INFO: renamed from: f.a.a.a.n.d.e$a */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog$Companion;", "", "()V", "showDialog", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "model", "Lcn/mucang/android/core/permission/model/PermissionGuideModel;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/core/permission/callbacks/PermissionsDialogCallback;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(FragmentManager fragmentManager, PermissionGuideModel model, f.a.a.a.p009n.c.b listener) {
            r.e(fragmentManager, "fragmentManager");
            r.e(model, "model");
            r.e(listener, "listener");
            PermissionGuideDialog permissionGuideDialog = new PermissionGuideDialog();
            permissionGuideDialog.b = listener;
            permissionGuideDialog.f14475a = model;
            permissionGuideDialog.setStyle(1, R.style.core__full_screen_dialog);
            permissionGuideDialog.show(fragmentManager, (String) null);
        }
    }

    /* JADX INFO: renamed from: f.a.a.a.n.d.e$b */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\"\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\tH\u0014¨\u0006\r"}, d2 = {"Lcn/mucang/android/core/permission/dialog/PermissionGuideDialog$PermissionAdapter;", "Lcn/mucang/android/ui/framework/adapter/recyclerview/BaseRecycleAdapter;", "Lcn/mucang/android/core/permission/mvp/PermissionItemModel;", "()V", "newPresenter", "Lcn/mucang/android/ui/framework/mvp/BasePresenter;", "baseView", "Lcn/mucang/android/ui/framework/mvp/BaseView;", "type", "", "newView", "parent", "Landroid/view/ViewGroup;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends f.a.a.e.a.b.c.a<PermissionItemModel> {
        @Override // f.a.a.e.a.b.c.a
        protected cn.mucang.android.ui.framework.mvp.a<?, ?> e(cn.mucang.android.ui.framework.mvp.b bVar, int i) {
            Objects.requireNonNull(bVar, "null cannot be cast to non-null type cn.mucang.android.core.permission.mvp.PermissionGuideItemView");
            return new PermissionGuidePresenter((PermissionGuideItemView) bVar);
        }

        @Override // f.a.a.e.a.b.c.a
        protected cn.mucang.android.ui.framework.mvp.b f(ViewGroup viewGroup, int i) {
            PermissionGuideItemView permissionGuideItemViewB = PermissionGuideItemView.b(viewGroup);
            r.d(permissionGuideItemViewB, "newInstance(parent)");
            return permissionGuideItemViewB;
        }
    }

    public static final void C(FragmentManager fragmentManager, PermissionGuideModel permissionGuideModel, f.a.a.a.p009n.c.b bVar) {
        c.a(fragmentManager, permissionGuideModel, bVar);
    }

    private final void t(View view) {
        TextView textView = (TextView) view.findViewById(R.id.permission_title);
        TextView textView2 = (TextView) view.findViewById(R.id.permission_desc);
        TextView textView3 = (TextView) view.findViewById(R.id.permission_btn);
        View viewFindViewById = view.findViewById(R.id.permission_close);
        TextView textView4 = (TextView) view.findViewById(R.id.tv_user_agreement);
        TextView textView5 = (TextView) view.findViewById(R.id.tv_privacy_agreement);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.permission_recyclerview);
        View viewFindViewById2 = view.findViewById(R.id.layout_agreement);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        PermissionGuideModel permissionGuideModel = this.f14475a;
        if (permissionGuideModel != null) {
            textView.setText(permissionGuideModel.getTitle());
            textView3.setText(permissionGuideModel.getBottomDesc());
            if (n0.e(permissionGuideModel.getDesc())) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(permissionGuideModel.getDesc());
            }
            if (permissionGuideModel.isShowClose()) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(8);
            }
            if (g.d(permissionGuideModel.getList())) {
                b bVar = new b();
                bVar.c(permissionGuideModel.getList());
                recyclerView.setAdapter(bVar);
            }
            if (permissionGuideModel.isShowAgreement()) {
                viewFindViewById2.setVisibility(0);
            } else {
                viewFindViewById2.setVisibility(8);
                recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), recyclerView.getPaddingBottom() + s0.a(15.0f));
            }
        }
        textView4.setOnClickListener(new View.OnClickListener() { // from class: f.a.a.a.n.d.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionGuideDialog.u(this.f14473a, view2);
            }
        });
        textView5.setOnClickListener(new View.OnClickListener() { // from class: f.a.a.a.n.d.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionGuideDialog.v(this.f14474a, view2);
            }
        });
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: f.a.a.a.n.d.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionGuideDialog.w(this.f14472a, view2);
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: f.a.a.a.n.d.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionGuideDialog.x(this.f14471a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(PermissionGuideDialog this$0, View view) {
        r.e(this$0, "this$0");
        f.a.a.f.a.a(this$0.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(PermissionGuideDialog this$0, View view) {
        r.e(this$0, "this$0");
        f.a.a.f.a.b(this$0.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(PermissionGuideDialog this$0, View view) {
        r.e(this$0, "this$0");
        f.a.a.a.p009n.c.b bVar = this$0.b;
        if (bVar != null) {
            bVar.a(false);
        }
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(PermissionGuideDialog this$0, View view) {
        r.e(this$0, "this$0");
        f.a.a.a.p009n.c.b bVar = this$0.b;
        if (bVar != null) {
            bVar.a(true);
        }
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        r.e(dialog, "dialog");
        super.onCancel(dialog);
        f.a.a.a.p009n.c.b bVar = this.b;
        if (bVar == null) {
            return;
        }
        bVar.a(false);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        View view = inflater.inflate(R.layout.core__permission_guide, container);
        if (view.getContext().getResources().getConfiguration().orientation == 2) {
            ((LinearLayout) view.findViewById(R.id.permission_bg)).getLayoutParams().width = s0.a(400.0f);
        }
        r.d(view, "view");
        t(view);
        return view;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        r.e(dialog, "dialog");
        super.onDismiss(dialog);
        this.b = null;
    }
}
