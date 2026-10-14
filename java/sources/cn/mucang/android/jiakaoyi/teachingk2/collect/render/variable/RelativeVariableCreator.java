package cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarAngleToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarCrossRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelCrossOverLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.WheelDistanceToLineVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.ranges.f;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.i2.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u001d\u001a\u00020\u0010H\u0007J\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0004H\u0007J&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u00112\u0006\u0010\u0019\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R6\u0010\u000e\u001a*\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00110\u000fj\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0011`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0013\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00110\u000fj\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0011`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0014\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00110\u000fj\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0011`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/RelativeVariableCreator;", "", "()V", "CAR", "", "CAR_CENTER", "CAR_HEADER", "CAR_WHEEL", "RELATION_ANGLE", "RELATION_CROSS", "RELATION_DISTANCE", "RELATION_FULL_IN", "RELATION_STRADDLE", "RELATION_TOUCH", "carMap", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "", "Lkotlin/collections/HashMap;", "relationMap", "siteMap", "createVariable", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;", "car", "relation", "site", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "getCarWithStep", "step", "getRelationWithCar", "getSite", "parseIndex", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RelativeVariableCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RelativeVariableCreator f6655a = new RelativeVariableCreator();
    private static final HashMap<Step, List<String>> b = new HashMap<>();
    private static final HashMap<String, List<String>> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashMap<String, List<String>> f6656d = new HashMap<>();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.i2.a$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6657a;

        static {
            int[] iArr = new int[Step.values().length];
            iArr[Step.K2_DaoCheRuKu.ordinal()] = 1;
            iArr[Step.K2_ZhaiLuDiaoTou.ordinal()] = 2;
            iArr[Step.K2_QuKa.ordinal()] = 3;
            iArr[Step.K2_JinJiQingKuang.ordinal()] = 4;
            iArr[Step.K2_ETC.ordinal()] = 5;
            iArr[Step.K2_ShangPoQiBu.ordinal()] = 6;
            iArr[Step.K2_ZhiJiaoZhuanWan.ordinal()] = 7;
            iArr[Step.K2_CeFangTingChe.ordinal()] = 8;
            iArr[Step.K2_SQuXian.ordinal()] = 9;
            iArr[Step.K2_ShiHuaLuMian.ordinal()] = 10;
            iArr[Step.K2_SuiDao.ordinal()] = 11;
            f6657a = iArr;
        }
    }

    private RelativeVariableCreator() {
    }

    public static final Variable a(String car, String relation, String site, b bVar) {
        r.e(car, "car");
        r.e(relation, "relation");
        r.e(site, "site");
        List<Integer> listE = e(site);
        if (r.a("相交", relation)) {
            CarCrossRectVariable carCrossRectVariable = new CarCrossRectVariable();
            carCrossRectVariable.point1Index = listE.get(0).intValue();
            carCrossRectVariable.point2Index = listE.get(1).intValue();
            carCrossRectVariable.point3Index = listE.get(2).intValue();
            carCrossRectVariable.point4Index = listE.get(3).intValue();
            return carCrossRectVariable;
        }
        if (r.a("完全在", relation)) {
            CarInRectVariable carInRectVariable = new CarInRectVariable();
            carInRectVariable.point1Index = listE.get(0).intValue();
            carInRectVariable.point2Index = listE.get(1).intValue();
            carInRectVariable.point3Index = listE.get(2).intValue();
            carInRectVariable.point4Index = listE.get(3).intValue();
            return carInRectVariable;
        }
        if (r.a("夹角", relation)) {
            CarAngleToLineVariable carAngleToLineVariable = new CarAngleToLineVariable();
            carAngleToLineVariable.startPointIndex = listE.get(0).intValue();
            carAngleToLineVariable.endPointIndex = listE.get(1).intValue();
            if (bVar == null) {
                return carAngleToLineVariable;
            }
            carAngleToLineVariable.convertCoordinate(bVar.j());
            e eVarT = d.t();
            Pos posVectorTo = carAngleToLineVariable.startPoint.vectorTo(carAngleToLineVariable.endPoint);
            Pos posVectorTo2 = eVarT.c().back.vectorTo(eVarT.c().front);
            r.d(posVectorTo2, "signal.carPos.back.vectorTo(signal.carPos.front)");
            carAngleToLineVariable.degree = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) Math.toDegrees(posVectorTo.vectorAngle(posVectorTo2)));
            return carAngleToLineVariable;
        }
        if (!r.a("距离", relation)) {
            if (r.a("跨过", relation)) {
                WheelCrossOverLineVariable wheelCrossOverLineVariable = new WheelCrossOverLineVariable();
                wheelCrossOverLineVariable.startPointIndex = listE.get(0).intValue();
                wheelCrossOverLineVariable.endPointIndex = listE.get(1).intValue();
                return wheelCrossOverLineVariable;
            }
            if (r.a("车身", car)) {
                CarCrossLineVariable carCrossLineVariable = new CarCrossLineVariable();
                carCrossLineVariable.startPointIndex = listE.get(0).intValue();
                carCrossLineVariable.endPointIndex = listE.get(1).intValue();
                return carCrossLineVariable;
            }
            WheelCrossLineVariable wheelCrossLineVariable = new WheelCrossLineVariable();
            wheelCrossLineVariable.startPointIndex = listE.get(0).intValue();
            wheelCrossLineVariable.endPointIndex = listE.get(1).intValue();
            return wheelCrossLineVariable;
        }
        if (r.a(car, "车头")) {
            CarHeaderDistanceToLineVariable carHeaderDistanceToLineVariable = new CarHeaderDistanceToLineVariable();
            carHeaderDistanceToLineVariable.enable = true;
            carHeaderDistanceToLineVariable.startPointIndex = listE.get(0).intValue();
            carHeaderDistanceToLineVariable.endPointIndex = listE.get(1).intValue();
            if (bVar == null) {
                return carHeaderDistanceToLineVariable;
            }
            carHeaderDistanceToLineVariable.convertCoordinate(bVar.j());
            e eVarT2 = d.t();
            carHeaderDistanceToLineVariable.distance = (float) f.d(cn.mucang.android.jiakaoyi.hpmap.d.a.k(eVarT2.c().carRect.b, carHeaderDistanceToLineVariable.startPoint, carHeaderDistanceToLineVariable.endPoint), cn.mucang.android.jiakaoyi.hpmap.d.a.k(eVarT2.c().carRect.c, carHeaderDistanceToLineVariable.startPoint, carHeaderDistanceToLineVariable.endPoint));
            return carHeaderDistanceToLineVariable;
        }
        if (r.a(car, "车中心点")) {
            CarDistanceToLineVariable carDistanceToLineVariable = new CarDistanceToLineVariable();
            carDistanceToLineVariable.startPointIndex = listE.get(0).intValue();
            carDistanceToLineVariable.endPointIndex = listE.get(1).intValue();
            if (bVar == null) {
                return carDistanceToLineVariable;
            }
            carDistanceToLineVariable.convertCoordinate(bVar.j());
            carDistanceToLineVariable.distance = (float) cn.mucang.android.jiakaoyi.hpmap.d.a.k(d.t().c().center, carDistanceToLineVariable.startPoint, carDistanceToLineVariable.endPoint);
            return carDistanceToLineVariable;
        }
        WheelDistanceToLineVariable wheelDistanceToLineVariable = new WheelDistanceToLineVariable();
        wheelDistanceToLineVariable.startPointIndex = listE.get(0).intValue();
        wheelDistanceToLineVariable.endPointIndex = listE.get(1).intValue();
        if (bVar == null) {
            return wheelDistanceToLineVariable;
        }
        wheelDistanceToLineVariable.convertCoordinate(bVar.j());
        wheelDistanceToLineVariable.distance = (float) cn.mucang.android.jiakaoyi.hpmap.d.a.k(d.t().c().center, wheelDistanceToLineVariable.startPoint, wheelDistanceToLineVariable.endPoint);
        return wheelDistanceToLineVariable;
    }

    public static final List<String> b(Step step) {
        List<String> listP;
        r.e(step, "step");
        HashMap<Step, List<String>> map = b;
        List<String> list = map.get(step);
        if (list != null) {
            return list;
        }
        switch (a.f6657a[step.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                listP = u.p("车轮", "车头", "车中心点", "车身");
                break;
            case 6:
                listP = u.p("车轮", "车头", "车身");
                break;
            case 7:
                listP = u.p("车轮", "车头", "车身");
                break;
            case 8:
                listP = u.p("车轮", "车头", "车中心点", "车身");
                break;
            case 9:
                listP = u.p("车轮", "车头", "车身");
                break;
            case 10:
            case 11:
                listP = u.p("车头");
                break;
            default:
                listP = new ArrayList<>();
                break;
        }
        if (g.d(listP)) {
            map.put(step, listP);
        }
        return listP;
    }

    public static final List<String> c(Step step, String car) {
        List<String> arrayList;
        r.e(step, "step");
        r.e(car, "car");
        String strM = r.m(car, Integer.valueOf(step.type));
        HashMap<String, List<String>> map = c;
        List<String> list = map.get(strM);
        if (list != null) {
            return list;
        }
        if (r.a(car, "车轮")) {
            arrayList = u.p("接触", "跨过");
        } else {
            if (r.a(car, "车头") ? true : r.a(car, "车中心点")) {
                arrayList = u.p("距离");
            } else if (r.a(car, "车身")) {
                arrayList = (step == Step.K2_DaoCheRuKu || step == Step.K2_CeFangTingChe) ? u.p("接触", "夹角", "完全在", "相交") : u.p("接触", "夹角");
            } else {
                arrayList = new ArrayList<>();
            }
        }
        if (g.d(arrayList)) {
            map.put(strM, arrayList);
        }
        return arrayList;
    }

    public static final List<String> d(Step step, String car, String relation) {
        List<String> listP;
        r.e(step, "step");
        r.e(car, "car");
        r.e(relation, "relation");
        String str = car + relation + step.type;
        HashMap<String, List<String>> map = f6656d;
        List<String> list = map.get(str);
        if (list != null) {
            return list;
        }
        if (!r.a("相交", relation) && !r.a("完全在", relation)) {
            switch (a.f6657a[step.ordinal()]) {
                case 1:
                case 8:
                    listP = u.p("1--2线", "1--8线", "3--4线", "3--6线", "5--6线", "7--8线");
                    break;
                case 2:
                    listP = u.p("1--2线", "1--4线", "2--3线", "3--4线");
                    break;
                case 3:
                case 4:
                case 5:
                    listP = u.p("1--2线", "1--5线", "2--6线", "3--4线", "5--6线");
                    break;
                case 6:
                    listP = u.p("1--2线", "1--9线", "2--10线", "3--4线", "5--6线", "9--10线");
                    break;
                case 7:
                    listP = u.p("1--2线", "1--6线", "2--3线", "3--6线", "4--5线", "5--6线");
                    break;
                case 9:
                case 10:
                    listP = u.p("1--2线", "9--10线");
                    break;
                case 11:
                    listP = u.p("1--2线", "3--4线");
                    break;
                default:
                    listP = new ArrayList<>();
                    break;
            }
        } else {
            listP = u.p("3-4-5-6区域", "1-2-7-8区域");
        }
        if (g.d(listP)) {
            map.put(str, listP);
        }
        return listP;
    }

    public static final List<Integer> e(String site) {
        r.e(site, "site");
        Pattern patternCompile = Pattern.compile("[^0-9]+");
        r.d(patternCompile, "compile(regEx)");
        String[] cs = patternCompile.split(site);
        r.d(cs, "cs");
        ArrayList arrayList = new ArrayList(cs.length);
        for (String it : cs) {
            r.d(it, "it");
            arrayList.add(Integer.valueOf(Integer.parseInt(it)));
        }
        return arrayList;
    }
}
