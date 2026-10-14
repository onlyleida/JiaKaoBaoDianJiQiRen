package androidx.fragment.app;

import androidx.lifecycle.n0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/j0;", "VM", "Landroidx/lifecycle/n0;", "invoke", "()Landroidx/lifecycle/n0;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
public final class FragmentViewModelLazyKt$activityViewModels$1 extends Lambda implements Function0<n0> {
    final /* synthetic */ Fragment $this_activityViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$activityViewModels$1(Fragment fragment) {
        super(0);
        this.$this_activityViewModels = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final n0 invoke() {
        d dVarRequireActivity = this.$this_activityViewModels.requireActivity();
        kotlin.jvm.internal.r.b(dVarRequireActivity, "requireActivity()");
        n0 viewModelStore = dVarRequireActivity.getViewModelStore();
        kotlin.jvm.internal.r.b(viewModelStore, "requireActivity().viewModelStore");
        return viewModelStore;
    }
}
