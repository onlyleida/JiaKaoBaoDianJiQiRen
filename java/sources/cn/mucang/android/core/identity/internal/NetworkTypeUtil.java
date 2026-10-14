package cn.mucang.android.core.identity.internal;

import android.net.NetworkInfo;
import cn.mucang.android.core.utils.x;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.identity.internal.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcn/mucang/android/core/identity/internal/NetworkTypeUtil;", "", "()V", "DEFAULT_VALUE", "", "getDEFAULT_VALUE", "()Ljava/lang/String;", "setDEFAULT_VALUE", "(Ljava/lang/String;)V", "getNetworkTypeStringInternal", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NetworkTypeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NetworkTypeUtil f2561a = new NetworkTypeUtil();
    private static String b = "unknown";

    private NetworkTypeUtil() {
    }

    public static final String b() {
        NetworkInfo networkInfoB;
        String str = b;
        if (!x.e() || (networkInfoB = x.b()) == null) {
            return str;
        }
        if (networkInfoB.getType() == 1) {
            return "wifi";
        }
        if (networkInfoB.getType() != 0) {
            return str;
        }
        switch (networkInfoB.getSubtype()) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "g2";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "g3";
            case 13:
            default:
                return "g4";
        }
    }

    public final String a() {
        return b;
    }
}
