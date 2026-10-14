package kotlin.internal;

import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.collections.k;
import kotlin.jvm.internal.r;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;

/* JADX INFO: renamed from: kotlin.internal.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\u0013"}, d2 = {"Lkotlin/internal/PlatformImplementations;", "", "()V", "addSuppressed", "", "cause", "", CustomLogInfoBuilder.LOG_TYPE, "defaultPlatformRandom", "Lkotlin/random/Random;", "getMatchResultNamedGroup", "Lkotlin/text/MatchGroup;", "matchResult", "Ljava/util/regex/MatchResult;", Constant.PROTOCOL_WEBVIEW_NAME, "", "getSuppressed", "", "ReflectThrowable", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
public class PlatformImplementations {

    /* JADX INFO: renamed from: kotlin.internal.a$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlin/internal/PlatformImplementations$ReflectThrowable;", "", "()V", "addSuppressed", "Ljava/lang/reflect/Method;", "getSuppressed", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Method f14633a;

        /* JADX WARN: Code duplicated, block: B:10:0x003a  */
        static {
            Method it;
            boolean z;
            Method[] throwableMethods = Throwable.class.getMethods();
            r.d(throwableMethods, "throwableMethods");
            int length = throwableMethods.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    it = null;
                    break;
                }
                it = throwableMethods[i];
                r.d(it, "it");
                if (r.a(it.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = it.getParameterTypes();
                    r.d(parameterTypes, "it.parameterTypes");
                    if (r.a((Class) k.V(parameterTypes), Throwable.class)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    break;
                } else {
                    i++;
                }
            }
            f14633a = it;
            for (Method it2 : throwableMethods) {
                r.d(it2, "it");
                if (r.a(it2.getName(), "getSuppressed")) {
                    return;
                }
            }
        }
    }

    public void a(Throwable cause, Throwable exception) {
        r.e(cause, "cause");
        r.e(exception, "exception");
        Method method = a.f14633a;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public Random b() {
        return new FallbackThreadLocalRandom();
    }
}
