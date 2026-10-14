package cn.mucang.sundial.library.activity;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.n0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/j0;", "VM", "Landroidx/lifecycle/n0;", "invoke", "()Landroidx/lifecycle/n0;", "androidx/activity/ActivityViewModelLazyKt$viewModels$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
public final class BaseActivity$vm$$inlined$viewModels$2 extends Lambda implements Function0<n0> {
    final /* synthetic */ ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseActivity$vm$$inlined$viewModels$2(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final n0 invoke() {
        n0 viewModelStore = this.$this_viewModels.getViewModelStore();
        r.d(viewModelStore, "viewModelStore");
        return viewModelStore;
    }
}
