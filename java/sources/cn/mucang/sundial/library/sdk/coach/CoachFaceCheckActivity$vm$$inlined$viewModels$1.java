package cn.mucang.sundial.library.sdk.coach;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.m0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/j0;", "VM", "Landroidx/lifecycle/m0$b;", "invoke", "()Landroidx/lifecycle/m0$b;", "androidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
public final class CoachFaceCheckActivity$vm$$inlined$viewModels$1 extends Lambda implements Function0<m0.b> {
    final /* synthetic */ ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoachFaceCheckActivity$vm$$inlined$viewModels$1(ComponentActivity componentActivity) {
        super(0);
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final m0.b invoke() {
        return this.$this_viewModels.getDefaultViewModelProviderFactory();
    }
}
