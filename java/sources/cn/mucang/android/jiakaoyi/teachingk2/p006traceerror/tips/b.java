package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.c;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.d;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.f;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.i;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class b implements g0<TraceVariable> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static double f8088h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<TraceItemModel> f8089a = null;
    private List<TraceItemModel> b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f8090d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f8091e = new Pos();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f8092f = new Pos();
    private final List<C0138b> c = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8093g = true;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8094a;

        static {
            int[] iArr = new int[TeachTipType.values().length];
            f8094a = iArr;
            try {
                iArr[TeachTipType.Light.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8094a[TeachTipType.Stop.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8094a[TeachTipType.Honk.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8094a[TeachTipType.HandBrake.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8094a[TeachTipType.Wheel.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8094a[TeachTipType.Gear.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8094a[TeachTipType.RightDistance.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8094a[TeachTipType.RangeDistance.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8094a[TeachTipType.UnableDaoKu.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8094a[TeachTipType.UnableCeFang.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8094a[TeachTipType.UnableCeFangDaoKuStep1.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.traceerror.tips.b$b, reason: collision with other inner class name */
    private static class C0138b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final TraceItemModel f8095a;
        final TeachTypeData b;
        final cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b c;

        /* synthetic */ C0138b(TraceItemModel traceItemModel, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b bVar, a aVar) {
            this(traceItemModel, teachTypeData, bVar);
        }

        private C0138b(TraceItemModel traceItemModel, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b bVar) {
            this.f8095a = traceItemModel;
            this.b = teachTypeData;
            this.c = bVar;
        }
    }

    private void b(TraceVariable traceVariable, Map<Integer, List<TeachModel>> map) {
        int i;
        TraceVariable traceVariable2;
        Iterator<TraceItemModel> it = traceVariable.traces.iterator();
        boolean z = false;
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().honk == 1) {
                i2++;
            }
        }
        if (i2 > traceVariable.traces.size() / 2) {
            Iterator<TraceItemModel> it2 = traceVariable.traces.iterator();
            while (it2.hasNext()) {
                it2.next().honk = (byte) 0;
            }
        }
        Iterator<Map.Entry<Integer, List<TeachModel>>> it3 = map.entrySet().iterator();
        while (it3.hasNext()) {
            for (TeachModel teachModel : it3.next().getValue()) {
                if (teachModel.subStep == 2 && (((i = teachModel.step) == Step.K2_DaoCheRuKu.type || i == Step.B2_ZhuangKao.type) && (traceVariable2 = teachModel.getTraceVariable()) != null && g.d(traceVariable2.traces))) {
                    Iterator<TraceItemModel> it4 = traceVariable2.traces.iterator();
                    while (it4.hasNext()) {
                        short s = it4.next().wheel;
                        if (s != 0 && s != -1) {
                            z = true;
                            break;
                        }
                    }
                }
                if (z) {
                    break;
                }
            }
            if (z) {
                break;
            }
        }
        this.f8093g = z;
    }

    private double c(Map<Integer, List<TeachModel>> map) {
        int i;
        Iterator<Map.Entry<Integer, List<TeachModel>>> it = map.entrySet().iterator();
        double dAbs = 0.0d;
        loop0: while (it.hasNext()) {
            for (TeachModel teachModel : it.next().getValue()) {
                if (teachModel.subStep >= 2 && ((i = teachModel.step) == Step.K2_DaoCheRuKu.type || i == Step.B2_ZhuangKao.type)) {
                    TraceVariable traceVariable = teachModel.getTraceVariable();
                    if (traceVariable != null && g.d(traceVariable.traces)) {
                        for (TraceItemModel traceItemModel : traceVariable.traces) {
                            if (Math.abs((int) traceItemModel.wheel) > dAbs) {
                                dAbs = Math.abs((int) traceItemModel.wheel);
                                if (dAbs > 3000.0d) {
                                    break loop0;
                                }
                            }
                        }
                    }
                }
            }
        }
        return dAbs;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        CarPos carPosC;
        if (this.f8089a == null) {
            if (g.b(traceVariable.traces) || g.c(f0Var.f7021d)) {
                return false;
            }
            b(traceVariable, f0Var.f7021d);
            if (f8088h == 0.0d) {
                if (c(f0Var.f7021d) > 3000.0d) {
                    f8088h = 0.1d;
                } else {
                    f8088h = 1.0d;
                }
            }
            cn.mucang.android.jiakaoyi.signal.utils.b bVarG = bVar.g();
            List<TraceItemModel> listL = cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.a.l(traceVariable.traces, bVarG);
            this.f8089a = listL;
            List<TraceItemModel> listH = cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.a.h(listL, bVarG, f0Var.f7021d.get(Integer.valueOf(teachModel.subStep)), bVar2, bVar, f0Var);
            this.f8089a = listH;
            if (g.d(listH)) {
                cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.a.n(this.f8089a, teachModel.step, teachModel.subStep);
                Tiger.h(cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.a.g(this.f8089a, teachModel.step, teachModel.subStep, teachModel.stepDirection));
                this.b = new ArrayList(this.f8089a.size());
                Iterator<TraceItemModel> it = this.f8089a.iterator();
                while (it.hasNext()) {
                    this.b.add(it.next().copy());
                }
                for (TraceItemModel traceItemModel : this.b) {
                    Object obj = traceItemModel.extra;
                    if (obj instanceof List) {
                        for (TeachTypeData teachTypeData : (List) obj) {
                            a aVar = null;
                            switch (a.f8094a[teachTypeData.type.ordinal()]) {
                                case 1:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new d(), aVar));
                                    break;
                                case 2:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new i(), aVar));
                                    break;
                                case 3:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new c(), aVar));
                                    break;
                                case 4:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.b(), aVar));
                                    break;
                                case 5:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new j(), aVar));
                                    break;
                                case 6:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.a(), aVar));
                                    break;
                                case 7:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new f(), aVar));
                                    break;
                                case 8:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.e(), aVar));
                                    break;
                                case 9:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k.b(), aVar));
                                    break;
                                case 10:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k.a(), aVar));
                                    break;
                                case 11:
                                    this.c.add(new C0138b(traceItemModel, teachTypeData, new cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e.k.c(), aVar));
                                    break;
                            }
                        }
                    }
                }
            }
        }
        if (g.b(this.f8089a) || g.b(this.b) || (carPosC = eVar.c()) == null) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = new cn.mucang.android.jiakaoyi.signal.utils.b(carPosC.rearAxlePoint, carPosC.degree, true);
        for (int i = 0; i < this.f8089a.size(); i++) {
            bVar3.b(this.f8089a.get(i), this.b.get(i));
        }
        bVar3.b(carPosC.rearAxlePoint, this.f8092f);
        Pos pos = this.f8090d;
        if (pos != null) {
            bVar3.b(pos, this.f8091e);
            for (C0138b c0138b : this.c) {
                cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b bVar4 = c0138b.c;
                if (bVar4 != null) {
                    try {
                        bVar4.a(eVar, c0138b.f8095a, this.b, this.f8092f, this.f8091e, c0138b.b, bVar, teachModel, this.f8089a);
                    } catch (Throwable th) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("路径提示崩溃:" + q0.d(th));
                    }
                }
            }
        }
        Pos pos2 = this.f8090d;
        if (pos2 == null || pos2.distanceSquare(carPosC.rearAxlePoint) > 16.0d) {
            this.f8090d = carPosC.rearAxlePoint;
        }
        return false;
    }
}
