package cn.mucang.android.jiakaoyi.framework.bus;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.BusLiveData;
import com.amap.api.fence.GeoFence;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u000b\u001a\u0012\u0012\u0002\b\u0003 \f*\b\u0012\u0002\b\u0003\u0018\u00010\u00060\u0006\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0007J\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\r0\u0006\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0005H\u0007R/\u0010\u0003\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;", "", "()V", "busMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/lang/Class;", "Landroidx/lifecycle/BusLiveData;", "getBusMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "busMap$delegate", "Lkotlin/Lazy;", "bus", "kotlin.jvm.PlatformType", ExifInterface.GPS_DIRECTION_TRUE, "clazz", "post", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "with", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LiveBus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LiveBus f3428a = new LiveBus();
    private static final Lazy b = i.b(new Function0<ConcurrentHashMap<Class<?>, BusLiveData<?>>>() { // from class: cn.mucang.android.jiakaoyi.framework.bus.LiveBus$busMap$2
        @Override // kotlin.jvm.functions.Function0
        public final ConcurrentHashMap<Class<?>, BusLiveData<?>> invoke() {
            return new ConcurrentHashMap<>();
        }
    });

    private LiveBus() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> BusLiveData<?> a(Class<T> cls) {
        BusLiveData<?> busLiveDataPutIfAbsent;
        ConcurrentHashMap<Class<?>, BusLiveData<?>> concurrentHashMapB = b();
        BusLiveData<?> busLiveData = concurrentHashMapB.get(cls);
        if (busLiveData == null && (busLiveDataPutIfAbsent = concurrentHashMapB.putIfAbsent(cls, (busLiveData = new BusLiveData<>()))) != null) {
            busLiveData = busLiveDataPutIfAbsent;
        }
        return busLiveData;
    }

    private final ConcurrentHashMap<Class<?>, BusLiveData<?>> b() {
        return (ConcurrentHashMap) b.getValue();
    }

    public static final void c(Object event) {
        r.e(event, "event");
        d(event.getClass()).l(event);
    }

    public static final <T> BusLiveData<T> d(Class<T> clazz) {
        r.e(clazz, "clazz");
        BusLiveData<T> busLiveData = (BusLiveData<T>) f3428a.a(clazz);
        Objects.requireNonNull(busLiveData, "null cannot be cast to non-null type androidx.lifecycle.BusLiveData<T of cn.mucang.android.jiakaoyi.framework.bus.LiveBus.with>");
        return busLiveData;
    }
}
