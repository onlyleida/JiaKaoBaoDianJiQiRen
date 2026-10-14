package cn.mucang.android.jiakaoyi.teachingk2.elements.i0;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import java.util.ArrayList;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Pos> f7047a = new ArrayList();
    private final List<Integer> b = new ArrayList();
    private final List<Integer> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Double> f7048d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Gear f7049e = Gear.Invalid;

    private static class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        T f7050a;

        private b() {
        }
    }

    private void a() {
        this.f7047a.clear();
        this.b.clear();
        this.c.clear();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [T, cn.mucang.android.jiakaoyi.teachingk2.elements.Variable, cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable, java.lang.Object] */
    private TeachModel b(Pos pos, Pos pos2, Step step, int i, int i2, boolean z, NormalVariable normalVariable, String str, b<NormalVariable> bVar) {
        TeachModel teachModel = new TeachModel();
        teachModel.subStep = i;
        teachModel.step = step.type;
        teachModel.pointType = normalVariable == null ? 2 : 1;
        teachModel.variableList = new ArrayList();
        teachModel.data = new ArrayList();
        ?? normalVariable2 = new NormalVariable();
        normalVariable2.setPos(pos, pos2);
        normalVariable2.width = i2;
        if (normalVariable != null) {
            normalVariable2.reportKey = normalVariable.key;
        }
        normalVariable2.isRange = z;
        normalVariable2.enable = true;
        teachModel.variableList.add((Variable) normalVariable2);
        VoiceModel voiceModel = new VoiceModel();
        voiceModel.voice = str;
        voiceModel.sound(teachModel.pointType == 2);
        teachModel.data.add(voiceModel);
        if (bVar != null) {
            bVar.f7050a = normalVariable2;
        }
        return teachModel;
    }

    private boolean d(int i, double d2, double d3) {
        return (Math.abs(d3) > 510.0d && i >= 2) || (i >= 4 && d2 > 40.0d) || ((i >= 3 && d2 > 50.0d) || (i >= 2 && d2 > 100.0d));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0781  */
    /* JADX WARN: Code duplicated, block: B:103:0x0784  */
    /* JADX WARN: Code duplicated, block: B:105:0x0790  */
    /* JADX WARN: Code duplicated, block: B:106:0x07fb  */
    /* JADX WARN: Code duplicated, block: B:109:0x0859  */
    /* JADX WARN: Code duplicated, block: B:111:0x085c  */
    /* JADX WARN: Code duplicated, block: B:114:0x0871  */
    /* JADX WARN: Code duplicated, block: B:118:0x088b  */
    /* JADX WARN: Code duplicated, block: B:120:0x088e  */
    /* JADX WARN: Code duplicated, block: B:127:0x08e2  */
    /* JADX WARN: Code duplicated, block: B:129:0x08e8  */
    /* JADX WARN: Code duplicated, block: B:131:0x08f5  */
    /* JADX WARN: Code duplicated, block: B:150:0x0948  */
    /* JADX WARN: Code duplicated, block: B:185:0x0a49  */
    /* JADX WARN: Code duplicated, block: B:188:0x0a51  */
    /* JADX WARN: Code duplicated, block: B:190:0x0a54  */
    /* JADX WARN: Code duplicated, block: B:192:0x08ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x0901 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x009f  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:58:0x0471  */
    /* JADX WARN: Code duplicated, block: B:59:0x0473  */
    /* JADX WARN: Code duplicated, block: B:90:0x073d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0743  */
    /* JADX WARN: Code duplicated, block: B:94:0x074b  */
    /* JADX WARN: Code duplicated, block: B:96:0x0764  */
    /* JADX WARN: Code duplicated, block: B:98:0x0767  */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    public List<TeachModel> c(Pos pos, Gear gear, int i, Step step, int i2, boolean z) {
        ArrayList arrayList;
        Step step2;
        ?? r13;
        Gear gear2;
        List<TeachModel> list;
        double d2;
        Pos pos2;
        List<TeachModel> list2;
        double dDoubleValue;
        double dIntValue;
        boolean z2;
        int iIntValue;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        double d3;
        List<TeachModel> list3;
        String str;
        boolean z3;
        double d4;
        int i9;
        List<Pos> list4;
        Gear gear3;
        Gear gear4;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i10 = i2;
        if (pos == null) {
            this.f7049e = gear;
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        f.o("insert : " + pos.x + "," + pos.y + "," + i + "," + step.type + "," + i10 + "," + z);
        String str2 = ",";
        if (z) {
            if (this.f7047a.size() > 0) {
                List<Pos> list5 = this.f7047a;
                if (pos.distanceTo(list5.get(list5.size() - 1)) > 5.0d) {
                    this.f7047a.add(pos);
                }
            }
            if (this.f7047a.size() < 2) {
                this.f7049e = gear;
                return null;
            }
            if (step != Step.K2_DaoCheRuKu) {
                arrayList = arrayList2;
                str2 = str2;
                if (step == Step.K2_CeFangTingChe || step == Step.B2_CeFangTingChe) {
                    i10 = i10;
                    step2 = step;
                    r13 = 1;
                    r13 = 1;
                    r13 = 1;
                    if (i10 == 1) {
                        TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
                        List<Pos> list6 = this.f7047a;
                        Pos pos3 = list6.get(list6.size() - 2);
                        List<Pos> list7 = this.f7047a;
                        arrayList.add(b(pos3, list7.get(list7.size() - 1), step, i2, 75, false, null, "请停车，挂倒挡，慢慢往后倒", null));
                    } else if (i10 == 2) {
                        TtsManager.r("停车、打左转向灯、挂前进挡、出库", TtsGrade.GlobalTip);
                        GearVariable gearVariable = new GearVariable();
                        gearVariable.gear = Gear.GearBack.gear;
                        gearVariable.enable = true;
                        List<Pos> list8 = this.f7047a;
                        Pos pos4 = list8.get(list8.size() - 2);
                        List<Pos> list9 = this.f7047a;
                        Pos pos5 = list9.get(list9.size() - 1);
                        TeachModel teachModelB = b(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos5, pos4, 5.0d), pos5, step, i2, 76, false, null, "请停车，挂空挡", null);
                        teachModelB.variableList.add(gearVariable);
                        arrayList.add(teachModelB);
                        GearVariable gearVariable2 = new GearVariable();
                        gearVariable2.gear = Gear.GearN.gear;
                        gearVariable2.enable = true;
                        List<Pos> list10 = this.f7047a;
                        Pos pos6 = list10.get(list10.size() - 2);
                        List<Pos> list11 = this.f7047a;
                        Pos pos7 = list11.get(list11.size() - 1);
                        TeachModel teachModelB2 = b(pos7, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos6, pos7, 10.0d), step, i2, 60, true, null, "请打左转向灯，挂前进挡，出库", null);
                        teachModelB2.variableList.add(gearVariable2);
                        arrayList.add(teachModelB2);
                    }
                } else {
                    if (step == Step.B2_ZhuangKao) {
                        switch (i10) {
                            case 1:
                            case 7:
                                z5 = true;
                                List<Pos> list12 = this.f7047a;
                                Pos pos8 = list12.get(list12.size() - 2);
                                List<Pos> list13 = this.f7047a;
                                arrayList.add(b(pos8, list13.get(list13.size() - 1), step, i2, 75, false, null, "请停车，挂倒挡，慢慢往后倒", null));
                                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
                                break;
                            case 2:
                                z5 = true;
                                TtsManager.r("停车挂1挡移库", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar = new b<>();
                                List<Pos> list14 = this.f7047a;
                                Pos pos9 = list14.get(list14.size() - 2);
                                List<Pos> list15 = this.f7047a;
                                Pos pos10 = list15.get(list15.size() - 1);
                                Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos10, pos9, 2.0d);
                                arrayList.add(b(posT, pos10, step, i2, 76, false, null, "停车挂1档", bVar));
                                arrayList.add(b(posT, pos10, step, i2, 76, false, bVar.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar));
                                List<Pos> list16 = this.f7047a;
                                Pos pos11 = list16.get(list16.size() - 2);
                                List<Pos> list17 = this.f7047a;
                                Pos pos12 = list17.get(list17.size() - 1);
                                TeachModel teachModelB3 = b(pos12, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos11, pos12, 10.0d), step, i2, 60, true, null, "请挂1挡移库", null);
                                DirectionVariable directionVariable = new DirectionVariable();
                                directionVariable.direction = CarModel.Direction.Stop.direction;
                                directionVariable.duration = Videoio.CAP_UNICAP;
                                directionVariable.enable = true;
                                GearVariable gearVariable3 = new GearVariable();
                                gearVariable3.gear = Gear.GearBack.gear;
                                gearVariable3.enable = true;
                                teachModelB3.variableList.add(directionVariable);
                                teachModelB3.variableList.add(gearVariable3);
                                arrayList.add(teachModelB3);
                                break;
                            case 3:
                            case 5:
                                z6 = true;
                                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar2 = new b<>();
                                List<Pos> list18 = this.f7047a;
                                Pos pos13 = list18.get(list18.size() - 2);
                                List<Pos> list19 = this.f7047a;
                                Pos pos14 = list19.get(list19.size() - 1);
                                Pos posT2 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos14, pos13, 2.0d);
                                arrayList.add(b(posT2, pos14, step, i2, 76, false, null, "停车挂倒档", bVar2));
                                arrayList.add(b(posT2, pos14, step, i2, 76, false, bVar2.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar2));
                                z5 = z6;
                                break;
                            case 4:
                                z6 = true;
                                TtsManager.r("停车挂1档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar3 = new b<>();
                                List<Pos> list20 = this.f7047a;
                                Pos pos15 = list20.get(list20.size() - 2);
                                List<Pos> list21 = this.f7047a;
                                Pos pos16 = list21.get(list21.size() - 1);
                                Pos posT3 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos16, pos15, 2.0d);
                                arrayList.add(b(posT3, pos16, step, i2, 76, false, null, "停车挂1档", bVar3));
                                arrayList.add(b(posT3, pos16, step, i2, 76, false, bVar3.f7050a, "请注意观察车身位置，即将停车", bVar3));
                                z5 = z6;
                                break;
                            case 6:
                            case 8:
                                TtsManager.r("停车挂1档出库", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar4 = new b<>();
                                List<Pos> list22 = this.f7047a;
                                Pos pos17 = list22.get(list22.size() - 2);
                                List<Pos> list23 = this.f7047a;
                                Pos pos18 = list23.get(list23.size() - 1);
                                Pos posT4 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos18, pos17, 2.0d);
                                if (i10 == 8) {
                                    z7 = true;
                                    arrayList.add(b(posT4, pos18, step, i2, 76, false, null, "停车挂1档", bVar4));
                                    arrayList.add(b(posT4, pos18, step, i2, 76, false, bVar4.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar4));
                                } else {
                                    z7 = true;
                                }
                                List<Pos> list24 = this.f7047a;
                                Pos pos19 = list24.get(list24.size() - 2);
                                List<Pos> list25 = this.f7047a;
                                Pos pos20 = list25.get(list25.size() - (z7 ? 1 : 0));
                                TeachModel teachModelB4 = b(pos20, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos19, pos20, 10.0d), step, i2, 60, true, null, "请挂前进挡出库", null);
                                DirectionVariable directionVariable2 = new DirectionVariable();
                                directionVariable2.direction = CarModel.Direction.Stop.direction;
                                directionVariable2.duration = Videoio.CAP_UNICAP;
                                directionVariable2.enable = z7;
                                GearVariable gearVariable4 = new GearVariable();
                                gearVariable4.gear = Gear.GearBack.gear;
                                gearVariable4.enable = z7;
                                teachModelB4.variableList.add(directionVariable2);
                                teachModelB4.variableList.add(gearVariable4);
                                arrayList.add(teachModelB4);
                                z6 = z7;
                                z5 = z6;
                                break;
                            default:
                                z6 = true;
                                z5 = z6;
                                break;
                        }
                        step2 = step;
                        z4 = z5;
                    } else {
                        z4 = true;
                        r13 = 1;
                        r13 = 1;
                        r13 = 1;
                        step2 = step;
                        if (step2 == Step.B2_ZhaiLuDiaoTou) {
                            if (i2 == 1) {
                                i10 = i2;
                                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar5 = new b<>();
                                List<Pos> list26 = this.f7047a;
                                Pos pos21 = list26.get(list26.size() - 2);
                                List<Pos> list27 = this.f7047a;
                                Pos pos22 = list27.get(list27.size() - 1);
                                Pos posT5 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos22, pos21, 2.0d);
                                arrayList.add(b(posT5, pos22, step, i2, 76, false, null, "停车挂倒档", bVar5));
                                arrayList.add(b(posT5, pos22, step, i2, 76, false, bVar5.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar5));
                            } else if (i2 == 2) {
                                TtsManager.r("停车挂1档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar6 = new b<>();
                                List<Pos> list28 = this.f7047a;
                                Pos pos23 = list28.get(list28.size() - 2);
                                List<Pos> list29 = this.f7047a;
                                Pos pos24 = list29.get(list29.size() - 1);
                                Pos posT6 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos24, pos23, 2.0d);
                                i10 = i2;
                                arrayList.add(b(posT6, pos24, step, i2, 76, false, null, "停车挂1档", bVar6));
                                arrayList.add(b(posT6, pos24, step, i2, 76, false, bVar6.f7050a, "请注意观察车身位置，即将停车", bVar6));
                            } else if (i2 == 3) {
                                i10 = i2;
                                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar7 = new b<>();
                                List<Pos> list210 = this.f7047a;
                                Pos pos25 = list210.get(list210.size() - 2);
                                List<Pos> list211 = this.f7047a;
                                Pos pos26 = list211.get(list211.size() - 1);
                                Pos posT7 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos26, pos25, 2.0d);
                                arrayList.add(b(posT7, pos26, step, i2, 76, false, null, "停车挂倒档", bVar7));
                                arrayList.add(b(posT7, pos26, step, i2, 76, false, bVar7.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar7));
                            } else if (i2 != 4) {
                                i10 = i2;
                            } else {
                                TtsManager.r("停车挂1档", TtsGrade.GlobalTip);
                                b<NormalVariable> bVar8 = new b<>();
                                List<Pos> list212 = this.f7047a;
                                Pos pos27 = list212.get(list212.size() - 2);
                                List<Pos> list213 = this.f7047a;
                                Pos pos28 = list213.get(list213.size() - 1);
                                Pos posT8 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos28, pos27, 2.0d);
                                i10 = i2;
                                arrayList.add(b(posT8, pos28, step, i2, 76, false, null, "停车挂1档", bVar8));
                                arrayList.add(b(posT8, pos28, step, i2, 76, false, bVar8.f7050a, "请注意观察车身位置，即将停车", bVar8));
                            }
                        }
                    }
                    i10 = i2;
                    r13 = z4;
                }
            } else if (i10 == 1) {
                arrayList = arrayList2;
                str2 = str2;
                List<Pos> list30 = this.f7047a;
                Pos pos29 = list30.get(list30.size() - 2);
                List<Pos> list31 = this.f7047a;
                arrayList.add(b(pos29, list31.get(list31.size() - 1), step, i2, 75, false, null, "请停车，挂倒挡，慢慢往后倒", null));
                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
            } else if (i10 == 2) {
                TtsManager.r("停车挂前进挡出库", TtsGrade.GlobalTip);
                b<NormalVariable> bVar9 = new b<>();
                List<Pos> list32 = this.f7047a;
                Pos pos30 = list32.get(list32.size() - 2);
                List<Pos> list33 = this.f7047a;
                Pos pos31 = list33.get(list33.size() - 1);
                Pos posT9 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos31, pos30, 2.0d);
                arrayList2.add(b(posT9, pos31, step, i2, 76, false, null, "请停车", bVar9));
                arrayList = arrayList2;
                arrayList.add(b(posT9, pos31, step, i2, 76, false, bVar9.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar9));
                List<Pos> list34 = this.f7047a;
                Pos pos32 = list34.get(list34.size() - 2);
                List<Pos> list35 = this.f7047a;
                Pos pos33 = list35.get(list35.size() - 1);
                TeachModel teachModelB5 = b(pos33, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos32, pos33, 10.0d), step, i2, 60, true, null, "请挂前进挡出库", null);
                DirectionVariable directionVariable3 = new DirectionVariable();
                directionVariable3.direction = CarModel.Direction.Stop.direction;
                directionVariable3.duration = Videoio.CAP_UNICAP;
                directionVariable3.enable = true;
                GearVariable gearVariable5 = new GearVariable();
                gearVariable5.gear = Gear.GearBack.gear;
                gearVariable5.enable = true;
                teachModelB5.variableList.add(directionVariable3);
                teachModelB5.variableList.add(gearVariable5);
                arrayList.add(teachModelB5);
            } else if (i10 == 3) {
                arrayList = arrayList2;
                str2 = str2;
                List<Pos> list36 = this.f7047a;
                Pos pos210 = list36.get(list36.size() - 2);
                List<Pos> list37 = this.f7047a;
                arrayList.add(b(pos210, list37.get(list37.size() - 1), step, i2, 75, false, null, "请停车，挂倒挡，慢慢往后倒", null));
                TtsManager.r("停车挂倒档", TtsGrade.GlobalTip);
            } else if (i10 != 4) {
                arrayList = arrayList2;
            } else {
                TtsManager.r("停车挂前进挡出库", TtsGrade.GlobalTip);
                b<NormalVariable> bVar10 = new b<>();
                List<Pos> list38 = this.f7047a;
                Pos pos34 = list38.get(list38.size() - 2);
                List<Pos> list39 = this.f7047a;
                Pos pos35 = list39.get(list39.size() - 1);
                Pos posT10 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos35, pos34, 2.0d);
                arrayList2.add(b(posT10, pos35, step, i2, 76, false, null, "请停车", bVar10));
                arrayList = arrayList2;
                arrayList.add(b(posT10, pos35, step, i2, 76, false, bVar10.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar10));
                List<Pos> list310 = this.f7047a;
                Pos pos36 = list310.get(list310.size() - 2);
                List<Pos> list311 = this.f7047a;
                Pos pos37 = list311.get(list311.size() - 1);
                TeachModel teachModelB6 = b(pos37, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos36, pos37, 10.0d), step, i2, 60, true, null, "请挂前进挡出库", null);
                DirectionVariable directionVariable4 = new DirectionVariable();
                directionVariable4.direction = CarModel.Direction.Stop.direction;
                directionVariable4.duration = Videoio.CAP_UNICAP;
                directionVariable4.enable = true;
                GearVariable gearVariable6 = new GearVariable();
                gearVariable6.gear = Gear.GearBack.gear;
                gearVariable6.enable = true;
                teachModelB6.variableList.add(directionVariable4);
                teachModelB6.variableList.add(gearVariable6);
                arrayList.add(teachModelB6);
            }
            if (step2 == Step.B2_ZhuangKao || i10 != 3 || z || this.f7047a.size() < 2 || (gear3 = this.f7049e) == (gear4 = Gear.Invalid) || gear == gear4 || gear3 == gear) {
                gear2 = gear;
                list = null;
                d2 = 10.0d;
            } else {
                TtsManager.r("挂" + gear.gearName, TtsGrade.GlobalTip);
                b<NormalVariable> bVar11 = new b<>();
                List<Pos> list40 = this.f7047a;
                Pos pos38 = list40.get(list40.size() - 2);
                List<Pos> list41 = this.f7047a;
                Pos pos39 = list41.get(list41.size() - r13);
                Pos posT11 = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos39, pos38, 2.0d);
                list = null;
                arrayList.add(b(posT11, pos39, step, i2, 76, false, null, "请停车", bVar11));
                arrayList.add(b(posT11, pos39, step, i2, 76, false, bVar11.f7050a, "请注意后视镜下沿和线的位置，即将停车", bVar11));
                List<Pos> list42 = this.f7047a;
                Pos pos40 = list42.get(list42.size() - 2);
                List<Pos> list43 = this.f7047a;
                Pos pos41 = list43.get(list43.size() - r13);
                gear2 = gear;
                d2 = 10.0d;
                TeachModel teachModelB7 = b(pos41, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos40, pos41, 10.0d), step, i2, 60, true, null, "请挂" + gear.gearName, null);
                DirectionVariable directionVariable5 = new DirectionVariable();
                directionVariable5.direction = CarModel.Direction.Stop.direction;
                directionVariable5.duration = Videoio.CAP_UNICAP;
                directionVariable5.enable = r13;
                GearVariable gearVariable7 = new GearVariable();
                gearVariable7.gear = this.f7049e.gear;
                gearVariable7.enable = r13;
                teachModelB7.variableList.add(directionVariable5);
                teachModelB7.variableList.add(gearVariable7);
                arrayList.add(teachModelB7);
            }
            if (arrayList.size() > 0) {
                a();
                this.f7049e = gear2;
                return arrayList;
            }
            if (this.f7047a.size() > 0) {
                list4 = this.f7047a;
                pos2 = pos;
                list2 = list;
                if (pos2.distanceTo(list4.get(list4.size() - r13)) < d2) {
                    this.f7049e = gear2;
                    return list2;
                }
            } else {
                pos2 = pos;
                list2 = list;
            }
            this.f7047a.add(pos2);
            this.b.add(Integer.valueOf(i));
            if (this.f7047a.size() == r13) {
                this.f7049e = gear2;
                return list2;
            }
            if (this.f7047a.size() == 2) {
                this.c.add(Integer.valueOf(this.b.get(r13).intValue() - this.b.get(0).intValue()));
                this.c.add(Integer.valueOf(this.b.get(r13).intValue() - this.b.get(0).intValue()));
                this.f7048d.add(Double.valueOf(0.0d));
                this.f7048d.add(Double.valueOf(this.f7047a.get(r13).distanceTo(this.f7047a.get(0))));
            } else {
                List<Integer> list44 = this.c;
                List<Integer> list45 = this.b;
                int iIntValue2 = list45.get(list45.size() - r13).intValue();
                List<Integer> list46 = this.b;
                list44.add(Integer.valueOf(iIntValue2 - list46.get(list46.size() - 2).intValue()));
                List<Double> list47 = this.f7048d;
                List<Pos> list48 = this.f7047a;
                Pos pos42 = list48.get(list48.size() - r13);
                List<Pos> list49 = this.f7047a;
                list47.add(Double.valueOf(pos42.distanceTo(list49.get(list49.size() - 2))));
            }
            if (this.f7047a.size() < 3) {
                this.f7049e = gear2;
                return list2;
            }
            dDoubleValue = 0.0d;
            dIntValue = 0.0d;
            z2 = false;
            iIntValue = 0;
            i3 = 0;
            i4 = 0;
            i5 = -1;
            while (true) {
                if (i3 < this.c.size()) {
                    if (!z2 || Math.abs(this.c.get(i3).intValue()) <= 15) {
                        z3 = z2;
                    } else {
                        i5 = i3;
                        z3 = true;
                    }
                    if (z3) {
                        iIntValue += this.c.get(i3).intValue();
                        dDoubleValue += this.f7048d.get(i3).doubleValue();
                    }
                    i6 = iIntValue;
                    d4 = dDoubleValue;
                    if (Math.abs(this.c.get(i3).intValue()) < 10 && z3) {
                        i4++;
                        dIntValue = this.b.get(i3).intValue();
                    }
                    i9 = i4;
                    int i11 = i3;
                    if (d(i9, d4, dIntValue)) {
                        z2 = z3;
                        i4 = i9;
                        dDoubleValue = d4;
                    } else if (Math.abs(i6) < 90) {
                        z2 = false;
                        dDoubleValue = 0.0d;
                        i4 = 0;
                        i5 = -1;
                    } else {
                        i7 = i9;
                        i8 = i5;
                        d3 = d4;
                    }
                    i3 = i11 + 1;
                    iIntValue = i6;
                } else {
                    i6 = iIntValue;
                    i7 = i4;
                    i8 = i5;
                    d3 = dDoubleValue;
                }
            }
            double d5 = d3;
            if (d(i7, d3, dIntValue) || i8 >= this.c.size() - r13 || i8 < 0) {
                list3 = null;
            } else {
                double d6 = 15.0d;
                double d7 = i6;
                boolean z8 = Math.abs(i) < 45 || (Math.abs(i6) > 400 && Math.abs(i) < 90);
                String str3 = "向左打满";
                if (dIntValue <= 500.0d) {
                    if (dIntValue >= -500.0d) {
                        if (z8) {
                            d6 = 20.0d;
                            str3 = "回正";
                        } else if (d7 > 500.0d) {
                            str = "向右打满";
                        } else if (d7 > 300.0d) {
                            str3 = "向右打一圈";
                        } else if (d7 > 120.0d) {
                            str3 = "向右打半圈";
                        } else if (d7 > 60.0d) {
                            str3 = "向右打四分之一圈";
                        } else if (d7 >= -500.0d) {
                            if (d7 < -300.0d) {
                                str3 = "向左打一圈";
                            } else if (d7 < -120.0d) {
                                str3 = "向左打半圈";
                            } else if (d7 < -60.0d) {
                                str3 = "向左打四分之一圈";
                            } else {
                                str3 = d7 > 0.0d ? "向右打" : "向左打";
                            }
                        }
                    }
                    str = str3;
                } else {
                    str = "向右打满";
                }
                TtsManager.r(str, TtsGrade.GlobalTip);
                StringBuilder sb = new StringBuilder();
                sb.append("找到方向盘变化:");
                sb.append(i8);
                String str4 = str2;
                sb.append(str4);
                sb.append(i6);
                sb.append(str4);
                sb.append(d5);
                sb.append(str4);
                sb.append(str);
                f.o(sb.toString());
                b<NormalVariable> bVar12 = new b<>();
                Pos pos43 = this.f7047a.get(i8);
                Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(this.f7047a.get(i8 + r13), pos43, d6);
                list3 = null;
                arrayList.add(b(posS, pos43, step, i2, 80, false, null, str, bVar12));
                arrayList.add(b(posS, pos43, step, i2, 90, false, bVar12.f7050a, "即将" + str + "方向盘", bVar12));
            }
            if (arrayList.isEmpty()) {
                this.f7049e = gear2;
                return list3;
            }
            a();
            this.f7049e = gear2;
            return arrayList;
        }
        arrayList = arrayList2;
        str2 = str2;
        step2 = step;
        r13 = 1;
        if (step2 == Step.B2_ZhuangKao) {
            gear2 = gear;
            list = null;
            d2 = 10.0d;
        } else {
            gear2 = gear;
            list = null;
            d2 = 10.0d;
        }
        if (arrayList.size() > 0) {
            a();
            this.f7049e = gear2;
            return arrayList;
        }
        if (this.f7047a.size() > 0) {
            list4 = this.f7047a;
            pos2 = pos;
            list2 = list;
            if (pos2.distanceTo(list4.get(list4.size() - r13)) < d2) {
                this.f7049e = gear2;
                return list2;
            }
        } else {
            pos2 = pos;
            list2 = list;
        }
        this.f7047a.add(pos2);
        this.b.add(Integer.valueOf(i));
        if (this.f7047a.size() == r13) {
            this.f7049e = gear2;
            return list2;
        }
        if (this.f7047a.size() == 2) {
            this.c.add(Integer.valueOf(this.b.get(r13).intValue() - this.b.get(0).intValue()));
            this.c.add(Integer.valueOf(this.b.get(r13).intValue() - this.b.get(0).intValue()));
            this.f7048d.add(Double.valueOf(0.0d));
            this.f7048d.add(Double.valueOf(this.f7047a.get(r13).distanceTo(this.f7047a.get(0))));
        } else {
            List<Integer> list410 = this.c;
            List<Integer> list411 = this.b;
            int iIntValue3 = list411.get(list411.size() - r13).intValue();
            List<Integer> list412 = this.b;
            list410.add(Integer.valueOf(iIntValue3 - list412.get(list412.size() - 2).intValue()));
            List<Double> list413 = this.f7048d;
            List<Pos> list414 = this.f7047a;
            Pos pos44 = list414.get(list414.size() - r13);
            List<Pos> list415 = this.f7047a;
            list413.add(Double.valueOf(pos44.distanceTo(list415.get(list415.size() - 2))));
        }
        if (this.f7047a.size() < 3) {
            this.f7049e = gear2;
            return list2;
        }
        dDoubleValue = 0.0d;
        dIntValue = 0.0d;
        z2 = false;
        iIntValue = 0;
        i3 = 0;
        i4 = 0;
        i5 = -1;
        while (true) {
            if (i3 < this.c.size()) {
                if (z2) {
                    z3 = z2;
                } else {
                    z3 = z2;
                }
                if (z3) {
                    iIntValue += this.c.get(i3).intValue();
                    dDoubleValue += this.f7048d.get(i3).doubleValue();
                }
                i6 = iIntValue;
                d4 = dDoubleValue;
                if (Math.abs(this.c.get(i3).intValue()) < 10) {
                    i4++;
                    dIntValue = this.b.get(i3).intValue();
                }
                i9 = i4;
                int i12 = i3;
                if (d(i9, d4, dIntValue)) {
                    z2 = z3;
                    i4 = i9;
                    dDoubleValue = d4;
                } else if (Math.abs(i6) < 90) {
                    z2 = false;
                    dDoubleValue = 0.0d;
                    i4 = 0;
                    i5 = -1;
                } else {
                    i7 = i9;
                    i8 = i5;
                    d3 = d4;
                }
                i3 = i12 + 1;
                iIntValue = i6;
            } else {
                i6 = iIntValue;
                i7 = i4;
                i8 = i5;
                d3 = dDoubleValue;
            }
        }
        double d8 = d3;
        if (d(i7, d3, dIntValue)) {
            list3 = null;
        } else {
            list3 = null;
        }
        if (arrayList.isEmpty()) {
            this.f7049e = gear2;
            return list3;
        }
        a();
        this.f7049e = gear2;
        return arrayList;
    }
}
