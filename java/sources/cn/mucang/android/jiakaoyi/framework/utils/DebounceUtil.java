package cn.mucang.android.jiakaoyi.framework.utils;

import com.tencent.tauth.AuthActivity;
import java.util.HashMap;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/DebounceUtil;", "", "()V", "bounceMap", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "debounce", "", "time", "", AuthActivity.ACTION_KEY, "Ljava/lang/Runnable;", "key", "debounceWithBool", "", "filterWithTime", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebounceUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DebounceUtil f3633a = new DebounceUtil();
    private static final HashMap<String, Long> b = new HashMap<>();

    private DebounceUtil() {
    }

    private final boolean c(String str, int i) {
        boolean z;
        synchronized (str) {
            HashMap<String, Long> map = b;
            Long l = map.get(str);
            if (l == null) {
                l = 0L;
            }
            long jLongValue = l.longValue();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - jLongValue > i) {
                map.put(str, Long.valueOf(jCurrentTimeMillis));
                z = true;
            } else {
                z = false;
            }
            kotlin.v vVar = kotlin.v.f15822a;
        }
        return z;
    }

    public final void a(int i, Runnable action) {
        kotlin.jvm.internal.r.e(action, "action");
        b("default", i, action);
    }

    public final void b(String key, int i, Runnable action) {
        kotlin.jvm.internal.r.e(key, "key");
        kotlin.jvm.internal.r.e(action, "action");
        if (c(key, i)) {
            action.run();
        }
    }
}
