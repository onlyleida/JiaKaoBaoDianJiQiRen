package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8097a = false;
    private C0139b b = null;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.traceerror.tips.c.e.b$b, reason: collision with other inner class name */
    private static class C0139b implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8098a;
        private Pos b;
        private double c;

        private C0139b() {
            this.f8098a = false;
            this.b = null;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
            if (this.f8098a) {
                return;
            }
            k kVar = (k) bVar;
            if (this.b == null) {
                Pos posMiddle = kVar.o.middle();
                this.b = posMiddle;
                this.c = posMiddle.distanceSquare(kVar.n.middle());
            }
            if (eVar.d().f5268f) {
                if (eVar.c().headerPoint.distanceSquare(this.b) < this.c * 0.25d) {
                    b(k0.a(R.string.teachingk2_unstop_handbrake));
                    f.o("手刹:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
                    this.f8098a = true;
                    return;
                }
                return;
            }
            boolean zB = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), kVar.m);
            boolean zB2 = cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), kVar.n);
            if (zB && !zB2) {
                teachTypeData.triggerState = (byte) 1;
            } else if (zB2) {
                b(k0.a(R.string.teachingk2_stop_late));
                teachTypeData.triggerState = (byte) 2;
            } else {
                b(k0.a(R.string.teachingk2_stop_early));
                teachTypeData.triggerState = (byte) 2;
            }
            c(teachTypeData);
            this.f8098a = true;
            f.o("手刹:前后距离:" + ((int) Math.abs(traceItemModel.x - pos.x)) + ",左右距离:" + ((int) Math.abs(traceItemModel.y - pos.y)));
            f.o("手刹:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
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
        b bVar2;
        d.a().g(this, eVar, teachTypeData, bVar, pos, pos2, list);
        if (this.b == null) {
            this.b = new C0139b();
        }
        if (bVar instanceof k) {
            this.b.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
            return;
        }
        if (teachTypeData.triggerState != 0) {
            bVar2 = this;
        } else if (eVar.d().f5268f) {
            bVar2 = this;
            if (pos.x - traceItemModel.x > 40.0d) {
                teachTypeData.triggerState = (byte) 2;
                bVar2.c(teachTypeData);
                f.o("手刹:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
            }
        } else {
            double d2 = traceItemModel.x;
            double d3 = d2 - pos2.x;
            double d4 = pos.x;
            teachTypeData.triggerState = (!(((d3 * (d2 - d4)) > 0.0d ? 1 : ((d3 * (d2 - d4)) == 0.0d ? 0 : -1)) <= 0 || (Math.abs(d2 - d4) > 20.0d ? 1 : (Math.abs(d2 - d4) == 20.0d ? 0 : -1)) < 0) || Math.abs(traceItemModel.y - pos.y) >= 30.0d) ? (byte) 2 : (byte) 1;
            bVar2 = this;
            bVar2.c(teachTypeData);
            f.o("手刹:前后距离:" + ((int) Math.abs(traceItemModel.x - pos.x)) + ",左右距离:" + ((int) Math.abs(traceItemModel.y - pos.y)));
        }
        if (bVar2.f8097a) {
            return;
        }
        if (eVar.d().f5268f) {
            if (pos.x - traceItemModel.x > 40.0d) {
                bVar2.b(k0.a(R.string.teachingk2_no_handbrake));
                f.o("手刹:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
                bVar2.f8097a = true;
                return;
            }
            return;
        }
        if (Math.abs(pos.x - traceItemModel.x) >= 20.0d) {
            if (pos.x > traceItemModel.x) {
                bVar2.b(k0.a(R.string.teachingk2_handbrake_late));
            } else {
                bVar2.b(k0.a(R.string.teachingk2_handbrake_early));
            }
        }
        bVar2.f8097a = true;
        f.o("手刹:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
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
