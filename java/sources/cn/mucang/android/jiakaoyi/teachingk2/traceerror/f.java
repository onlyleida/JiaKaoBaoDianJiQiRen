package cn.mucang.android.jiakaoyi.teachingk2.traceerror;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.tts.AbsTtsDataProvider;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.g0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public class f implements g0<TraceVariable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5954a;
    private long b = 0;
    private final Pos c = new Pos();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f5955d = new Pos();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Pos f5956e = new Pos();

    /* JADX WARN: Code duplicated, block: B:60:0x0137  */
    /* JADX WARN: Code duplicated, block: B:68:0x014b  */
    /* JADX WARN: Code duplicated, block: B:69:0x014d  */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.elements.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(TraceVariable traceVariable, e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, TeachModel teachModel, f0 f0Var) {
        char c;
        String strA;
        if (!g.b(traceVariable.traces) && traceVariable.traces.size() >= 2) {
            if (this.f5954a == null) {
                this.f5954a = a.a(bVar);
            }
            this.f5955d.setPos(this.f5954a.a(eVar.c().center));
            if (Math.abs(this.c.x) + Math.abs(this.c.y) < 1.0E-6d) {
                this.c.setPos(this.f5955d);
                return false;
            }
            if (this.f5955d.distanceTo(this.c) < 20.0d) {
                return false;
            }
            Pos pos = new Pos();
            double d2 = 1.0E10d;
            TraceItemModel traceItemModel = null;
            TraceItemModel traceItemModel2 = null;
            int i = 0;
            while (i < traceVariable.traces.size() - 1) {
                TraceItemModel traceItemModel3 = traceVariable.traces.get(i);
                i++;
                TraceItemModel traceItemModel4 = traceVariable.traces.get(i);
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.g(this.f5955d, traceItemModel3, traceItemModel4, pos)) {
                    double dDistanceTo = this.f5955d.distanceTo(pos);
                    if (dDistanceTo < d2) {
                        this.f5956e.setPos(pos);
                        traceItemModel = traceItemModel3;
                        traceItemModel2 = traceItemModel4;
                        d2 = dDistanceTo;
                    }
                }
            }
            if (traceItemModel == null) {
                return false;
            }
            double dC = d.c((float) (Math.toDegrees(this.c.angleTo(this.f5955d)) - Math.toDegrees(traceItemModel.angleTo(traceItemModel2))));
            double dDistanceTo2 = this.f5956e.distanceTo(this.f5955d);
            boolean z = traceItemModel.vectorTo(traceItemModel2).cross(traceItemModel.vectorTo(this.f5955d)) > 0.0d;
            if (dDistanceTo2 <= traceVariable.range) {
                c = 0;
            } else if (eVar.d().m == Gear.GearBack) {
                if (z) {
                    if (dDistanceTo2 < traceVariable.range * 2) {
                        if (dC > 15.0d) {
                            c = 1;
                        } else if (dC >= 0.0d) {
                            c = 0;
                        }
                    }
                    c = 2;
                } else {
                    if (dDistanceTo2 < traceVariable.range * 2) {
                        if (dC < -15.0d) {
                            c = 2;
                        } else if (dC <= 0.0d) {
                            c = 0;
                        }
                    }
                    c = 1;
                }
            } else if (z) {
                if (dDistanceTo2 < traceVariable.range * 2) {
                    if (dC < -15.0d) {
                        c = 2;
                    } else if (dC <= 0.0d) {
                        c = 0;
                    }
                }
                c = 1;
            } else {
                if (dDistanceTo2 < traceVariable.range * 2) {
                    if (dC > 15.0d) {
                        c = 1;
                    } else if (dC >= 0.0d) {
                        c = 0;
                    }
                }
                c = 2;
            }
            if (c == 2) {
                strA = k0.a(R.string.teachingk2_close_left_trun_right);
            } else {
                strA = c == 1 ? k0.a(R.string.teachingk2_close_right_trun_left) : null;
            }
            if (strA != null) {
                if (eVar.d().L - this.b < Math.max(traceVariable.time, 3000)) {
                    return false;
                }
                AbsTtsDataProvider absTtsDataProvider = (AbsTtsDataProvider) DataProviderRegister.f3433a.a(AbsTtsDataProvider.class, null);
                if (absTtsDataProvider != null) {
                    absTtsDataProvider.startSpeechLow(strA, TtsGrade.TeachError);
                } else {
                    TtsManager.z(strA, TtsGrade.TeachError);
                }
                this.b = eVar.d().L;
            }
            this.c.setPos(this.f5955d);
        }
        return false;
    }
}
