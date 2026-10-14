package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.g.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTipType;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.a;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class j implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Pos f8118d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8117a = false;
    private int b = -1;
    private Pos c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pos f8119e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8120f = -1;

    private boolean e(TeachModel teachModel) {
        int i = teachModel.step;
        if (i == Step.K2_DaoCheRuKu.type && teachModel.subStep == 5) {
            return true;
        }
        if (i == Step.K2_CeFangTingChe.type && teachModel.subStep == 3) {
            return true;
        }
        if (i == Step.K2_SQuXian.type && teachModel.subStep == 1) {
            return true;
        }
        return i == Step.K2_ZhiJiaoZhuanWan.type && teachModel.subStep == 1;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f6  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        double d2;
        int i;
        TraceItemModel traceItemModel2;
        List<TraceItemModel> list3;
        boolean z;
        d.a().g(this, eVar, teachTypeData, bVar, pos, pos2, list);
        double dDistanceSquare = pos.distanceSquare(traceItemModel);
        if (dDistanceSquare > 22500.0d || Math.abs(pos.x - traceItemModel.x) > 90.0d) {
            return;
        }
        if (this.f8120f == -1) {
            boolean z2 = false;
            for (TraceItemModel traceItemModel3 : list) {
                if (z2 || traceItemModel.distanceSquare(traceItemModel3) >= 1.0d) {
                    if (z2 && a.d(traceItemModel3, TeachTipType.Wheel)) {
                        this.f8120f = 2;
                        break;
                    }
                } else {
                    this.f8120f = 1;
                    z2 = true;
                }
            }
        }
        int i2 = eVar.d().r;
        short s = traceItemModel.step;
        int i3 = Step.K2_SQuXian.type;
        int i4 = s == i3 ? 90 : 45;
        int i5 = s == i3 ? 50 : 35;
        if (teachTypeData.triggerState == 0) {
            i = i5;
            double d3 = traceItemModel.x;
            double d4 = d3 - pos2.x;
            d2 = dDistanceSquare;
            double d5 = pos.x;
            if (d4 * (d3 - d5) <= 0.0d || Math.abs(d3 - d5) < 20.0d) {
                if (Math.abs(i2 - teachTypeData.data1) >= i4) {
                    double d6 = i2;
                    if (Math.abs(d6 - (((double) traceItemModel.wheel) * cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.b.f8088h)) >= i4) {
                        int i6 = teachTypeData.data1;
                        if (((double) (i2 - i6)) * ((((double) traceItemModel.wheel) * cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.b.f8088h) - d6) >= 0.0d || (i2 - i6) * (i2 - teachTypeData.data2) <= 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = true;
                    }
                } else {
                    z = true;
                }
                teachTypeData.triggerState = z ? (byte) 1 : (byte) 2;
                c(teachTypeData);
                f.o("WheelTip:" + eVar.c().rearAxlePoint + "," + i2);
            }
        } else {
            d2 = dDistanceSquare;
            i = i5;
        }
        if (this.f8117a) {
            return;
        }
        if (this.b != -1) {
            traceItemModel2 = traceItemModel;
            list3 = list;
            break;
        }
        int i7 = 0;
        while (true) {
            if (i7 >= list.size()) {
                traceItemModel2 = traceItemModel;
                list3 = list;
                break;
            }
            list3 = list;
            traceItemModel2 = traceItemModel;
            if (list3.get(i7) == traceItemModel2) {
                this.b = i7;
                break;
            }
            i7++;
        }
        int i8 = this.b;
        if (i8 == -1) {
            return;
        }
        if (this.c == null) {
            if (i8 == 0) {
                this.c = cn.mucang.android.jiakaoyi.hpmap.d.a.s(list3.get(1), traceItemModel2, 30.0d);
            } else {
                this.c = list3.get(i8 - 1);
            }
            this.f8118d = new Pos();
            this.f8119e = new Pos();
        }
        if (traceItemModel2.vectorTo(this.c, this.f8118d).dot(traceItemModel2.vectorTo(pos, this.f8119e)) >= 0.0d) {
            int i9 = i * i;
            if (d2 >= i9 && d2 < i9 * 4) {
                int i10 = teachTypeData.data1;
                int i11 = teachTypeData.data2;
                double d7 = ((double) (i10 + i11)) * 0.5d;
                if ((((double) i2) - d7) * (((double) i11) - d7) >= 0.0d) {
                    this.f8117a = true;
                    if (teachTypeData.triggerState == 0) {
                        b(k0.a(R.string.teachingk2_steering_early));
                        f.o("WheelTip:" + eVar.c().rearAxlePoint + "," + i2);
                        teachTypeData.triggerState = (byte) 2;
                        c(teachTypeData);
                        return;
                    }
                    return;
                }
            }
        }
        boolean z3 = e(teachModel) && this.f8120f == 1;
        if (this.c.vectorTo(traceItemModel2, this.f8118d).dot(traceItemModel2.vectorTo(pos, this.f8119e)) >= 0.0d) {
            if (d2 < i * i * (z3 ? 100.0d : traceItemModel2.step == Step.K2_ZhiJiaoZhuanWan.type ? 1.5d : 4.0d) || Math.abs(i2 - teachTypeData.data1) >= 30 || Math.abs(teachTypeData.data1 - teachTypeData.data2) <= 90) {
                return;
            }
            this.f8117a = true;
            b(k0.a(R.string.teachingk2_steering_late));
            f.o("WheelTip:" + eVar.c().rearAxlePoint + "," + i2);
            teachTypeData.triggerState = (byte) 2;
            c(teachTypeData);
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
