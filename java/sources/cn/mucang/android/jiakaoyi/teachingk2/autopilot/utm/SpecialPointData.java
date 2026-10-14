package cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autopilot.h.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/utm/SpecialPointData;", "", "points", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "(Ljava/util/List;)V", "getPoints", "()Ljava/util/List;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpecialPointData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Pos> f6231a;

    /* JADX WARN: Multi-variable type inference failed */
    public SpecialPointData(List<? extends Pos> points) {
        r.e(points, "points");
        this.f6231a = points;
    }

    public final List<Pos> a() {
        return this.f6231a;
    }
}
