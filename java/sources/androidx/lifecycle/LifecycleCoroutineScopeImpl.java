package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import com.amap.api.fence.GeoFence;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.w0;
import kotlinx.coroutines.y1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0016\u001a\u00020\u00118\u0010@\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/m;", "Landroidx/lifecycle/o;", "Lkotlin/v;", "i", "()V", "Landroidx/lifecycle/r;", SocialConstants.PARAM_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", GeoFence.BUNDLE_KEY_FENCESTATUS, "b", "(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", ExifInterface.LONGITUDE_EAST, "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Landroidx/lifecycle/Lifecycle;", "a", "Landroidx/lifecycle/Lifecycle;", "f", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 1, 15})
public final class LifecycleCoroutineScopeImpl extends m implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lifecycle lifecycle;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final CoroutineContext coroutineContext;

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, CoroutineContext coroutineContext) {
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        kotlin.jvm.internal.r.e(coroutineContext, "coroutineContext");
        this.lifecycle = lifecycle;
        this.coroutineContext = coroutineContext;
        if (getLifecycle().b() == Lifecycle.State.DESTROYED) {
            y1.d(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // kotlinx.coroutines.i0
    /* JADX INFO: renamed from: E, reason: from getter */
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.lifecycle.o
    public void b(r source, Lifecycle.Event event) {
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(event, "event");
        if (getLifecycle().b().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            getLifecycle().c(this);
            y1.d(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.m
    /* JADX INFO: renamed from: f, reason: from getter */
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    public final void i() {
        kotlinx.coroutines.g.b(this, w0.c().B(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }
}
