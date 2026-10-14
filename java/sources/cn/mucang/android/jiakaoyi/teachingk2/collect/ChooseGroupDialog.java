package cn.mucang.android.jiakaoyi.teachingk2.collect;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.StepGroupModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.DialogChooseTeachGroupBinding;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.a0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/ChooseGroupDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;", "group", "", "onCheck", "Lkotlin/Function1;", "", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "groups", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogChooseTeachGroupBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ChooseGroupDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StepGroupModel f6483a;
    private final String b;
    private final Function1<String, kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DialogChooseTeachGroupBinding f6484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f6485e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChooseGroupDialog(Context context, StepGroupModel model, String str, Function1<? super String, kotlin.v> onCheck) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(model, "model");
        kotlin.jvm.internal.r.e(onCheck, "onCheck");
        this.f6483a = model;
        this.b = str;
        this.c = onCheck;
        this.f6485e = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ChooseGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ChooseGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding = this$0.f6484d;
        if (dialogChooseTeachGroupBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        this$0.c.invoke(dialogChooseTeachGroupBinding.groupTv.getText().toString());
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(final ChooseGroupDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Object[] array = this$0.f6485e.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        final String[] strArr = (String[]) array;
        final androidx.appcompat.widget.d0 d0Var = new androidx.appcompat.widget.d0(this$0.getContext());
        d0Var.l(new ArrayAdapter(this$0.getContext(), R.layout.item_select_group, strArr));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.setBackgroundDrawable(null);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.d
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                ChooseGroupDialog.h(this.f6494a, strArr, d0Var, adapterView, view2, i, j);
            }
        });
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ChooseGroupDialog this$0, String[] list, androidx.appcompat.widget.d0 pop, AdapterView adapterView, View view, int i, long j) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(list, "$list");
        kotlin.jvm.internal.r.e(pop, "$pop");
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding = this$0.f6484d;
        if (dialogChooseTeachGroupBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseTeachGroupBinding.groupTv.setText((CharSequence) kotlin.collections.k.B(list, i));
        pop.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBindingInflate = DialogChooseTeachGroupBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogChooseTeachGroupBindingInflate, "inflate(layoutInflater)");
        this.f6484d = dialogChooseTeachGroupBindingInflate;
        if (dialogChooseTeachGroupBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogChooseTeachGroupBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f6485e.addAll(this.f6483a.getGroupNames());
        this.f6485e.add("不限方案");
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.rpx_840), -2);
        }
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding = this.f6484d;
        if (dialogChooseTeachGroupBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseTeachGroupBinding.stepTv.setText(this.f6483a.getShowName());
        if (n0.f(this.b)) {
            DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding2 = this.f6484d;
            if (dialogChooseTeachGroupBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogChooseTeachGroupBinding2.groupTv.setText("不限方案");
        } else {
            DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding3 = this.f6484d;
            if (dialogChooseTeachGroupBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogChooseTeachGroupBinding3.groupTv.setText(this.b);
        }
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding4 = this.f6484d;
        if (dialogChooseTeachGroupBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseTeachGroupBinding4.cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseGroupDialog.e(this.f6486a, view);
            }
        });
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding5 = this.f6484d;
        if (dialogChooseTeachGroupBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogChooseTeachGroupBinding5.confirmTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseGroupDialog.f(this.f6482a, view);
            }
        });
        DialogChooseTeachGroupBinding dialogChooseTeachGroupBinding6 = this.f6484d;
        if (dialogChooseTeachGroupBinding6 != null) {
            dialogChooseTeachGroupBinding6.groupTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChooseGroupDialog.g(this.f6492a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
