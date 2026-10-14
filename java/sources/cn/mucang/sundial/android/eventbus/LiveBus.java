package cn.mucang.sundial.android.eventbus;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.i0;
import com.amap.api.fence.GeoFence;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcn/mucang/sundial/android/eventbus/LiveBus;", "", "<init>", "()V", "Companion", "base_release"}, k = 1, mv = {1, 1, 15})
public final class LiveBus {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy busMap$delegate = i.b(new Function0<ConcurrentHashMap<Class<?>, i0<?>>>() { // from class: cn.mucang.sundial.android.eventbus.LiveBus$Companion$busMap$2
        @Override // kotlin.jvm.functions.Function0
        public final ConcurrentHashMap<Class<?>, i0<?>> invoke() {
            return new ConcurrentHashMap<>();
        }
    });

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0015J3\u0010\u0007\u001a\u0012\u0012\u0002\b\u0003 \u0006*\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0005\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0003¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0007¢\u0006\u0004\b\t\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\rR7\u0010\u0016\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u000f8B@\u0003X\u0083\u0084\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/Class;", "clazz", "Landroidx/lifecycle/i0;", "kotlin.jvm.PlatformType", "bus", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "with", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lkotlin/v;", "post", "(Ljava/lang/Object;)V", "immediatelyPost", "Ljava/util/concurrent/ConcurrentHashMap;", "busMap$delegate", "Lkotlin/f;", "getBusMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "getBusMap$annotations", "()V", "busMap", "<init>", "base_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final <T> i0<?> bus(Class<T> clazz) {
            i0<?> i0VarPutIfAbsent;
            ConcurrentHashMap<Class<?>, i0<?>> busMap = getBusMap();
            i0<?> i0Var = busMap.get(clazz);
            if (i0Var == null && (i0VarPutIfAbsent = busMap.putIfAbsent(clazz, (i0Var = new i0<>()))) != null) {
                i0Var = i0VarPutIfAbsent;
            }
            return i0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ConcurrentHashMap<Class<?>, i0<?>> getBusMap() {
            Lazy lazy = LiveBus.busMap$delegate;
            Companion companion = LiveBus.INSTANCE;
            return (ConcurrentHashMap) lazy.getValue();
        }

        private static /* synthetic */ void getBusMap$annotations() {
        }

        public final void immediatelyPost(Object event) {
            r.e(event, "event");
            with(event.getClass()).o(event);
        }

        public final void post(Object event) {
            r.e(event, "event");
            with(event.getClass()).l(event);
        }

        public final <T> i0<T> with(Class<T> clazz) {
            r.e(clazz, "clazz");
            i0<T> i0Var = (i0<T>) bus(clazz);
            Objects.requireNonNull(i0Var, "null cannot be cast to non-null type androidx.lifecycle.TtLiveData<T>");
            return i0Var;
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    private LiveBus() {
    }

    private static final <T> i0<?> bus(Class<T> cls) {
        return INSTANCE.bus(cls);
    }

    private static final ConcurrentHashMap<Class<?>, i0<?>> getBusMap() {
        return INSTANCE.getBusMap();
    }

    public static final void immediatelyPost(Object obj) {
        INSTANCE.immediatelyPost(obj);
    }

    public static final void post(Object obj) {
        INSTANCE.post(obj);
    }

    public static final <T> i0<T> with(Class<T> cls) {
        return INSTANCE.with(cls);
    }
}
