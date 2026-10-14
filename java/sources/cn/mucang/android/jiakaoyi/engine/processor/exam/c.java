package cn.mucang.android.jiakaoyi.engine.processor.exam;

import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f3112a;
    private final cn.mucang.android.jiakaoyi.engine.i.c b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GearType f3115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ExamParam f3116g;

    public c(KeMu keMu, GearType gearType, cn.mucang.android.jiakaoyi.engine.i.c cVar, boolean z, boolean z2, boolean z3) {
        this(keMu, gearType, cVar, z, z2, z3, null);
    }

    public d a(RouteConfig routeConfig) {
        return new d(this.f3112a, this.f3115f, this.b, this.c, this.f3113d, this.f3114e, routeConfig, this.f3116g);
    }

    public c(KeMu keMu, GearType gearType, cn.mucang.android.jiakaoyi.engine.i.c cVar, boolean z, boolean z2, boolean z3, ExamParam examParam) {
        this.f3112a = keMu;
        this.f3114e = z3;
        this.f3115f = gearType;
        this.b = cVar;
        this.c = z;
        this.f3113d = z2;
        this.f3116g = examParam;
    }
}
