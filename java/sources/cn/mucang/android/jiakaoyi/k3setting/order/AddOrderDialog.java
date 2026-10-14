package cn.mucang.android.jiakaoyi.k3setting.order;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightAssembleAddOrderDialogBinding;
import cn.mucang.android.jiakaoyi.k3setting.order.item.LightOrderItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0002J\u0012\u0010\u000f\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "onSelect", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "", "getOnSelect", "()Lkotlin/jvm/functions/Function1;", "setOnSelect", "(Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;", "dismiss", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "show", "manager", "Landroidx/fragment/app/FragmentManager;", "tag", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AddOrderDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LightAssembleAddOrderDialogBinding f4345a;
    private Function1<? super LightExamModel, kotlin.v> b;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4346a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f4346a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.android.jiakaoyi.k3setting.order.AddOrderDialog$initViews$adapter$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void s() {
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(LightViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ghtViewModel::class.java)");
        LightViewModel lightViewModel = (LightViewModel) j0VarA;
        final ?? r1 = new com.drakeet.multitype.f() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.AddOrderDialog$initViews$adapter$1
            {
                super(null, 0, null, 7, null);
                g(LightExamModel.class, new LightOrderItemBinder(2, new Function1<LightExamModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.AddOrderDialog$initViews$adapter$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(LightExamModel lightExamModel) {
                        invoke2(lightExamModel);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(LightExamModel it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        Function1<LightExamModel, kotlin.v> function1R = addOrderDialog.r();
                        if (function1R != null) {
                            function1R.invoke(it);
                        }
                        addOrderDialog.dismiss();
                    }
                }));
            }
        };
        LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding = this.f4345a;
        if (lightAssembleAddOrderDialogBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddOrderDialogBinding.recyclerView.setAdapter(r1);
        lightViewModel.p().h(getViewLifecycleOwner(), new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AddOrderDialog.t(r1, (List) obj);
            }
        });
        lightViewModel.b().h(getViewLifecycleOwner(), new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AddOrderDialog.u(this.f4393a, (LoadingState) obj);
            }
        });
        LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding2 = this.f4345a;
        if (lightAssembleAddOrderDialogBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        lightAssembleAddOrderDialogBinding2.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddOrderDialog.v(this.f4389a, view);
            }
        });
        lightViewModel.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AddOrderDialog$initViews$adapter$1 adapter, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(AddOrderDialog this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f4346a[loadingState.ordinal()];
        if (i == 1) {
            LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding = this$0.f4345a;
            if (lightAssembleAddOrderDialogBinding != null) {
                lightAssembleAddOrderDialogBinding.stateLayout.f();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (i != 2) {
            LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding2 = this$0.f4345a;
            if (lightAssembleAddOrderDialogBinding2 != null) {
                lightAssembleAddOrderDialogBinding2.stateLayout.c();
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding3 = this$0.f4345a;
        if (lightAssembleAddOrderDialogBinding3 != null) {
            lightAssembleAddOrderDialogBinding3.stateLayout.e();
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AddOrderDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // androidx.fragment.app.c
    public void dismiss() {
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBindingInflate = LightAssembleAddOrderDialogBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(lightAssembleAddOrderDialogBindingInflate, "inflate(inflater)");
        this.f4345a = lightAssembleAddOrderDialogBindingInflate;
        s();
        LightAssembleAddOrderDialogBinding lightAssembleAddOrderDialogBinding = this.f4345a;
        if (lightAssembleAddOrderDialogBinding != null) {
            return lightAssembleAddOrderDialogBinding.getRoot();
        }
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }

    public final Function1<LightExamModel, kotlin.v> r() {
        return this.b;
    }

    @Override // androidx.fragment.app.c
    public void show(FragmentManager manager, String tag) {
        kotlin.jvm.internal.r.e(manager, "manager");
        try {
            super.show(manager, tag);
        } catch (Exception unused) {
            androidx.fragment.app.u uVarM = manager.m();
            kotlin.jvm.internal.r.d(uVarM, "manager.beginTransaction()");
            uVarM.e(this, tag);
            uVarM.j();
        }
    }

    public final void z(Function1<? super LightExamModel, kotlin.v> function1) {
        this.b = function1;
    }
}
