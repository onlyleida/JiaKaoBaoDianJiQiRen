package cn.mucang.android.jiakaoyi.framework.utils;

import com.mobile.auth.gatewayauth.Constant;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\tj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007`\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper;", "", "()V", "KEY_TRAFFIC", "", "PREF_NAME", "lastTime", "", "otherTraffic", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$Counter;", "Lkotlin/collections/HashMap;", "recentMap", Constant.START_TIME, "getCounter", "key", Constant.PROTOCOL_WEBVIEW_NAME, "init", "", "Counter", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrafficHelper {
    private static long b;
    private static long c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrafficHelper f3594a = new TrafficHelper();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, Long> f3595d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final HashMap<String, a> f3596e = new HashMap<>();

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/TrafficHelper$Counter;", "", "key", "", Constant.PROTOCOL_WEBVIEW_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "getKey$framework_release", "()Ljava/lang/String;", "getName$framework_release", "sizer", "Ljava/util/concurrent/atomic/AtomicLong;", "getSizer$framework_release", "()Ljava/util/concurrent/atomic/AtomicLong;", "increase", "", "size", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3597a;
        private final AtomicLong b;

        public a(String key, String name) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(name, "name");
            this.f3597a = name;
            this.b = new AtomicLong();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF3597a() {
            return this.f3597a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final AtomicLong getB() {
            return this.b;
        }

        public final void c(long j) {
            this.b.getAndAdd(j);
        }
    }

    private TrafficHelper() {
    }

    public static final a g(String key, String name) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(name, "name");
        HashMap<String, a> map = f3596e;
        a aVar = map.get(key);
        if (aVar == null) {
            aVar = new a(key, name);
            map.put(key, aVar);
        }
        return aVar;
    }

    public final void h() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), w0.b(), null, new TrafficHelper$init$1(null), 2, null);
    }
}
