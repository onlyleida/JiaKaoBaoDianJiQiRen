package cn.mucang.android.jiakaoyi.k3collect.src;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.src.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0016\u0010\u0005\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0006\"\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0007J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\tJ\u0018\u0010\n\u001a\u00020\u000b2\u0010\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcDataUtils;", "", "()V", "getCenter", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "gpsarr", "", "([Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "gpsList", "", "isNotEmpty", "", "posList", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3SrcDataUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3SrcDataUtils f4160a = new K3SrcDataUtils();

    private K3SrcDataUtils() {
    }

    public final Gps a(List<? extends Gps> list) {
        if (list == null || !(!list.isEmpty())) {
            return null;
        }
        int i = 0;
        int size = list.size() - 1;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        if (size >= 0) {
            while (true) {
                int i2 = i + 1;
                Gps gps = list.get(i);
                if (gps == null) {
                    return null;
                }
                d2 += gps.latitude;
                d3 += gps.longitude;
                d4 += gps.altitude;
                if (i2 <= size) {
                    i = i2;
                }
            }
        }
        return new Gps(d2 / ((double) list.size()), d3 / ((double) list.size()), d4 / ((double) list.size()));
    }

    public final boolean b(List<? extends Gps> list) {
        if (list == null) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((Gps) it.next()) != null) {
                return true;
            }
        }
        return false;
    }
}
