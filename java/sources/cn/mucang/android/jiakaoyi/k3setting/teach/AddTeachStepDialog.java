package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.DialogAddTeachStepBinding;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J$\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;", "Lcn/mucang/android/core/permission/dialog/SafeDialogFragment;", "examSiteId", "", "successCallback", "Lkotlin/Function0;", "", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "getExamSiteId", "()Ljava/lang/String;", "popupWindow", "Landroid/widget/PopupWindow;", "selectStep", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getSuccessCallback", "()Lkotlin/jvm/functions/Function0;", "closeInputMethod", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/DialogAddTeachStepBinding;", "initSpinner", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AddTeachStepDialog extends SafeDialogFragment {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4656e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4657a;
    private final Function0<kotlin.v> b;
    private PopupWindow c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Step f4658d;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$Companion;", "", "()V", "show", "Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;", "fm", "Landroidx/fragment/app/FragmentManager;", "examSiteId", "", "successCallback", "Lkotlin/Function0;", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final AddTeachStepDialog a(FragmentManager fm, String examSiteId, Function0<kotlin.v> successCallback) {
            kotlin.jvm.internal.r.e(fm, "fm");
            kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
            kotlin.jvm.internal.r.e(successCallback, "successCallback");
            AddTeachStepDialog addTeachStepDialog = new AddTeachStepDialog(examSiteId, successCallback);
            addTeachStepDialog.show(fm, "AddTeachStepDialog");
            return addTeachStepDialog;
        }
    }

    public AddTeachStepDialog(String examSiteId, Function0<kotlin.v> successCallback) {
        kotlin.jvm.internal.r.e(examSiteId, "examSiteId");
        kotlin.jvm.internal.r.e(successCallback, "successCallback");
        this.f4657a = examSiteId;
        this.b = successCallback;
        this.f4658d = Step.K3_ZhiXian;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(AddTeachStepDialog this$0, DialogAddTeachStepBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        PopupWindow popupWindow = this$0.c;
        boolean z = false;
        if (popupWindow != null && popupWindow.isShowing()) {
            z = true;
        }
        if (z) {
            PopupWindow popupWindow2 = this$0.c;
            if (popupWindow2 == null) {
                return;
            }
            popupWindow2.dismiss();
            return;
        }
        this$0.s(viewBinding);
        PopupWindow popupWindow3 = this$0.c;
        if (popupWindow3 != null) {
            popupWindow3.showAsDropDown(viewBinding.spinnerStepLayout);
        }
        PopupWindow popupWindow4 = this$0.c;
        if (popupWindow4 != null) {
            popupWindow4.update(viewBinding.spinnerStepLayout.getWidth(), -2);
        }
        viewBinding.imgMore.setRotation(180.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(AddTeachStepDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(AddTeachStepDialog this$0, DialogAddTeachStepBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        Context contextRequireContext = this$0.requireContext();
        kotlin.jvm.internal.r.d(contextRequireContext, "requireContext()");
        JLoadingDialog jLoadingDialog = new JLoadingDialog(contextRequireContext);
        jLoadingDialog.show();
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this$0), w0.b(), null, new AddTeachStepDialog$onCreateView$3$1(this$0, viewBinding.teachRemark.getText().toString(), jLoadingDialog, null), 2, null);
    }

    private final void s(DialogAddTeachStepBinding dialogAddTeachStepBinding) {
        Context context = getContext();
        InputMethodManager inputMethodManager = (InputMethodManager) (context == null ? null : context.getSystemService("input_method"));
        kotlin.jvm.internal.r.c(inputMethodManager);
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(dialogAddTeachStepBinding.teachRemark.getWindowToken(), 2);
        }
    }

    private final void v(final DialogAddTeachStepBinding dialogAddTeachStepBinding) {
        if (getContext() == null) {
            return;
        }
        PopupWindow popupWindow = this.c;
        if (popupWindow != null && popupWindow.isShowing()) {
            PopupWindow popupWindow2 = this.c;
            if (popupWindow2 != null) {
                popupWindow2.dismiss();
            }
            this.c = null;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.popup_dialog_layout, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        Drawable drawableF = androidx.core.a.a.f(requireContext(), R.drawable.shape_e0e0e0_divider);
        Resources resources = getResources();
        int i = R.dimen.dp_10;
        recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, drawableF, (int) resources.getDimension(i), (int) getResources().getDimension(i)));
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(Step.class, new StepSelectItemBinder(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.c
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AddTeachStepDialog.w(this.f4671a, dialogAddTeachStepBinding, (Step) obj);
            }
        }));
        List<Step> listD = StepGetter.d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listD) {
            int i2 = ((Step) obj).type;
            if ((i2 == Step.K3_QiBu.type || i2 == Step.K3_ShangChe.type) ? false : true) {
                arrayList.add(obj);
            }
        }
        fVar.i(arrayList);
        kotlin.v vVar = kotlin.v.f15822a;
        recyclerView.setAdapter(fVar);
        PopupWindow popupWindow3 = new PopupWindow(viewInflate, dialogAddTeachStepBinding.spinnerStepLayout.getWidth(), -2);
        this.c = popupWindow3;
        popupWindow3.setOutsideTouchable(true);
        PopupWindow popupWindow4 = this.c;
        if (popupWindow4 != null) {
            popupWindow4.setFocusable(true);
        }
        PopupWindow popupWindow5 = this.c;
        if (popupWindow5 != null) {
            popupWindow5.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#55000000")));
        }
        PopupWindow popupWindow6 = this.c;
        if (popupWindow6 == null) {
            return;
        }
        popupWindow6.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.b
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                AddTeachStepDialog.x(dialogAddTeachStepBinding);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(AddTeachStepDialog this$0, DialogAddTeachStepBinding viewBinding, Step step) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.d(step, "step");
        this$0.f4658d = step;
        viewBinding.tvStepName.setText(step.zhStepName);
        PopupWindow popupWindow = this$0.c;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(DialogAddTeachStepBinding viewBinding) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        viewBinding.imgMore.setRotation(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        final DialogAddTeachStepBinding dialogAddTeachStepBindingInflate = DialogAddTeachStepBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(dialogAddTeachStepBindingInflate, "inflate(inflater)");
        dialogAddTeachStepBindingInflate.spinnerStepLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddTeachStepDialog.D(this.f4672a, dialogAddTeachStepBindingInflate, view);
            }
        });
        dialogAddTeachStepBindingInflate.tvStepName.setText(this.f4658d.zhStepName);
        v(dialogAddTeachStepBindingInflate);
        dialogAddTeachStepBindingInflate.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddTeachStepDialog.E(this.f4669a, view);
            }
        });
        dialogAddTeachStepBindingInflate.addTeachStepTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddTeachStepDialog.F(this.f4673a, dialogAddTeachStepBindingInflate, view);
            }
        });
        FrameLayout root = dialogAddTeachStepBindingInflate.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.root");
        return root;
    }

    /* JADX INFO: renamed from: t, reason: from getter */
    public final String getF4657a() {
        return this.f4657a;
    }

    public final Function0<kotlin.v> u() {
        return this.b;
    }
}
