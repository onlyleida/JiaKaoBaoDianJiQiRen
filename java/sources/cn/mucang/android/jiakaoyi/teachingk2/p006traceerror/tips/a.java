package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.f0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.exe.l;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static void a(List<TraceItemModel> list, TeachModel teachModel, NormalVariable normalVariable) {
        int i = teachModel.step;
        int i2 = teachModel.subStep;
        Step step = Step.K2_DaoCheRuKu;
        if (i == step.type && (i2 == 2 || i2 == 4)) {
            TeachTipType teachTipType = TeachTipType.UnableDaoKu;
            if (!j(list, teachTipType)) {
                TeachTypeData teachTypeData = new TeachTypeData(teachTipType, 0, teachModel, normalVariable);
                teachTypeData.desc = k0.a(R.string.teachingk2_cant_in_ku);
                b(list.get(0), teachTypeData, true);
                return;
            }
        }
        Step step2 = Step.K2_CeFangTingChe;
        if (i == step2.type && i2 == 2 && !j(list, TeachTipType.UnableCeFang)) {
            return;
        }
        if ((i == step.type || i == step2.type) && i2 == 1) {
            TeachTipType teachTipType2 = TeachTipType.UnableCeFangDaoKuStep1;
            if (j(list, teachTipType2)) {
                return;
            }
            TeachTypeData teachTypeData2 = new TeachTypeData(teachTipType2, 0, teachModel, normalVariable);
            teachTypeData2.desc = "第一步错误";
            b(list.get(0), teachTypeData2, true);
        }
    }

    private static void b(TraceItemModel traceItemModel, TeachTypeData teachTypeData, boolean z) {
        Object obj = traceItemModel.extra;
        if (obj != null) {
            List list = (List) obj;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((TeachTypeData) it.next()).type == teachTypeData.type) {
                    return;
                }
            }
            if (z) {
                list.add(0, teachTypeData);
            } else {
                list.add(teachTypeData);
            }
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(teachTypeData);
            traceItemModel.extra = arrayList;
        }
        f.o("分析出教学点名称:" + traceItemModel.x + "," + traceItemModel.y + "," + teachTypeData.desc + "," + teachTypeData.type + "," + teachTypeData.data1 + "," + teachTypeData.data2 + ",step:" + ((int) traceItemModel.step) + ",subStep=" + teachTypeData.teach.subStep + ",code:" + traceItemModel.hashCode());
    }

    private static void c(List<TraceItemModel> list, TeachModel teachModel, NormalVariable normalVariable) {
        int i = teachModel.step;
        int i2 = teachModel.subStep;
        if (i == Step.K2_ShangPoQiBu.type && i2 == 1) {
            TeachTipType teachTipType = TeachTipType.RightDistance;
            if (!j(list, teachTipType)) {
                TeachTypeData teachTypeData = new TeachTypeData(teachTipType, 35, teachModel, normalVariable);
                teachTypeData.desc = k0.a(R.string.teachingk2_keep_right);
                b(list.get(0), teachTypeData, true);
                return;
            }
        }
        if (i == Step.K2_ZhiJiaoZhuanWan.type && i2 == 1) {
            TeachTipType teachTipType2 = TeachTipType.RangeDistance;
            if (!j(list, teachTipType2)) {
                TraceItemModel traceItemModelF = f(list, TeachTipType.Wheel);
                if (traceItemModelF == null) {
                    return;
                }
                TeachTypeData teachTypeData2 = new TeachTypeData(teachTipType2, 10, teachModel, normalVariable);
                teachTypeData2.pos = new Pos(traceItemModelF);
                teachTypeData2.desc = k0.a(teachModel.stepDirection == 2 ? R.string.teachingk2_keep_left : R.string.teachingk2_keep_right);
                b(list.get(0), teachTypeData2, true);
                return;
            }
        }
        if (i == Step.K2_CeFangTingChe.type && i2 == 1) {
            TeachTipType teachTipType3 = TeachTipType.RangeDistance;
            if (!j(list, teachTipType3)) {
                TeachTypeData teachTypeData3 = new TeachTypeData(teachTipType3, 20, teachModel, normalVariable);
                teachTypeData3.desc = k0.a(R.string.teachingk2_keep_right);
                teachTypeData3.pos = new Pos(list.get(list.size() - 1));
                b(list.get(0), teachTypeData3, true);
                return;
            }
        }
        if (i == Step.K2_DaoCheRuKu.type && i2 == 1) {
            TeachTipType teachTipType4 = TeachTipType.RangeDistance;
            if (j(list, teachTipType4)) {
                return;
            }
            TeachTypeData teachTypeData4 = new TeachTypeData(teachTipType4, 20, teachModel, normalVariable);
            teachTypeData4.pos = new Pos(list.get(list.size() - 1));
            teachTypeData4.desc = k0.a(teachModel.stepDirection == 2 ? R.string.teachingk2_keep_left : R.string.teachingk2_keep_right);
            b(list.get(0), teachTypeData4, true);
        }
    }

    public static boolean d(TraceItemModel traceItemModel, TeachTipType teachTipType) {
        Object obj = traceItemModel.extra;
        if (obj == null) {
            return false;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            if (((TeachTypeData) it.next()).type == teachTipType) {
                return true;
            }
        }
        return false;
    }

    private static String e(double d2, double d3, double d4) {
        if (Math.abs(d3) < 45.0d) {
            return k0.a(R.string.teachingk2_tip_back_initial);
        }
        if (d3 > 500.0d) {
            return k0.a(R.string.teachingk2_steering_right_full);
        }
        if (d3 < -500.0d) {
            return k0.a(R.string.teachingk2_steering_left_full);
        }
        if (Math.abs(d2) < 45.0d) {
            if (d3 > 320.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_one);
            }
            if (d3 < -320.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_one);
            }
            if (d3 > 150.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_half);
            }
            if (d3 < -150.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_half);
            }
            if (d3 > 60.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_quarter);
            }
            if (d3 < -60.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_quarter);
            }
            return d3 > 0.0d ? k0.a(R.string.teachingk2_tip_turn_right) : k0.a(R.string.teachingk2_tip_turn_left);
        }
        if (Math.abs(d2) <= 300.0d) {
            if (d3 > 300.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_one);
            }
            if (d3 > 120.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_half);
            }
            if (d3 > 60.0d) {
                return k0.a(R.string.teachingk2_tip_turn_right_quarter);
            }
            if (d3 < -300.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_one);
            }
            if (d3 < -120.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_half);
            }
            if (d3 < -60.0d) {
                return k0.a(R.string.teachingk2_tip_turn_left_quarter);
            }
            return d3 > 0.0d ? k0.a(R.string.teachingk2_tip_to_turn_right) : k0.a(R.string.teachingk2_tip_to_turn_left);
        }
        String strA = k0.a(d4 > 0.0d ? R.string.teachingk2_tip_turn_right : R.string.teachingk2_tip_turn_left);
        if (Math.abs(d4 - 90.0d) > 45.0d && Math.abs(d4 + 90.0d) > 45.0d) {
            if (Math.abs(d4 - 180.0d) > 45.0d && Math.abs(d4 + 180.0d) > 45.0d) {
                if (Math.abs(d4 - 360.0d) > 45.0d && Math.abs(d4 + 360.0d) > 45.0d) {
                    if (Math.abs(d4 - 540.0d) <= 45.0d || d4 > 520.0d) {
                        return String.format(k0.a(R.string.teachingk2_turn_one_half_round), strA);
                    }
                    return (Math.abs(d4 + 540.0d) <= 45.0d || d4 < -520.0d) ? String.format(k0.a(R.string.teachingk2_turn_one_half_round), strA) : k0.a(R.string.teachingk2_tip_back_initial);
                }
                return String.format(k0.a(R.string.teachingk2_turn_one_round), strA);
            }
            return String.format(k0.a(R.string.teachingk2_turn_half_round), strA);
        }
        return String.format(k0.a(R.string.teachingk2_turn_quarter_round), strA);
    }

    private static TraceItemModel f(List<TraceItemModel> list, TeachTipType teachTipType) {
        for (TraceItemModel traceItemModel : list) {
            Object obj = traceItemModel.extra;
            if (obj != null) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    if (((TeachTypeData) it.next()).type == teachTipType) {
                        return traceItemModel;
                    }
                }
            }
        }
        return null;
    }

    public static TeachTip g(List<TraceItemModel> list, int i, int i2, int i3) {
        TeachTip teachTip = new TeachTip();
        teachTip.step = i;
        teachTip.subStep = i2;
        teachTip.stepDirection = i3;
        ArrayList arrayList = new ArrayList();
        Iterator<TraceItemModel> it = list.iterator();
        while (it.hasNext()) {
            Object obj = it.next().extra;
            if (obj instanceof List) {
                for (Object obj2 : (List) obj) {
                    if (obj2 instanceof TeachTypeData) {
                        TeachTypeData teachTypeData = (TeachTypeData) obj2;
                        if (teachTypeData.type.needShow()) {
                            arrayList.add(teachTypeData);
                        }
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            teachTip.steps = arrayList;
        }
        return teachTip;
    }

    public static List<TraceItemModel> h(List<TraceItemModel> list, b bVar, List<TeachModel> list2, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<?, ?> bVar2, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3, f0 f0Var) {
        NormalVariable normalVariable;
        Iterator<TeachModel> it;
        List<TeachModel> list3 = list2;
        if (g.b(list2) || g.b(list)) {
            return null;
        }
        Pos pos = new Pos();
        Pos pos2 = new Pos();
        Iterator<TeachModel> it2 = list2.iterator();
        while (it2.hasNext()) {
            TeachModel next = it2.next();
            if (next.pointType == 2 && !l.a(next, bVar2, bVar3, f0Var) && (normalVariable = next.getNormalVariable()) != null) {
                VoiceModel voiceModel = next.getVoiceModel();
                String str = voiceModel != null ? voiceModel.shortVoice : null;
                Pos posC = bVar.c(normalVariable.posOnLine);
                int size = list.size();
                if (posC.distanceSquare(list.get(0)) > 961.0d) {
                    it = it2;
                    if (posC.vectorTo(list.get(0), pos).dot(list.get(0).vectorTo(list.get(1), pos2)) < 0.0d) {
                        int i = size - 1;
                        if (posC.distanceSquare(list.get(i)) <= 961.0d || list.get(i).vectorTo(posC, pos).dot(list.get(i).vectorTo(list.get(size - 3), pos2)) < 0.0d) {
                            pos = pos;
                            pos2 = pos2;
                            k(i, list.get(i), list, str, next, normalVariable);
                        } else {
                            int i2 = 0;
                            while (true) {
                                if (i2 < i) {
                                    TraceItemModel traceItemModel = list.get(i2);
                                    int i3 = i2 + 1;
                                    TraceItemModel traceItemModel2 = list.get(i3);
                                    pos = pos;
                                    if (traceItemModel.vectorTo(posC, pos).dot(posC.vectorTo(traceItemModel2, pos2)) < 0.0d && traceItemModel.distanceSquare(posC) >= 961.0d) {
                                        i2 = i3;
                                        pos = pos;
                                    } else if (posC.distanceSquare(traceItemModel) < 10.0d) {
                                        k(i2, traceItemModel, list, str, next, normalVariable);
                                    } else if (posC.distanceSquare(traceItemModel2) < 10.0d) {
                                        k(i3, traceItemModel2, list, str, next, normalVariable);
                                    } else {
                                        TraceItemModel traceItemModelCopy = traceItemModel.copy();
                                        traceItemModelCopy.x = posC.x;
                                        double d2 = traceItemModel.y;
                                        pos2 = pos2;
                                        double d3 = posC.x;
                                        double d4 = traceItemModel.x;
                                        traceItemModelCopy.y = d2 + (((d3 - d4) * (traceItemModel2.y - d2)) / (traceItemModel2.x - d4));
                                        list.add(i3, traceItemModelCopy);
                                        k(i3, traceItemModelCopy, list, str, next, normalVariable);
                                    }
                                } else {
                                    pos = pos;
                                }
                                pos2 = pos2;
                            }
                        }
                    }
                    list3 = list2;
                    it2 = it;
                    pos = pos;
                    pos2 = pos2;
                } else {
                    it = it2;
                }
                k(0, list.get(0), list, str, next, normalVariable);
                list3 = list2;
                it2 = it;
                pos = pos;
                pos2 = pos2;
            }
        }
        List<TeachModel> list4 = list3;
        c(list, list4.get(0), null);
        a(list, list4.get(0), null);
        return list;
    }

    private static boolean i(TeachModel teachModel) {
        int i;
        int i2 = teachModel.step;
        return i2 == Step.K2_ZhiJiaoZhuanWan.type || i2 == Step.K2_ZhaiLuDiaoTou.type || i2 == Step.K2_JinJiQingKuang.type || i2 == Step.K2_SuiDao.type || (i2 == Step.K2_CeFangTingChe.type && teachModel.subStep == 3) || ((i2 == Step.K2_DaoCheRuKu.type && ((i = teachModel.subStep) == 3 || i == 5)) || i2 == Step.K2_ShiHuaLuMian.type || i2 == Step.K2_ShangPoQiBu.type);
    }

    private static boolean j(List<TraceItemModel> list, TeachTipType teachTipType) {
        Iterator<TraceItemModel> it = list.iterator();
        while (it.hasNext()) {
            if (d(it.next(), teachTipType)) {
                return true;
            }
        }
        return false;
    }

    private static void k(int i, TraceItemModel traceItemModel, List<TraceItemModel> list, String str, TeachModel teachModel, NormalVariable normalVariable) {
        int i2;
        int i3;
        byte b;
        byte b2;
        int iMax = Math.max(0, i - 5);
        int iMin = Math.min(list.size() - 1, i + 5);
        int i4 = iMax;
        while (i4 < iMin) {
            TraceItemModel traceItemModel2 = list.get(i4);
            i4++;
            TraceItemModel traceItemModel3 = list.get(i4);
            if (traceItemModel2.honk == 0 && traceItemModel3.honk == 1 && traceItemModel2.step == Step.K2_SuiDao.type) {
                TeachTypeData teachTypeData = new TeachTypeData(TeachTipType.Honk, 0, teachModel, normalVariable);
                teachTypeData.desc = (!n0.g(str) || d(traceItemModel, TeachTipType.Wheel)) ? k0.a(R.string.teachingk2_tip_honk) : str;
                b(traceItemModel, teachTypeData, false);
                return;
            } else if (traceItemModel2.handbrake == 0 && traceItemModel3.handbrake == 1 && traceItemModel2.step == Step.K2_ShangPoQiBu.type) {
                TeachTypeData teachTypeData2 = new TeachTypeData(TeachTipType.HandBrake, 0, teachModel, normalVariable);
                teachTypeData2.desc = (!n0.g(str) || d(traceItemModel, TeachTipType.Wheel)) ? k0.a(R.string.teachingk2_stop_handbrake) : str;
                b(traceItemModel, teachTypeData2, false);
                return;
            }
        }
        boolean zI = i(teachModel);
        int i5 = iMax;
        while (true) {
            if (zI && i5 < iMin) {
                TraceItemModel traceItemModel4 = list.get(i5);
                int i6 = i5 + 1;
                TraceItemModel traceItemModel5 = list.get(i6);
                byte b3 = traceItemModel4.light;
                if ((b3 == 0 && traceItemModel5.light == 1) || ((b3 == 1 && traceItemModel5.light == 1 && !j(list, TeachTipType.Light)) || (i5 == 0 && traceItemModel4.light == 1 && !j(list, TeachTipType.Light)))) {
                    TeachTypeData teachTypeData3 = new TeachTypeData(TeachTipType.Light, Light.TurnLeftLight.lightId, teachModel, normalVariable);
                    teachTypeData3.desc = k0.a(R.string.teachingk2_tip_open_left_light);
                    b(traceItemModel, teachTypeData3, false);
                } else {
                    byte b4 = traceItemModel4.light;
                    if (b4 == 0) {
                        b2 = 2;
                        if (traceItemModel5.light != 2) {
                        }
                        TeachTypeData teachTypeData4 = new TeachTypeData(TeachTipType.Light, Light.TurnRightLight.lightId, teachModel, normalVariable);
                        teachTypeData4.desc = k0.a(R.string.teachingk2_tip_open_right_light);
                        b(traceItemModel, teachTypeData4, false);
                    } else {
                        b2 = 2;
                    }
                    if (b4 == b2 && traceItemModel5.light == b2 && !j(list, TeachTipType.Light)) {
                        TeachTypeData teachTypeData5 = new TeachTypeData(TeachTipType.Light, Light.TurnRightLight.lightId, teachModel, normalVariable);
                        teachTypeData5.desc = k0.a(R.string.teachingk2_tip_open_right_light);
                        b(traceItemModel, teachTypeData5, false);
                    } else {
                        byte b5 = traceItemModel4.light;
                        if ((b5 == 0 && traceItemModel5.light == 3) || (b5 == 3 && traceItemModel5.light == 3 && !j(list, TeachTipType.Light))) {
                            TeachTypeData teachTypeData6 = new TeachTypeData(TeachTipType.Light, Light.WarningLight.lightId, teachModel, normalVariable);
                            teachTypeData6.desc = (!n0.g(str) || d(traceItemModel, TeachTipType.Wheel)) ? k0.a(R.string.teachingk2_tip_open_warning_light) : str;
                            b(traceItemModel, teachTypeData6, false);
                            return;
                        }
                        i5 = i6;
                    }
                }
            }
            TeachTipType teachTipType = TeachTipType.Stop;
            boolean zD = d(traceItemModel, teachTipType);
            if ((i == list.size() - 1 || traceItemModel.distanceSquare(list.get(list.size() - 1)) < 1600.0d) && !zD) {
                TeachTypeData teachTypeData7 = new TeachTypeData(teachTipType, 0, teachModel, normalVariable);
                teachTypeData7.desc = (!n0.g(str) || d(traceItemModel, TeachTipType.Wheel)) ? k0.a(R.string.teachingk2_tip_stop_car) : str;
                b(traceItemModel, teachTypeData7, false);
                return;
            }
            if (zD) {
                byte b6 = -1;
                while (true) {
                    if (iMax >= iMin) {
                        b = -1;
                        break;
                    }
                    TraceItemModel traceItemModel6 = list.get(iMax);
                    iMax++;
                    TraceItemModel traceItemModel7 = list.get(iMax);
                    if (b6 == -1) {
                        b6 = traceItemModel6.gear;
                    }
                    b = traceItemModel7.gear;
                    if (b6 != b && b != Gear.Invalid.gear) {
                        break;
                    }
                }
                if (b6 != b && b != -1 && b6 != -1) {
                    TeachTypeData teachTypeData8 = new TeachTypeData(TeachTipType.Gear, m(b), teachModel, normalVariable);
                    teachTypeData8.data2 = m(b6);
                    teachTypeData8.desc = (!n0.g(str) || d(traceItemModel, TeachTipType.Wheel)) ? "挂" + Gear.parse(m(b)).gearName : str;
                    b(traceItemModel, teachTypeData8, false);
                    return;
                }
            }
            int iMax2 = Math.max(0, i - 10);
            int iMin2 = Math.min(list.size() - 1, i + 20);
            int i7 = (int) (((double) list.get(iMax2).wheel) * b.f8088h);
            int i8 = i;
            int i9 = 0;
            while (true) {
                if (i8 <= iMax2) {
                    i2 = iMin2;
                    break;
                }
                TraceItemModel traceItemModel8 = list.get(i8 - 1);
                TraceItemModel traceItemModel9 = list.get(i8);
                double d2 = traceItemModel9.wheel;
                double d3 = b.f8088h;
                int i10 = iMin2;
                if (Math.abs(((int) (d2 * d3)) - ((int) (((double) traceItemModel8.wheel) * d3))) <= 1) {
                    i9++;
                    i3 = 2;
                } else {
                    i3 = 2;
                    i9 = 0;
                }
                if (i9 >= i3) {
                    i7 = (int) (((double) traceItemModel9.wheel) * b.f8088h);
                    i2 = i10;
                    break;
                } else {
                    i8--;
                    iMin2 = i10;
                }
            }
            int i11 = (int) (((double) list.get(i2).wheel) * b.f8088h);
            int i12 = 0;
            for (int i13 = i + 1; i13 <= i2; i13++) {
                TraceItemModel traceItemModel10 = list.get(i13 - 1);
                TraceItemModel traceItemModel11 = list.get(i13);
                double d4 = traceItemModel11.wheel;
                double d5 = b.f8088h;
                i12 = Math.abs(((int) (d4 * d5)) - ((int) (((double) traceItemModel10.wheel) * d5))) <= 1 ? i12 + 1 : 0;
                if (i12 >= 2 && Math.abs((((double) traceItemModel11.wheel) * b.f8088h) - ((double) i7)) > 70.0d) {
                    i11 = (int) (((double) traceItemModel11.wheel) * b.f8088h);
                    break;
                }
            }
            int i14 = i11 - i7;
            if (Math.abs(i14) < 70) {
                return;
            }
            TeachTypeData teachTypeData9 = new TeachTypeData(TeachTipType.Wheel, i7, teachModel, normalVariable);
            teachTypeData9.data2 = i11;
            teachTypeData9.desc = n0.g(str) ? str : e(i7, i11, i14);
            b(traceItemModel, teachTypeData9, false);
            return;
        }
    }

    public static List<TraceItemModel> l(List<TraceItemModel> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            TraceItemModel traceItemModel = list.get(i).copy().set(bVar.c(list.get(i)));
            if (arrayList.size() <= 0) {
                arrayList.add(traceItemModel);
            } else if (traceItemModel.distanceSquare((Pos) arrayList.get(arrayList.size() - 1)) >= 100.0d) {
                arrayList.add(traceItemModel);
            } else if (i == list.size() - 1) {
                arrayList.remove(arrayList.size() - 1);
                arrayList.add(traceItemModel);
            }
        }
        return arrayList;
    }

    private static int m(int i) {
        if (i == Gear.GearBack.gear || i == Gear.GearN.gear) {
            return i;
        }
        if (cn.mucang.android.jiakaoyi.signal.utils.f.c()) {
            return i == Gear.GearD.gear ? Gear.Gear1.gear : i;
        }
        return (!cn.mucang.android.jiakaoyi.signal.utils.f.b() || i < Gear.Gear1.gear || i > Gear.Gear5.gear) ? i : Gear.GearD.gear;
    }

    public static void n(List<TraceItemModel> list, int i, int i2) {
        TeachTypeData teachTypeData;
        int i3 = 0;
        while (i3 < list.size() && i3 != list.size() - 1) {
            if (d(list.get(i3), TeachTipType.Wheel)) {
                int i4 = i3 + 1;
                while (true) {
                    if (i4 >= list.size()) {
                        i4 = -1;
                        break;
                    } else if (d(list.get(i4), TeachTipType.Wheel)) {
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i4 == -1) {
                    return;
                }
                TraceItemModel traceItemModel = list.get(i3);
                double d2 = ((double) list.get(Math.max(0, i3 - 1)).wheel) * b.f8088h;
                double d3 = ((double) list.get(Math.max(0, Math.max(i3, i4 - 2))).wheel) * b.f8088h;
                double d4 = d3 - d2;
                Object obj = traceItemModel.extra;
                if (obj != null) {
                    Iterator it = ((List) obj).iterator();
                    do {
                        if (!it.hasNext()) {
                            teachTypeData = null;
                            break;
                        }
                        teachTypeData = (TeachTypeData) it.next();
                    } while (teachTypeData.type != TeachTipType.Wheel);
                    if (teachTypeData != null) {
                        teachTypeData.data1 = (int) d2;
                        teachTypeData.data2 = (int) d3;
                        if (Math.abs(d2 - d3) < 5.0d) {
                            ((List) traceItemModel.extra).remove(teachTypeData);
                            if (((List) traceItemModel.extra).isEmpty()) {
                                traceItemModel.extra = null;
                            }
                        } else {
                            VoiceModel voiceModel = teachTypeData.teach.getVoiceModel();
                            String strE = voiceModel != null ? voiceModel.shortVoice : null;
                            if (!n0.g(strE)) {
                                strE = e(d2, d3, d4);
                            }
                            teachTypeData.desc = strE;
                            if (MucangConfig.v()) {
                                f.o("trim wheel : " + traceItemModel.x + "," + traceItemModel.y + "," + teachTypeData.data1 + "," + teachTypeData.data2 + "," + teachTypeData.desc);
                            }
                            i3 = i4;
                        }
                    }
                }
            } else {
                i3++;
            }
        }
    }
}
