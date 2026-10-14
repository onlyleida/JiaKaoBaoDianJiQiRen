package cn.mucang.android.jiakaoyi.engine.processor.exam;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.param.ExamParam;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeMu f3118a;
    public final int b;
    final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> f3119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final cn.mucang.android.jiakaoyi.engine.i.c.a f3120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b f3121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f3122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f3123h;
    public volatile boolean j;
    public final GearType l;
    public final RouteConfig m;
    public final ExamParam n;
    public final boolean o;
    public final int p;
    public final List<cn.mucang.android.jiakaoyi.engine.i.c.b> q;
    public volatile boolean i = true;
    public volatile boolean k = false;

    public d(KeMu keMu, GearType gearType, cn.mucang.android.jiakaoyi.engine.i.c cVar, boolean z, boolean z2, boolean z3, RouteConfig routeConfig, ExamParam examParam) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f3118a = keMu;
        this.l = gearType;
        this.f3122g = z3;
        this.f3123h = z;
        this.j = z2;
        this.f3120e = cVar.stepCreator();
        if (routeConfig == null) {
            this.m = cVar.getRouteConfig();
        } else {
            this.m = routeConfig;
        }
        this.o = cVar.canExeMoreThanOneStep(this.m);
        int engineType = cVar.getEngineType();
        this.p = engineType;
        w.r.kemu = keMu.serverKeMu;
        if (examParam == null) {
            this.n = null;
        } else if (keMu == KeMu.K3) {
            this.n = examParam.fillGlobalConfig(this.m.getConfig(Step.K3_Global));
        } else if (keMu == KeMu.B2) {
            if (engineType == 2) {
                this.n = examParam;
            } else {
                this.n = examParam.fillGlobalConfig(this.m.getConfig(Step.B2_Global));
            }
        } else if (keMu == KeMu.Moto) {
            this.n = examParam.fillGlobalConfig(this.m.getConfig(Step.Moto_Global));
        } else {
            this.n = examParam.fillGlobalConfig(this.m.getConfig(Step.K2_Global));
        }
        ExamParam examParam2 = this.n;
        if (examParam2 == null) {
            this.b = (keMu == KeMu.K2 || keMu == KeMu.B2) ? 80 : 90;
            this.c = 100;
        } else {
            this.b = examParam2.getPassScore();
            this.c = this.n.getTotalScore();
        }
        t.h("TAG", "反射生成整个配置的时间:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        List<cn.mucang.android.jiakaoyi.engine.i.c.b> listStepList = cVar.stepList();
        this.q = listStepList;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        this.f3119d = b(listStepList);
        t.h("TAG", "反射生成步骤事件的时间:" + (System.currentTimeMillis() - jCurrentTimeMillis2));
        this.f3121f = cVar.createGlobalEvents(this.m.steps.get(keMu == KeMu.K2 ? Step.K2_Global : keMu == KeMu.B2 ? Step.B2_Global : keMu == KeMu.Moto ? Step.Moto_Global : Step.K3_Global));
        t.h("TAG", "反射生成整个数据的时间:" + (System.currentTimeMillis() - jCurrentTimeMillis));
        cn.mucang.android.jiakaoyi.framework.log.f.o("引擎初始化参数:" + toString());
    }

    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> b(List<cn.mucang.android.jiakaoyi.engine.i.c.b> list) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (cn.mucang.android.jiakaoyi.engine.i.c.b bVar : list) {
            cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVarCreateStep = this.f3120e.createStep(bVar, this.m.steps.get(bVar.f3084d), false);
            if (bVarCreateStep != null) {
                arrayList.add(bVarCreateStep);
            }
        }
        return arrayList;
    }

    public boolean a() {
        return this.p != 3;
    }

    public boolean c() {
        int i = this.p;
        return i == 4 || i == 2;
    }

    public boolean d() {
        int i = this.p;
        return i == 1 || i == 4 || i == 2;
    }

    public boolean e() {
        int i = this.p;
        return i == 1 || i == 4 || i == 2 || i == 5;
    }

    public int f() {
        Iterator<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> it = this.f3119d.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().a()) {
                i++;
            }
        }
        return i;
    }

    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b g(Step step) {
        return this.f3120e.createStep(new cn.mucang.android.jiakaoyi.engine.i.c.b(step, null), this.m.steps.get(step), true);
    }

    public String toString() {
        return "ExamData{keMu=" + this.f3118a + ", passScore=" + this.b + ", totalScore=" + this.c + ", stepEvents=" + this.f3119d + ", stepCreator=" + this.f3120e + ", globalEvent=" + this.f3121f + ", continueIfError=" + this.f3122g + ", realTimeReportError=" + this.f3123h + ", playScoreVoice=" + this.i + ", autoStartNext=" + this.j + ", pauseDeductScore=" + this.k + ", gearType=" + this.l + ", routeConfig=" + this.m + ", globalParam=" + this.n + ", canExeMoreThanOneStep=" + this.o + ", engineType=" + this.p + ", steps=" + this.q + '}';
    }
}
