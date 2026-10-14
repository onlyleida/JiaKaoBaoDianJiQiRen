package cn.mucang.android.jiakaoyi.mapcollect.collect.car;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.r0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class d extends u0<CarSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f4768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CarPos f4769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map<Integer, Pos> f4770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4771g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f4772h;
    private CarSrcData i;
    private final HpCarMapModel j;

    public d(HpCarMapModel hpCarMapModel) {
        super(new CarSrcData());
        this.f4768d = null;
        this.f4771g = false;
        this.f4772h = null;
        this.j = hpCarMapModel;
        this.f4769e = new CarPos();
        this.f4770f = new HashMap();
        n();
    }

    public static void f() {
        Set<String> setE = i0.e();
        if (g.b(setE)) {
            return;
        }
        for (String str : setE) {
            if (str.startsWith("car.position.")) {
                i0.h(str);
            }
        }
    }

    public static HpCarMapModel g(String str) {
        try {
            String strG = i0.g("car.position.987654321", "");
            if (!n0.e(strG)) {
                return (HpCarMapModel) JSON.parseObject(strG, HpCarMapModel.class);
            }
            String strG2 = i0.g("car.position." + str, "");
            if (!n0.e(strG2)) {
                return (HpCarMapModel) JSON.parseObject(strG2, HpCarMapModel.class);
            }
            Set<String> setE = i0.e();
            if (!g.b(setE)) {
                for (String str2 : setE) {
                    if (str2.startsWith("car.position.")) {
                        return (HpCarMapModel) JSON.parseObject(i0.g(str2, ""), HpCarMapModel.class);
                    }
                }
            }
            if (!AppUtils.j()) {
                if (!MucangConfig.v()) {
                    return null;
                }
                if (AppUtils.k() && !n.a()) {
                    return null;
                }
            }
            String str3 = AppUtils.l() ? "{\"backDistance\":32.0,\"carPoints\":{0:{\"altitude\":26.520999908447266,\"latitude\":30.434506675,\"longitude\":114.41985515333333},1:{\"altitude\":26.534000396728516,\"latitude\":30.434507593333333,\"longitude\":114.41985362833333},2:{\"altitude\":26.516000747680664,\"latitude\":30.434508565,\"longitude\":114.41985148333333},3:{\"altitude\":26.509000778198242,\"latitude\":30.434508301666668,\"longitude\":114.41984740666666},4:{\"altitude\":26.51300048828125,\"latitude\":30.434506543333335,\"longitude\":114.419844325},5:{\"altitude\":26.518999099731445,\"latitude\":30.434503426666666,\"longitude\":114.41984157166667},6:{\"altitude\":26.51300048828125,\"latitude\":30.43450077,\"longitude\":114.41983957666666},7:{\"altitude\":26.51300048828125,\"latitude\":30.434497156666666,\"longitude\":114.419836475},8:{\"altitude\":26.4950008392334,\"latitude\":30.434493576666668,\"longitude\":114.41983344333333},9:{\"altitude\":26.507999420166016,\"latitude\":30.434485563333332,\"longitude\":114.41982690666667},10:{\"altitude\":26.479000091552734,\"latitude\":30.43447837,\"longitude\":114.41982265333333},11:{\"altitude\":26.483999252319336,\"latitude\":30.434475231666667,\"longitude\":114.41982529833334},12:{\"altitude\":26.493000030517578,\"latitude\":30.434474343333335,\"longitude\":114.41982657},13:{\"altitude\":26.479999542236328,\"latitude\":30.434473458333333,\"longitude\":114.41982788166666},14:{\"altitude\":26.488000869750977,\"latitude\":30.434470735,\"longitude\":114.419835315},15:{\"altitude\":26.472000122070312,\"latitude\":30.434476601666667,\"longitude\":114.419841805},16:{\"altitude\":26.489999771118164,\"latitude\":30.434481551666668,\"longitude\":114.41984581},17:{\"altitude\":26.48200035095215,\"latitude\":30.434484515,\"longitude\":114.41984832833333},18:{\"altitude\":26.492000579833984,\"latitude\":30.434490151666665,\"longitude\":114.41985281833334},19:{\"altitude\":26.499000549316406,\"latitude\":30.434499101666667,\"longitude\":114.41985975333333},20:{\"altitude\":26.493000030517578,\"latitude\":30.434500036666666,\"longitude\":114.41985979},21:{\"altitude\":26.4950008392334,\"latitude\":30.434502903333332,\"longitude\":114.41985920666667},22:{\"altitude\":26.503000259399414,\"latitude\":30.434505341666668,\"longitude\":114.41985707333333},23:{\"altitude\":26.493999481201172,\"latitude\":30.434506528333333,\"longitude\":114.41985560166667}},\"frontDistance\":31.0,\"leftBackOffset\":-3.0,\"leftBackWidth\":15.0,\"leftFrontOffset\":-3.0,\"leftFrontWidth\":15.0,\"leftMirrorPoints\":{0:{\"altitude\":26.14900016784668,\"latitude\":30.434500296666666,\"longitude\":114.41983982666666},1:{\"altitude\":26.475000381469727,\"latitude\":30.434501968333333,\"longitude\":114.41983633333334},2:{\"altitude\":26.490999221801758,\"latitude\":30.434501565,\"longitude\":114.41983502333333},3:{\"altitude\":26.503000259399414,\"latitude\":30.434500656666668,\"longitude\":114.41983551333334},4:{\"altitude\":26.518999099731445,\"latitude\":30.434499773333332,\"longitude\":114.41983728833333},5:{\"altitude\":26.229999542236328,\"latitude\":30.434499698333333,\"longitude\":114.41983979333334}},\"mainPoint\":{\"altitude\":26.735000610351562,\"latitude\":30.434484103333332,\"longitude\":114.41983706166667},\"mainPosDegree\":32.978302001953125,\"mainPosDistance\":0.892494261264801,\"mainPosHeight\":150.0,\"pitch\":-6.823547840118408,\"rightBackOffset\":-4.0,\"rightBackWidth\":15.0,\"rightFrontOffset\":-4.0,\"rightFrontWidth\":15.0,\"rightMirrorPoints\":{0:{\"altitude\":26.21299934387207,\"latitude\":30.434492131666666,\"longitude\":114.41985316833333},1:{\"altitude\":26.506000518798828,\"latitude\":30.434488755,\"longitude\":114.41985712833333},2:{\"altitude\":26.527999877929688,\"latitude\":30.434487565,\"longitude\":114.41985702333334},3:{\"altitude\":26.503999710083008,\"latitude\":30.434487475,\"longitude\":114.419855495},4:{\"altitude\":26.503999710083008,\"latitude\":30.434489575,\"longitude\":114.419853275},5:{\"altitude\":26.261999130249023,\"latitude\":30.43449149,\"longitude\":114.41985260166666}},\"stepId\":-99,\"time\":1610682131687,\"wheelLeftBack\":{\"altitude\":26.500999450683594,\"latitude\":30.434485611666666,\"longitude\":114.41982706},\"wheelLeftFront\":{\"altitude\":26.481000900268555,\"latitude\":30.434504781666668,\"longitude\":114.41984253166666},\"wheelRightBack\":{\"altitude\":26.499000549316406,\"latitude\":30.434476695,\"longitude\":114.41984178333334},\"wheelRightFront\":{\"altitude\":26.503999710083008,\"latitude\":30.434495736666666,\"longitude\":114.41985747333334}}" : AppUtils.i() ? "{\"backDistance\":38.0,\"carPoints\":{0:{\"altitude\":30.777000427246094,\"latitude\":30.45757555,\"longitude\":114.44687216333334},1:{\"altitude\":30.77899932861328,\"latitude\":30.457574035,\"longitude\":114.44687321333333},2:{\"altitude\":30.78499984741211,\"latitude\":30.45757359,\"longitude\":114.44687363},3:{\"altitude\":30.783000946044922,\"latitude\":30.457573556666667,\"longitude\":114.44687378},4:{\"altitude\":30.770999908447266,\"latitude\":30.45757386,\"longitude\":114.44687867},5:{\"altitude\":30.77899932861328,\"latitude\":30.4575731,\"longitude\":114.44688028833333},6:{\"altitude\":30.792999267578125,\"latitude\":30.457576198333335,\"longitude\":114.44688794},7:{\"altitude\":30.777000427246094,\"latitude\":30.457573545,\"longitude\":114.44688878333334},8:{\"altitude\":30.768999099731445,\"latitude\":30.457574085,\"longitude\":114.44689184},9:{\"altitude\":30.767000198364258,\"latitude\":30.457575476666666,\"longitude\":114.44689865166667},10:{\"altitude\":30.78499984741211,\"latitude\":30.457576721666666,\"longitude\":114.446904455},11:{\"altitude\":30.759000778198242,\"latitude\":30.457577335,\"longitude\":114.44690746166667},12:{\"altitude\":30.756000518798828,\"latitude\":30.457583068333335,\"longitude\":114.446905865},13:{\"altitude\":30.761999130249023,\"latitude\":30.457588253333334,\"longitude\":114.44690409},14:{\"altitude\":30.7810001373291,\"latitude\":30.457587643333333,\"longitude\":114.44690125333334},15:{\"altitude\":30.761999130249023,\"latitude\":30.45758650166667,\"longitude\":114.44689563333333},16:{\"altitude\":30.775999069213867,\"latitude\":30.457584995,\"longitude\":114.44688884666667},17:{\"altitude\":30.757999420166016,\"latitude\":30.457584116666666,\"longitude\":114.446885765},18:{\"altitude\":30.759000778198242,\"latitude\":30.457581501666667,\"longitude\":114.446886475},19:{\"altitude\":30.76799964904785,\"latitude\":30.457580973333332,\"longitude\":114.44687817},20:{\"altitude\":30.766000747680664,\"latitude\":30.457579381666665,\"longitude\":114.44687658},21:{\"altitude\":30.767000198364258,\"latitude\":30.457578256666668,\"longitude\":114.44687288333333},22:{\"altitude\":30.76099967956543,\"latitude\":30.457578285,\"longitude\":114.44687290333333},23:{\"altitude\":30.7549991607666,\"latitude\":30.45757752,\"longitude\":114.44687263666667}},\"frontDistance\":41.5,\"leftBackOffset\":-2.0,\"leftBackWidth\":10.0,\"leftFrontOffset\":-4.0,\"leftFrontWidth\":10.0,\"leftMirrorPoints\":{},\"mainPoint\":{\"altitude\":30.280000686645508,\"latitude\":30.457585315,\"longitude\":114.446897255},\"mainPosDegree\":165.7218017578125,\"mainPosDistance\":0.9349974393844604,\"mainPosHeight\":135.0,\"pitch\":-0.7798784971237183,\"rightBackOffset\":-3.0,\"rightBackWidth\":10.0,\"rightFrontOffset\":-3.0,\"rightFrontWidth\":10.0,\"rightMirrorPoints\":{},\"stepId\":-99,\"time\":1599194773236,\"wheelLeftBack\":{\"altitude\":30.756000518798828,\"latitude\":30.45757553,\"longitude\":114.446898665},\"wheelLeftFront\":{\"altitude\":31.086999893188477,\"latitude\":30.457575478333332,\"longitude\":114.44687552833334},\"wheelRightBack\":{\"altitude\":30.77400016784668,\"latitude\":30.457586508333332,\"longitude\":114.446895645},\"wheelRightFront\":{\"altitude\":31.06399917602539,\"latitude\":30.457576993333333,\"longitude\":114.44687526833333}}" : "{\"backDistance\":38.0,\"carPoints\":{11:{\"altitude\":0.0,\"latitude\":30.434034538666666,\"longitude\":114.42064590158333},1:{\"altitude\":0.0,\"latitude\":30.43404901341667,\"longitude\":114.42067928433333},15:{\"altitude\":0.0,\"latitude\":30.43402316725,\"longitude\":114.42064503816667},6:{\"altitude\":0.0,\"latitude\":30.434056440583333,\"longitude\":114.420671446},23:{\"altitude\":0.0,\"latitude\":30.43404353375,\"longitude\":114.42067678325},17:{\"altitude\":0.0,\"latitude\":30.434021218333335,\"longitude\":114.42064795524999},21:{\"altitude\":0.0,\"latitude\":30.434024882750002,\"longitude\":114.42066005108333},14:{\"altitude\":0.0,\"latitude\":30.434024402749998,\"longitude\":114.42064359525},16:{\"altitude\":0.0,\"latitude\":30.4340224335,\"longitude\":114.42064602691667},7:{\"altitude\":0.0,\"latitude\":30.43405645775,\"longitude\":114.42066854933333},20:{\"altitude\":0.0,\"latitude\":30.434020101,\"longitude\":114.42065480533333},2:{\"altitude\":0.0,\"latitude\":30.4340515975,\"longitude\":114.4206785985},8:{\"altitude\":0.0,\"latitude\":30.434055648166666,\"longitude\":114.42066567358333},13:{\"altitude\":0.0,\"latitude\":30.434026373166667,\"longitude\":114.42064169791666},22:{\"altitude\":0.0,\"latitude\":30.43403769625,\"longitude\":114.42067153391667},19:{\"altitude\":0.0,\"latitude\":30.434019337,\"longitude\":114.42065304025},5:{\"altitude\":0.0,\"latitude\":30.434055385166666,\"longitude\":114.42067340933335},3:{\"altitude\":0.0,\"latitude\":30.434053099,\"longitude\":114.42067706216667},4:{\"altitude\":0.0,\"latitude\":30.434054150666668,\"longitude\":114.42067547366668},18:{\"altitude\":0.0,\"latitude\":30.434020110416668,\"longitude\":114.42065015016667},0:{\"altitude\":0.0,\"latitude\":30.434046414166666,\"longitude\":114.42067902608333},9:{\"altitude\":0.0,\"latitude\":30.434052859583332,\"longitude\":114.42066273374999},12:{\"altitude\":0.0,\"latitude\":30.43402835566667,\"longitude\":114.42064147325},10:{\"altitude\":0.0,\"latitude\":30.434042919416665,\"longitude\":114.42065347533332}},\"frontDistance\":41.5,\"leftBackOffset\":0.0,\"leftFrontOffset\":-3.0,\"mainPoint\":{\"altitude\":0.0,\"latitude\":30.434032634250002,\"longitude\":114.4206556895},\"mainPosDegree\":37.97760009765625,\"mainPosDistance\":0.9014999866485596,\"mainPosHeight\":164.5,\"pitch\":0.0,\"rightBackOffset\":0.0,\"rightFrontOffset\":-3.0,\"stepId\":-99,\"time\":1599194773236,\"wheelLeftBack\":{\"altitude\":0.0,\"latitude\":30.43403455158333,\"longitude\":114.42064588683334},\"wheelLeftFront\":{\"altitude\":0.0,\"latitude\":30.4340529165,\"longitude\":114.42066266966667},\"wheelRightBack\":{\"altitude\":0.0,\"latitude\":30.434024918833334,\"longitude\":114.42066005666666},\"wheelRightFront\":{\"altitude\":0.0,\"latitude\":30.434043289999998,\"longitude\":114.42067661725}}";
            HpCarMapModel hpCarMapModel = new HpCarMapModel();
            hpCarMapModel.driveSchoolName = "测试";
            hpCarMapModel.plateNum = "3r3woi";
            hpCarMapModel.modelCode = SelectCarManager.g();
            hpCarMapModel.modelName = SelectCarManager.f();
            hpCarMapModel.bodyData = str3;
            return hpCarMapModel;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static HpCarMapModel h() {
        try {
            return g(SelectCarManager.g());
        } catch (Throwable unused) {
            return null;
        }
    }

    private void i(Gps gps) {
        if (this.f4768d != null || gps.latitude <= 1.0E-8d || gps.longitude <= 1.0E-8d) {
            return;
        }
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint != null) {
            gps = ((CarSrcData) t).mainPoint;
        }
        this.f4768d = new cn.mucang.android.jiakaoyi.signal.i.b(gps);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l() {
        try {
            HpCarMapModel hpCarMapModel = this.j;
            if (hpCarMapModel == null || hpCarMapModel.bodyData == null) {
                return;
            }
            ((CarSrcData) this.f4847a).set(hpCarMapModel.getCarSrcData());
            cn.mucang.android.jiakaoyi.signal.i.b bVar = new cn.mucang.android.jiakaoyi.signal.i.b(((CarSrcData) this.f4847a).mainPoint);
            this.f4769e.back = bVar.a(((CarSrcData) this.f4847a).mainPoint);
            this.f4769e.main = bVar.a(((CarSrcData) this.f4847a).mainPoint);
            CarPos carPos = this.f4769e;
            Pos pos = new Pos(carPos.back);
            T t = this.f4847a;
            double dCos = ((CarSrcData) t).mainPosDistance * 100.0d * Math.cos(Math.toRadians(((CarSrcData) t).mainPosDegree));
            T t2 = this.f4847a;
            carPos.front = pos.translate(dCos, ((CarSrcData) t2).mainPosDistance * 100.0d * Math.sin(Math.toRadians(((CarSrcData) t2).mainPosDegree)));
            CarPos carPos2 = this.f4769e;
            CarData carDataGenerateCarData = ((CarSrcData) this.f4847a).generateCarData();
            Pos pos2 = this.f4769e.back;
            T t3 = this.f4847a;
            carPos2.set(carDataGenerateCarData.update(pos2, ((CarSrcData) t3).mainPosDegree, ((CarSrcData) t3).pitch, 0.0d, null, 0.0d));
            for (int i = 0; i < this.f4769e.carPoints.size(); i++) {
                this.f4770f.put(Integer.valueOf(i), this.f4769e.carPoints.get(i));
            }
            if (((CarSrcData) this.f4847a).mainPoint != null) {
                this.f4771g = true;
            }
            LiveBus.c(new r0.g());
            LiveBus.c(new r0.f());
        } catch (Throwable th) {
            t.d("TAG", "" + th.getLocalizedMessage());
        }
    }

    static /* synthetic */ void m(HpCarMapModel hpCarMapModel) {
        if (hpCarMapModel != null) {
            try {
                new cn.mucang.android.jiakaoyi.mapcollect.collect.w0.a().n(hpCarMapModel);
            } catch (Exception e2) {
                if (e2 instanceof ApiException) {
                    u.h(((ApiException) e2).getApiResponse().getMessage());
                }
                e2.printStackTrace();
            }
        }
    }

    private void n() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.car.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f4765a.l();
            }
        });
    }

    private Gps o(Gps gps) {
        T t = this.f4847a;
        return new f(((CarSrcData) t).mainPoint, ((CarSrcData) t).mainPosDegree).a(gps, this.i);
    }

    public static void q(String str, HpCarMapModel hpCarMapModel) {
        if (hpCarMapModel == null) {
            return;
        }
        i0.m("car.position.987654321", JSON.toJSONString(hpCarMapModel));
    }

    public static void r(String str, final HpCarMapModel hpCarMapModel) {
        q(str, hpCarMapModel);
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.car.b
            @Override // java.lang.Runnable
            public final void run() {
                d.m(hpCarMapModel);
            }
        });
    }

    public boolean A(double d2, boolean z) {
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (!z) {
                return false;
            }
            e("请先采集主天线");
            return false;
        }
        ((CarSrcData) t).mainPosHeight = d2;
        if (!z) {
            return true;
        }
        e("采集车身高度");
        return true;
    }

    public boolean B(int i, Gps gps, boolean z) {
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        if (this.f4771g && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (((CarSrcData) t).carPoints == null) {
            ((CarSrcData) t).carPoints = new HashMap();
        }
        ((CarSrcData) this.f4847a).carPoints.put(Integer.valueOf(i), gps);
        Pos posA = this.f4768d.a(gps);
        this.f4770f.put(Integer.valueOf(i), posA);
        CarPos carPos = this.f4769e;
        if (carPos.carPoints == null) {
            carPos.carPoints = new ArrayList();
        }
        if (i >= this.f4769e.carPoints.size()) {
            this.f4769e.carPoints.add(posA);
        } else if (this.f4771g) {
            Gps gpsO = o(gps);
            Pos posA2 = this.f4772h.a(gpsO);
            this.f4769e.carPoints.set(i, posA2);
            this.f4770f.put(Integer.valueOf(i), posA2);
            ((CarSrcData) this.f4847a).carPoints.put(Integer.valueOf(i), gpsO);
        } else {
            this.f4769e.carPoints.set(i, posA);
        }
        if (z) {
            e("采集第" + (i + 1) + "点");
        }
        return true;
    }

    public void C(double d2) {
        ((CarSrcData) this.f4847a).rightBackOffset = d2;
        LiveBus.c(new r0.f());
    }

    public void D(double d2) {
        ((CarSrcData) this.f4847a).rightBackWidth = d2;
        LiveBus.c(new r0.f());
    }

    public void E(double d2) {
        ((CarSrcData) this.f4847a).rightFrontOffset = d2;
        LiveBus.c(new r0.f());
    }

    public void F(double d2) {
        ((CarSrcData) this.f4847a).rightFrontWidth = d2;
        LiveBus.c(new r0.f());
    }

    public boolean G(int i, Gps gps, boolean z) {
        Pos posA;
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        if (this.f4771g && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (((CarSrcData) t).rightMirrorPoints == null) {
            ((CarSrcData) t).rightMirrorPoints = new HashMap();
        }
        CarPos carPos = this.f4769e;
        if (carPos.rightMirrorPoints == null) {
            carPos.rightMirrorPoints = new ArrayList();
        }
        if (this.f4771g) {
            gps = o(gps);
            posA = this.f4772h.a(gps);
        } else {
            posA = this.f4768d.a(gps);
        }
        if (i >= this.f4769e.rightMirrorPoints.size()) {
            this.f4769e.rightMirrorPoints.add(posA);
        } else {
            this.f4769e.rightMirrorPoints.set(i, posA);
        }
        ((CarSrcData) this.f4847a).rightMirrorPoints.put(Integer.valueOf(i), gps);
        if (z) {
            e("采集第" + (i + 1) + "个点");
        }
        return true;
    }

    public boolean H(Gps gps, boolean z) {
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        boolean z2 = this.f4771g;
        if (z2 && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (z2) {
            Gps gpsO = o(gps);
            ((CarSrcData) this.f4847a).wheelLeftBack = gpsO;
            this.f4769e.wheelLeftBack = this.f4772h.a(gpsO);
        } else {
            ((CarSrcData) t).wheelLeftBack = new Gps(gps);
            this.f4769e.wheelLeftBack = this.f4768d.a(gps);
        }
        if (!z) {
            return true;
        }
        e("采集左后轮");
        return true;
    }

    public boolean I(Gps gps, boolean z) {
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        boolean z2 = this.f4771g;
        if (z2 && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (z2) {
            Gps gpsO = o(gps);
            ((CarSrcData) this.f4847a).wheelLeftFront = gpsO;
            this.f4769e.wheelLeftFront = this.f4772h.a(gpsO);
        } else {
            ((CarSrcData) t).wheelLeftFront = new Gps(gps);
            this.f4769e.wheelLeftFront = this.f4768d.a(gps);
        }
        if (!z) {
            return true;
        }
        e("采集左前轮");
        return true;
    }

    public boolean J(Gps gps, boolean z) {
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        boolean z2 = this.f4771g;
        if (z2 && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (z2) {
            Gps gpsO = o(gps);
            ((CarSrcData) this.f4847a).wheelRightBack = gpsO;
            this.f4769e.wheelRightBack = this.f4772h.a(gpsO);
        } else {
            ((CarSrcData) t).wheelRightBack = new Gps(gps);
            this.f4769e.wheelRightBack = this.f4768d.a(gps);
        }
        if (!z) {
            return true;
        }
        e("采集右后轮");
        return true;
    }

    public boolean K(Gps gps, boolean z) {
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        boolean z2 = this.f4771g;
        if (z2 && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (z2) {
            Gps gpsO = o(gps);
            ((CarSrcData) this.f4847a).wheelRightFront = gpsO;
            this.f4769e.wheelRightFront = this.f4772h.a(gpsO);
        } else {
            ((CarSrcData) t).wheelRightFront = new Gps(gps);
            this.f4769e.wheelRightFront = this.f4768d.a(gps);
        }
        if (!z) {
            return true;
        }
        e("采集右前轮");
        return true;
    }

    public void L() {
        List<Pos> list = this.f4769e.carPoints;
        if (list == null || list.size() < 24) {
            return;
        }
        CarPos carPos = this.f4769e;
        CarData carDataGenerateCarData = ((CarSrcData) this.f4847a).generateCarData();
        Pos pos = this.f4769e.back;
        T t = this.f4847a;
        carPos.set(carDataGenerateCarData.update(pos, ((CarSrcData) t).mainPosDegree, ((CarSrcData) t).pitch, 0.0d, null, 0.0d));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        String str;
        String str2;
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null) {
            e("后天线没有采集");
            return false;
        }
        if (((CarSrcData) t).carPoints == null || ((CarSrcData) t).carPoints.size() < 24) {
            e("车身点没有采集完成");
            return false;
        }
        T t2 = this.f4847a;
        if (((CarSrcData) t2).wheelLeftFront == null) {
            e("左前轮没有采集");
            return false;
        }
        if (((CarSrcData) t2).wheelLeftBack == null) {
            e("左后轮没有采集");
            return false;
        }
        if (((CarSrcData) t2).wheelRightFront == null) {
            e("右前轮没有采集");
            return false;
        }
        if (((CarSrcData) t2).wheelRightBack == null) {
            e("右后轮没有采集");
            return false;
        }
        if (((CarSrcData) t2).mainPosHeight <= 0.0d) {
            e("蘑菇头离地面高度没有采集");
            return false;
        }
        if (AppUtils.l() || AppUtils.i()) {
            if (AppUtils.i()) {
                str = "左轮廓";
                str2 = "右轮廓";
            } else {
                str = "左后视镜";
                str2 = "右后视镜";
            }
            T t3 = this.f4847a;
            if (((CarSrcData) t3).leftMirrorPoints == null) {
                e("请采集" + str + "点");
                return false;
            }
            if (((CarSrcData) t3).leftMirrorPoints.size() < 3) {
                e(str + "点至少采集3个点");
                return false;
            }
            T t4 = this.f4847a;
            if (((CarSrcData) t4).rightMirrorPoints == null) {
                e("请采集" + str2 + "点");
                return false;
            }
            if (((CarSrcData) t4).rightMirrorPoints.size() < 3) {
                e(str2 + "点至少采集3个点");
                return false;
            }
        }
        CarSrcData carSrcData = this.i;
        if (carSrcData != null && carSrcData.mainPoint.distanceTo(((CarSrcData) this.f4847a).mainPoint) > 0.1d) {
            T t5 = this.f4847a;
            CarSrcData carSrcData2 = this.i;
            ((CarSrcData) t5).mainPoint = carSrcData2.mainPoint;
            ((CarSrcData) t5).pitch = carSrcData2.pitch;
            ((CarSrcData) t5).mainPosDistance = carSrcData2.mainPosDistance;
            ((CarSrcData) t5).mainPosDegree = carSrcData2.mainPosDegree;
            this.f4772h = null;
        }
        e("采集完成");
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
    }

    public boolean j() {
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d || ((CarSrcData) t).carPoints == null || ((CarSrcData) t).carPoints.size() < 24) {
            return false;
        }
        T t2 = this.f4847a;
        if (((CarSrcData) t2).wheelLeftFront == null || ((CarSrcData) t2).wheelLeftBack == null || ((CarSrcData) t2).wheelRightFront == null || ((CarSrcData) t2).wheelRightBack == null) {
            return false;
        }
        if (!AppUtils.l() && !AppUtils.i()) {
            return true;
        }
        T t3 = this.f4847a;
        if (((CarSrcData) t3).leftMirrorPoints != null && ((CarSrcData) t3).leftMirrorPoints.size() < 3) {
            return false;
        }
        T t4 = this.f4847a;
        if (((CarSrcData) t4).leftMirrorPoints != null && ((CarSrcData) t4).rightMirrorPoints == null) {
            return false;
        }
        if (((CarSrcData) t4).rightMirrorPoints != null && ((CarSrcData) t4).rightMirrorPoints.size() < 3) {
            return false;
        }
        T t5 = this.f4847a;
        return ((CarSrcData) t5).rightMirrorPoints == null || ((CarSrcData) t5).leftMirrorPoints != null;
    }

    public void p(String str, HpCarMapModel hpCarMapModel) {
        hpCarMapModel.bodyData = JSON.toJSONString(this.f4847a);
        r(str, hpCarMapModel);
    }

    public void s(double d2) {
        ((CarSrcData) this.f4847a).backDistance = d2;
        LiveBus.c(new r0.f());
    }

    public void t(double d2) {
        ((CarSrcData) this.f4847a).frontDistance = d2;
        LiveBus.c(new r0.f());
    }

    public void u(double d2) {
        ((CarSrcData) this.f4847a).leftBackOffset = d2;
        LiveBus.c(new r0.f());
    }

    public void v(double d2) {
        ((CarSrcData) this.f4847a).leftBackWidth = d2;
        LiveBus.c(new r0.f());
    }

    public void w(double d2) {
        ((CarSrcData) this.f4847a).leftFrontOffset = d2;
        LiveBus.c(new r0.f());
    }

    public void x(double d2) {
        ((CarSrcData) this.f4847a).leftFrontWidth = d2;
        LiveBus.c(new r0.f());
    }

    public boolean y(int i, Gps gps, boolean z) {
        Pos posA;
        i(gps);
        T t = this.f4847a;
        if (((CarSrcData) t).mainPoint == null || ((CarSrcData) t).mainPosDistance <= 1.0E-4d) {
            if (z) {
                e("请先采集主天线");
            }
            return false;
        }
        if (this.f4771g && this.f4772h == null) {
            u.h("请先重新采集主天线");
            return false;
        }
        if (((CarSrcData) t).leftMirrorPoints == null) {
            ((CarSrcData) t).leftMirrorPoints = new HashMap();
        }
        CarPos carPos = this.f4769e;
        if (carPos.leftMirrorPoints == null) {
            carPos.leftMirrorPoints = new ArrayList();
        }
        if (this.f4771g) {
            gps = o(gps);
            posA = this.f4772h.a(gps);
        } else {
            posA = this.f4768d.a(gps);
        }
        if (i >= this.f4769e.leftMirrorPoints.size()) {
            this.f4769e.leftMirrorPoints.add(posA);
        } else {
            this.f4769e.leftMirrorPoints.set(i, posA);
        }
        ((CarSrcData) this.f4847a).leftMirrorPoints.put(Integer.valueOf(i), gps);
        if (z) {
            e("采集第" + (i + 1) + "个点");
        }
        return true;
    }

    public boolean z(Gps gps, float f2, float f3, double d2, boolean z) {
        if (gps.latitude <= 1.0E-8d || gps.longitude <= 1.0E-8d) {
            if (z) {
                e("gps定位异常");
            }
            return false;
        }
        double d3 = f2;
        if (d3 <= 0.001d) {
            if (z) {
                e("没有从天线的位置");
            }
            return false;
        }
        if (this.f4771g && this.f4772h == null) {
            CarSrcData carSrcDataCopy = ((CarSrcData) this.f4847a).copy();
            this.i = carSrcDataCopy;
            this.f4772h = new cn.mucang.android.jiakaoyi.signal.i.b(carSrcDataCopy.mainPoint);
        }
        this.f4768d = new cn.mucang.android.jiakaoyi.signal.i.b(gps);
        T t = this.f4847a;
        ((CarSrcData) t).pitch = d2;
        ((CarSrcData) t).mainPoint = new Gps(gps);
        T t2 = this.f4847a;
        ((CarSrcData) t2).mainPosDistance = d3;
        double d4 = f3;
        ((CarSrcData) t2).mainPosDegree = d4;
        this.f4769e.back = this.f4768d.a(gps);
        this.f4769e.main = this.f4768d.a(gps);
        CarPos carPos = this.f4769e;
        double d5 = f2 * 100.0f;
        carPos.front = new Pos(carPos.back).translate(Math.cos(Math.toRadians(d4)) * d5, d5 * Math.sin(Math.toRadians(d4)));
        if (!z) {
            return true;
        }
        e("采集主天线");
        return true;
    }
}
