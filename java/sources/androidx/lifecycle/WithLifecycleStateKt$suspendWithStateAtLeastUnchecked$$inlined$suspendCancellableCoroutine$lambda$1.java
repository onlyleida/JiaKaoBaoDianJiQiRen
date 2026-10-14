package androidx.lifecycle;

import com.amap.api.fence.GeoFence;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t¸\u0006\u0000"}, d2 = {"androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1", "Landroidx/lifecycle/o;", "Landroidx/lifecycle/r;", SocialConstants.PARAM_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lkotlin/v;", "b", "(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 1, 15})
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$$inlined$suspendCancellableCoroutine$lambda$1 implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.k f1478a;
    final /* synthetic */ Lifecycle b;
    final /* synthetic */ Lifecycle.State c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Function0 f1479d;

    @Override // androidx.lifecycle.o
    public void b(r source, Lifecycle.Event event) {
        Object objM139constructorimpl;
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        if (event != Lifecycle.Event.upTo(this.c)) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.b.c(this);
                kotlinx.coroutines.k kVar = this.f1478a;
                LifecycleDestroyedException lifecycleDestroyedException = new LifecycleDestroyedException();
                Result.Companion companion = Result.INSTANCE;
                kVar.resumeWith(Result.m139constructorimpl(kotlin.k.a(lifecycleDestroyedException)));
                return;
            }
            return;
        }
        this.b.c(this);
        kotlinx.coroutines.k kVar2 = this.f1478a;
        Function0 function0 = this.f1479d;
        try {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(function0.invoke());
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        kVar2.resumeWith(objM139constructorimpl);
    }
}
