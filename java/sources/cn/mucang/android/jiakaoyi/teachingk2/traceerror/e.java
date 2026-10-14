package cn.mucang.android.jiakaoyi.teachingk2.traceerror;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e implements g0<TraceVariable> {
    private long c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Pos> f5952a = new ArrayList();
    private final Pos b = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5953d = 0;

    private static double c(Pos pos, Pos pos2) {
        double d2 = pos.x - pos2.x;
        double d3 = pos.y - pos2.y;
        return (d2 * d2) + (d3 * d3);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x031f A[PHI: r20 r24
      0x031f: PHI (r20v3 double) = (r20v2 double), (r20v2 double), (r20v7 double) binds: [B:110:0x031b, B:107:0x030e, B:101:0x02f4] A[DONT_GENERATE, DONT_INLINE]
      0x031f: PHI (r24v3 double) = (r24v1 double), (r24v2 double), (r24v6 double) binds: [B:110:0x031b, B:107:0x030e, B:101:0x02f4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, cn.mucang.android.jiakaoyi.signal.c.e eVar, b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        boolean z;
        double d2;
        double d3;
        int i;
        String strA;
        int i2;
        if (g.b(traceVariable.traces) || traceVariable.traces.size() < 2) {
            return false;
        }
        if (g.b(this.f5952a)) {
            cn.mucang.android.jiakaoyi.signal.utils.b bVarA = a.a(bVar);
            ArrayList arrayList = new ArrayList();
            Iterator<TraceItemModel> it = traceVariable.traces.iterator();
            while (it.hasNext()) {
                arrayList.add(bVarA.c(it.next()));
            }
            this.f5952a.addAll(d.c(arrayList, 50.0d));
            LiveBus.d(a.class).l(new a(this.f5952a, false));
        }
        boolean z2 = (eVar.d().m == Gear.GearN || eVar.d().m == Gear.GearP || eVar.d().m == Gear.GearBack || !eVar.d().m.isValid()) ? false : true;
        boolean z3 = eVar.d().m == Gear.GearBack;
        if (!z2 && !z3) {
            return false;
        }
        this.b.setPos(eVar.c().center);
        double d4 = 9.9999997952E10d;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f5952a.size(); i4++) {
            double dC = c(this.b, this.f5952a.get(i4));
            if (dC < d4) {
                i3 = i4;
                d4 = dC;
            }
        }
        double dMin = Math.min(Math.max((((double) eVar.d().c) / 3.6d) * 2.0d * 100.0d, 100.0d), 250.0d);
        Pos pos = new Pos(-1.0E20d, -1.0E20d);
        Pos pos2 = new Pos(-1.0E20d, -1.0E20d);
        boolean zG = i3 > 0 ? cn.mucang.android.jiakaoyi.hpmap.d.a.g(this.b, this.f5952a.get(i3 - 1), this.f5952a.get(i3), pos) : false;
        boolean z4 = i3 < this.f5952a.size() - 1 && cn.mucang.android.jiakaoyi.hpmap.d.a.g(this.b, this.f5952a.get(i3), this.f5952a.get(i3 + 1), pos2);
        Pos pos3 = new Pos();
        if (!z4 || !zG) {
            if (zG) {
                pos3.setPos(pos);
            } else if (z4) {
                pos3.setPos(pos2);
                z = false;
            } else {
                pos3.setPos(this.f5952a.get(i3));
                if (i3 > this.f5952a.size() - 3) {
                    return false;
                }
            }
            z = true;
        } else if (pos.distanceTo(this.b) < pos2.distanceTo(this.b)) {
            pos3.setPos(pos);
            z = true;
        } else {
            pos3.setPos(pos2);
            z = false;
        }
        double dDistanceTo = pos3.distanceTo(this.b);
        if (!z && i3 < this.f5952a.size() - 1) {
            i3++;
        }
        double dDistanceTo2 = 0.0d + pos3.distanceTo(this.f5952a.get(i3));
        Pos pos4 = new Pos();
        if (i3 == this.f5952a.size() - 1) {
            List<Pos> list = this.f5952a;
            Pos pos5 = list.get(list.size() - 2);
            List<Pos> list2 = this.f5952a;
            pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos5, list2.get(list2.size() - 1), dMin - dDistanceTo2));
        } else {
            while (i3 < this.f5952a.size()) {
                if (i3 == this.f5952a.size() - 1) {
                    pos4 = pos4;
                    pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f5952a.get(i3 - 1), this.f5952a.get(i3), dMin - dDistanceTo2));
                } else {
                    int i5 = i3 + 1;
                    double dDistanceTo3 = dDistanceTo2 + this.f5952a.get(i3).distanceTo(this.f5952a.get(i5));
                    if (dDistanceTo3 >= dMin) {
                        pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(this.f5952a.get(i3), this.f5952a.get(i5), dMin - dDistanceTo2));
                        break;
                    }
                    pos4.setPos(this.f5952a.get(i5));
                    dDistanceTo2 = dDistanceTo3;
                }
                i3++;
            }
        }
        double degrees = Math.toDegrees(this.b.angleTo(pos4));
        double degrees2 = Math.toDegrees(eVar.c().back.angleTo(eVar.c().front));
        if (z3) {
            degrees2 += 180.0d;
        }
        double dC2 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) degrees2);
        double dC3 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (degrees - dC2));
        if (Math.abs(dC3) >= 90.0d) {
            return false;
        }
        double dMax = Math.max(-560.0d, Math.min(560.0d, (dC3 * 560.0d) / 35.0d));
        double d5 = eVar.d().r;
        boolean z5 = z2;
        double dC4 = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (dMax - d5));
        if (Math.abs(dC3) < 5.0d) {
            if (Math.abs(d5) > 24.0d) {
                d2 = dC4;
                if (dDistanceTo <= ((double) traceVariable.range) * 1.5d && (i2 = this.f5953d) != 0 && i2 != 3) {
                    d3 = d5;
                    i = 3;
                }
            } else {
                d2 = dC4;
            }
            d3 = d5;
            i = 0;
        } else {
            d2 = dC4;
            if (dC3 > 0.0d || z3) {
                d3 = d5;
                if (dDistanceTo > ((double) traceVariable.range) * 1.2d) {
                    i = 2;
                } else {
                    i = 0;
                }
            } else {
                d3 = d5;
                if (dDistanceTo > ((double) traceVariable.range) * 1.2d) {
                    i = 1;
                } else {
                    i = 0;
                }
            }
        }
        if (i == 2) {
            strA = k0.a(R.string.teachingk2_close_left_trun_right);
        } else if (i == 1) {
            strA = k0.a(R.string.teachingk2_close_right_trun_left);
        } else if (i != 3) {
            strA = null;
        } else if (Math.abs(dC3) > 2.5d) {
            strA = (dC3 > 0.0d || z3) ? k0.a(R.string.teachingk2_turn_left_back) : k0.a(R.string.teachingk2_turn_right_back);
        } else {
            strA = k0.a(R.string.teachingk2_please_back_to_body);
        }
        if (MucangConfig.v() && i != 0) {
            f.o("target角度 : " + ((int) degrees) + " , car角度 : " + ((int) dC2) + " , 角度差 : " + ((int) dC3) + " , 档位 : " + eVar.d().m.gearName + " , dis : " + ((int) dDistanceTo) + " , len : " + this.f5952a.size() + " , direction : " + z5 + "," + z3 + " , heading : " + ((int) cn.mucang.android.jiakaoyi.signal.utils.d.c(eVar.getCurrentPosition().f5277a)) + " , target方向盘 : " + ((int) dMax) + " , current方向盘 : " + ((int) d3) + " , diff方向盘 : " + ((int) d2) + " , 提示 : " + strA);
        }
        String str = ((MucangConfig.getContext() instanceof TeachEventHandler) && ((TeachEventHandler) MucangConfig.getContext()).a(AutoTeachEvent.TraceTeach)) ? null : strA;
        if (!eVar.d().c()) {
            return false;
        }
        if (str != null) {
            if (i != this.f5953d) {
                LiveBus.c(new ErrorTipModel(str));
                this.c = eVar.d().L;
            } else if (eVar.d().L - this.c > Math.max(5000, traceVariable.time)) {
                this.c = eVar.d().L;
                if (i != 3) {
                    LiveBus.c(new ErrorTipModel(str));
                }
            }
        }
        if (i == 0) {
            return false;
        }
        this.f5953d = i;
        return false;
    }
}
