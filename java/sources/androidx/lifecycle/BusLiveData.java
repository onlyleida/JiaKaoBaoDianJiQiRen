package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: androidx.lifecycle.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0003J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006H\u0016J\u0018\u0010\r\u001a\u00020\t2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0014\u0010\u000f\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006J\u0018\u0010\u0010\u001a\u00020\t2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006H\u0016R,\u0010\u0004\u001a \u0012\f\u0012\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006\u0012\u000e\u0012\f0\u0007R\b\u0012\u0004\u0012\u00028\u00000\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/BusLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MutableLiveData;", "()V", "wrappers", "", "Landroidx/lifecycle/Observer;", "Landroidx/lifecycle/BusLiveData$BusWrapper;", "observe", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "observeForever", "observeSticky", "observeStickyForever", "removeObserver", "BusWrapper", "DefaultWrapper", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class BusLiveData<T> extends z<T> {
    private final Map<a0<? super T>, BusLiveData<T>.a> l = new LinkedHashMap();

    /* JADX INFO: renamed from: androidx.lifecycle.c$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b¦\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0001¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0019\u0010\u0002\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0001¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/lifecycle/BusLiveData$BusWrapper;", "Landroidx/lifecycle/Observer;", "observer", "(Landroidx/lifecycle/BusLiveData;Landroidx/lifecycle/Observer;)V", "lastVersion", "", "getLastVersion", "()I", "setLastVersion", "(I)V", "getObserver", "()Landroidx/lifecycle/Observer;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public abstract class a implements a0<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0<? super T> f1484a;
        private int b;
        final /* synthetic */ BusLiveData<T> c;

        public a(BusLiveData this$0, a0<? super T> observer) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(observer, "observer");
            this.c = this$0;
            this.f1484a = observer;
            this.b = this$0.f();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getB() {
            return this.b;
        }

        public final a0<? super T> b() {
            return this.f1484a;
        }

        public final void c(int i) {
            this.b = i;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.c$b */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/BusLiveData$DefaultWrapper;", "Landroidx/lifecycle/BusLiveData$BusWrapper;", "Landroidx/lifecycle/BusLiveData;", "observer", "Landroidx/lifecycle/Observer;", "(Landroidx/lifecycle/BusLiveData;Landroidx/lifecycle/Observer;)V", "onChanged", "", "t", "(Ljava/lang/Object;)V", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends BusLiveData<T>.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ BusLiveData<T> f1485d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BusLiveData this$0, a0<? super T> observer) {
            super(this$0, observer);
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(observer, "observer");
            this.f1485d = this$0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.a0
        public void onChanged(T t) {
            if (getB() >= this.f1485d.f()) {
                return;
            }
            c(this.f1485d.f());
            b().onChanged(t);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void h(r owner, a0<? super T> observer) {
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(observer, "observer");
        if (this.l.get(observer) != null) {
            return;
        }
        b bVar = new b(this, observer);
        this.l.put(observer, bVar);
        super.h(owner, bVar);
    }

    @Override // androidx.lifecycle.LiveData
    public void i(a0<? super T> observer) {
        kotlin.jvm.internal.r.e(observer, "observer");
        if (this.l.get(observer) != null) {
            return;
        }
        b bVar = new b(this, observer);
        this.l.put(observer, bVar);
        super.i(bVar);
    }

    @Override // androidx.lifecycle.LiveData
    public void m(a0<? super T> observer) {
        kotlin.jvm.internal.r.e(observer, "observer");
        BusLiveData<T>.a aVar = this.l.get(observer);
        if (aVar != null) {
            super.m(aVar);
            this.l.remove(observer);
            return;
        }
        for (Map.Entry<a0<? super T>, BusLiveData<T>.a> entry : this.l.entrySet()) {
            if (kotlin.jvm.internal.r.a(entry.getValue(), observer)) {
                this.l.remove(entry.getKey());
                break;
            }
        }
        super.m(observer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void p(r owner, a0<T> observer) {
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(observer, "observer");
        super.h(owner, observer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q(a0<T> observer) {
        kotlin.jvm.internal.r.e(observer, "observer");
        super.i(observer);
    }
}
