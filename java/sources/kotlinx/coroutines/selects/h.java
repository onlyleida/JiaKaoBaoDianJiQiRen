package kotlinx.coroutines.selects;

import com.mobile.auth.gatewayauth.Constant;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicLongFieldUpdater f16112a = AtomicLongFieldUpdater.newUpdater(h.class, Constant.LOGIN_ACTIVITY_NUMBER);
    private volatile long number = 1;

    public final long a() {
        return f16112a.incrementAndGet(this);
    }
}
