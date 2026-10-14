package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.g;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.h;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class i implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8111a = false;
    private cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b b = null;
    private cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f8112d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f8113e = null;

    private static class b implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8114a;

        private b() {
            this.f8114a = false;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
            if (!this.f8114a && eVar.d().F == CarModel.Direction.Stop && !eVar.d().c() && pos.distanceSquare(list.get(list.size() - 1)) < 10000.0d) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar;
                if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(eVar.c(), bVar2.v)) {
                    teachTypeData.triggerState = (byte) 1;
                } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), bVar2.k)) {
                    teachTypeData.triggerState = (byte) 2;
                    b(k0.a(R.string.teachingk2_stop_early));
                } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), bVar2.m)) {
                    teachTypeData.triggerState = (byte) 2;
                    b(k0.a(R.string.teachingk2_stop_late));
                } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), bVar2.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), bVar2.p)) {
                    teachTypeData.triggerState = (byte) 2;
                    b(k0.a(R.string.teachingk2_stop_touch_ku_line));
                }
                c(teachTypeData);
                this.f8114a = true;
            }
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public /* synthetic */ void b(String str) {
            cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public /* synthetic */ void c(TeachTypeData teachTypeData) {
            cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
        }
    }

    private static class c implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8115a;
        private Pos b;
        private Pos c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Pos f8116d;

        private c() {
            this.f8115a = false;
            this.b = null;
            this.c = null;
            this.f8116d = null;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
            if (this.f8115a) {
                return;
            }
            if (this.b == null) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar;
                double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(eVar.c().rearAxlePoint, eVar.c().carRect.b, eVar.c().carRect.c);
                Pos posMiddle = cVar.l.middle();
                Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posMiddle, cVar.m.middle(), dK - 30.0d);
                this.b = posT;
                this.f8116d = posMiddle.vectorTo(posT);
                this.c = new Pos();
            }
            if (eVar.d().F != CarModel.Direction.Stop || eVar.d().c() || this.f8116d.dot(this.b.vectorTo(eVar.c().rearAxlePoint, this.c)) <= 0.0d) {
                return;
            }
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar;
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.e(eVar.c(), cVar2.w)) {
                teachTypeData.triggerState = (byte) 1;
                Pos posMiddle2 = cVar2.k.middle();
                Pos posMiddle3 = cVar2.m.middle();
                Pos pos3 = eVar.c().rearAxlePoint;
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, posMiddle2, posMiddle3) > 10.0d) {
                    if (posMiddle3.vectorTo(pos3).cross(posMiddle3.vectorTo(posMiddle2)) > 0.0d) {
                        b(k0.a(R.string.teachingk2_stop_partial_left));
                    } else {
                        b(k0.a(R.string.teachingk2_stop_partial_right));
                    }
                }
            } else if (pos.distanceSquare(list.get(list.size() - 1)) < 3600.0d && cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar2.k)) {
                teachTypeData.triggerState = (byte) 2;
                b(k0.a(R.string.teachingk2_stop_early));
            } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar2.m)) {
                teachTypeData.triggerState = (byte) 2;
                b(k0.a(R.string.teachingk2_stop_late));
            } else if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar2.o) || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), cVar2.p)) {
                teachTypeData.triggerState = (byte) 2;
                b(k0.a(R.string.teachingk2_stop_touch_ku_line));
            }
            if (teachTypeData.triggerState != 0) {
                c(teachTypeData);
                this.f8115a = true;
            }
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public /* synthetic */ void b(String str) {
            cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public /* synthetic */ void c(TeachTypeData teachTypeData) {
            cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        d.a().g(this, eVar, teachTypeData, bVar, pos, pos2, list);
        int i = teachModel.step;
        if (i == Step.K2_DaoCheRuKu.type && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c)) {
            int i2 = teachModel.subStep;
            if (i2 == 2 || i2 == 4) {
                if (this.b == null) {
                    this.b = new c();
                }
                this.b.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
                return;
            } else if (i2 == 1 || i2 == 3) {
                if (this.b == null) {
                    this.b = new h();
                }
                this.b.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
                return;
            }
        }
        if (i == Step.K2_CeFangTingChe.type && (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b)) {
            int i3 = teachModel.subStep;
            if (i3 == 2) {
                if (this.c == null) {
                    this.c = new b();
                }
            } else if (i3 == 1 && this.c == null) {
                this.c = new g();
            }
            this.c.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
            return;
        }
        if (this.f8111a) {
            return;
        }
        if (this.f8112d == null) {
            this.f8112d = new g();
        }
        if (this.f8113e == null) {
            this.f8113e = new h(1000L);
        }
        int size = list.size();
        boolean z = list.get(size / 2).gear == Gear.GearBack.gear;
        if (this.f8113e.a(eVar.d().L, eVar.d().F == CarModel.Direction.Stop)) {
            int i4 = size - 1;
            int i5 = size - 3;
            if (this.f8112d.a(pos, list.get(i4), list.get(i5), z ? 40.0d : 80.0d)) {
                if (Math.abs(pos.x - traceItemModel.x) < (z ? 15.0d : 50.0d)) {
                    float degrees = (float) Math.toDegrees(list.get(i5).angleTo(list.get(i4)));
                    double d2 = z ? 10.0d : 35.0d;
                    if (((double) Math.abs(degrees)) < d2 || ((double) Math.abs(cn.mucang.android.jiakaoyi.signal.utils.d.c(degrees - 180.0f))) < d2) {
                        teachTypeData.triggerState = (byte) 1;
                    } else {
                        teachTypeData.triggerState = (byte) 2;
                    }
                } else {
                    if (list.get(i5).vectorTo(list.get(i4)).dot(list.get(i4).vectorTo(pos)) >= 0.0d) {
                        b(k0.a(R.string.teachingk2_stop_late));
                    } else {
                        b(k0.a(R.string.teachingk2_stop_early));
                    }
                    teachTypeData.triggerState = (byte) 2;
                }
                c(teachTypeData);
                this.f8111a = true;
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
    }
}
