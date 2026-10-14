package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.BianDaoResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.LeftRightLinesResult;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.car.RelatePos;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.g0.c;
import cn.mucang.android.jiakaoyi.k3collect.g0.g;
import cn.mucang.android.jiakaoyi.k3collect.g0.i;
import cn.mucang.android.jiakaoyi.k3collect.g0.l;
import cn.mucang.android.jiakaoyi.k3collect.g0.m;
import cn.mucang.android.jiakaoyi.k3collect.k0.p;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.render.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.mapupdate.h;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class K3Data extends f implements K3CollisionMethod {
    private static final String TAG = "K3Data";
    public CarData carData;
    public cn.mucang.android.jiakaoyi.signal.i.a converter;
    private AreaCollisionChecker diaoTouCollisionChecker;
    private String examSiteId;
    public volatile boolean hasData;
    private HpSingleBianDaoCalculator hpBianDaoChecker;
    private HpLeftRightLinesCalculator hpLeftRightLinesCalculator;
    private HpPressBanMaLineCalculator hpPressBanMaLineCalculator;
    private HpPressCenterCircleCalculator hpPressCenterCircleCalculator;
    private HpPressDashLineCalculator hpPressCenterDashLineCalculator;
    private HpPressDashLineCalculator hpPressDashLineCalculator;
    private HpPressGridLineCalculator hpPressGridLineCalculator;
    private HpPressStopLineCalculator hpPressStopLineCalculator;
    private HpSideDistanceCalculator hpSideDistanceCalculator;
    private HpStopLineDistanceCalculator hpStopLineDistanceCalculator;
    private PressLineCollisionChecker jinTingCollisionChecker;
    private PressLineCollisionChecker judgeLineCollisionChecker;
    private cn.mucang.android.jiakaoyi.signal.pos.a mapBound;
    private HpPressFullLineCalculator noEnterAreaCollisionChecker;
    private HpPressFullLineCalculator pressCenterCircleLineCalculator;
    private HpPressCrossRoadMarkCalculator pressCrossRoadMarkLineChecker;
    private HpPressFullLineCalculator pressFullLineChecker;
    private HpPressFullLineCalculator pressNonMotorVehicleDashLineCalculator;
    private HpPressFullLineCalculator pressNonMotorVehicleLineCalculator;
    private List<K3SrcData> srcDataList;
    private AreaCollisionChecker tingCheCollisionChecker;
    public final List<cn.mucang.android.jiakaoyi.k3collect.j0.a> renderModels = new ArrayList();
    public final List<K3CollisionModel> dashedModels = new ArrayList();
    public final List<K3CollisionModel> centerDashedModels = new ArrayList();
    public final List<K3CollisionModel> singleFullLineModels = new ArrayList();
    public final List<K3CollisionModel> shuangHuangFullLineModels = new ArrayList();
    public final List<K3CollisionModel> sideLineModels = new ArrayList();
    public final List<K3CollisionModel> nonMotorVehicleLineModels = new ArrayList();
    public final List<K3CollisionModel> nonMotorVehicleDashLineModels = new ArrayList();
    public final List<K3CollisionModel> stopLineModels = new ArrayList();
    public final List<K3CollisionModel> gridLineModels = new ArrayList();
    public final List<K3CollisionModel> centerCircleModels = new ArrayList();
    public final List<K3CollisionModel> banMaLineModels = new ArrayList();
    public final List<K3CollisionModel> crossRoadMarkModels = new ArrayList();
    public final List<K3CollisionModel> centerCircleFullModels = new ArrayList();
    public final List<K3CollisionModel> judgeLineFullModels = new ArrayList();
    public final List<K3CollisionModel> diaoTouAreaModels = new ArrayList();
    public final List<K3CollisionModel> jinTingAreaModels = new ArrayList();
    public final List<K3CollisionModel> tingCheAreaModels = new ArrayList();
    public final List<K3CollisionModel> noEnterAreaModels = new ArrayList();
    public final List<K3CollisionModel> dashFullLineModels = new ArrayList();
    private final ArrayList<Gps> gpsList = new ArrayList<>();
    public List<List<Pos>> allDashPah = new ArrayList();
    public List<List<Pos>> allFullPah = new ArrayList();

    private void addSingleLinePaths(j jVar) {
        if (jVar.k) {
            if (jVar.j) {
                this.allDashPah.add(jVar.f3918d);
                this.allDashPah.add(jVar.f3920f);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(jVar.f3921g.start);
            arrayList.add(jVar.f3921g.end);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(jVar.i.start);
            arrayList2.add(jVar.i.end);
            this.allDashPah.add(arrayList);
            this.allDashPah.add(arrayList2);
            return;
        }
        if (jVar.j) {
            this.allFullPah.add(jVar.f3918d);
            this.allFullPah.add(jVar.f3920f);
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(jVar.f3921g.start);
        arrayList3.add(jVar.f3921g.end);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(jVar.i.start);
        arrayList4.add(jVar.i.end);
        this.allFullPah.add(arrayList3);
        this.allFullPah.add(arrayList4);
    }

    private cn.mucang.android.jiakaoyi.signal.i.a createConvert() {
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.converter;
        if (aVar != null) {
            return aVar;
        }
        final ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        final Gps gps = new Gps();
        double d2 = examSiteModelD.originLatitude;
        if (d2 >= 1.0E-10d || examSiteModelD.originLongitude >= 1.0E-10d) {
            gps.latitude = d2;
            gps.longitude = examSiteModelD.originLongitude;
        } else if (!this.gpsList.isEmpty()) {
            double d3 = 0.0d;
            double d4 = 0.0d;
            double d5 = 0.0d;
            for (Gps gps2 : this.gpsList) {
                d3 += gps2.latitude;
                d4 += gps2.longitude;
                d5 += gps2.altitude;
            }
            double size = this.gpsList.size();
            gps = gps;
            Gps gps3 = new Gps(d3 / size, d4 / size, d5 / size);
            if (gps.latitude > 1.0E-10d && gps.longitude > 1.0E-10d && n0.g(this.examSiteId) && this.examSiteId.equals(String.valueOf(examSiteModelD.examSiteId))) {
                cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.collision.K3Data.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            GeneralBusinessApi generalBusinessApi = new GeneralBusinessApi();
                            long j = examSiteModelD.examSiteId;
                            Gps gps4 = gps;
                            if (generalBusinessApi.v(j, gps4.latitude, gps4.longitude, gps4.altitude)) {
                                ExamSiteModel examSiteModel = examSiteModelD;
                                Gps gps5 = gps;
                                examSiteModel.originLatitude = gps5.latitude;
                                examSiteModel.originLongitude = gps5.longitude;
                                examSiteModel.originAltitude = gps5.altitude;
                                ExamSiteUtil.r(examSiteModel);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                });
            }
        }
        if (gps.latitude <= 1.0E-10d || gps.longitude <= 1.0E-10d) {
            return null;
        }
        return new cn.mucang.android.jiakaoyi.signal.i.b(gps);
    }

    private List<K3SrcData> loadSrcData(String str) throws Throwable {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strL = h.l(Long.parseLong(str));
        if (n0.e(strL)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("获取本地地图数据是null");
            return null;
        }
        List<K3HpMapEntity> listA = cn.mucang.android.jiakaoyi.k3collect.src.a.a(strL);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        t.a(TAG, "query K3 DB Data spend time : " + (jCurrentTimeMillis2 - jCurrentTimeMillis));
        if (listA == null) {
            t.a(TAG, "examSiteId = " + str + "考场,没有高精度数据");
            return null;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("解析到地图数据 " + listA.size() + " 条");
        ArrayList arrayList = new ArrayList();
        Iterator<K3HpMapEntity> it = listA.iterator();
        while (it.hasNext()) {
            K3SrcData srcData = it.next().parseSrcData();
            if (srcData == null || !srcData.isComplete()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("有问题的地图数据：" + JSON.toJSONString(srcData));
            } else {
                List<Gps> listCenter = srcData.center();
                if (listCenter != null) {
                    this.gpsList.addAll(listCenter);
                    arrayList.add(srcData);
                }
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("参与显示的地图数据 " + arrayList.size() + " 条");
        StringBuilder sb = new StringBuilder();
        sb.append("parse K3SrcDataList spend time : ");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis2);
        t.a(TAG, sb.toString());
        return arrayList;
    }

    private void parseCarData() {
        HpCarMapModel hpCarMapModelH = d.h();
        if (hpCarMapModelH == null || n0.e(hpCarMapModelH.bodyData)) {
            u.h("车子没有车身数据");
        } else {
            this.carData = hpCarMapModelH.getCarSrcData().generateCarData();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public BianDaoResult calculateBiandao(e eVar) {
        return this.hpBianDaoChecker.calculateSingleBianDao(eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean carBodyInArea(e eVar, ExamProcessor examProcessor, PressLineType pressLineType) {
        if (pressLineType == PressLineType.FullInDiaoTouArea) {
            return this.diaoTouCollisionChecker.fullInArea(eVar, examProcessor) != null;
        }
        return pressLineType == PressLineType.FullInTingCheArea && this.tingCheCollisionChecker.fullInArea(eVar, examProcessor) != null;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public K3CollisionModel checkPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType) {
        if (pressLineType == PressLineType.PressJudgeLine) {
            return this.judgeLineCollisionChecker.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressJinTingArea) {
            return this.jinTingCollisionChecker.checkBodyOrWheel(eVar, examProcessor, z);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public List<k> createLayers(MapView mapView, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        for (cn.mucang.android.jiakaoyi.k3collect.j0.a aVar : this.renderModels) {
            cn.mucang.android.jiakaoyi.k3collect.g0.j lVar = null;
            switch (aVar.b) {
                case 1:
                case 3:
                case 4:
                case 10:
                case 12:
                    lVar = new l(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.k) aVar);
                    break;
                case 2:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.k(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.j) aVar);
                    break;
                case 5:
                    lVar = new c(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.c) aVar);
                    break;
                case 6:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.b(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.b) aVar);
                    break;
                case 7:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.e(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.e) aVar);
                    break;
                case 8:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.h(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.h) aVar);
                    break;
                case 9:
                    lVar = new m(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.l) aVar);
                    break;
                case 11:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.f(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.f) aVar);
                    break;
                case 13:
                    lVar = new i(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.i) aVar);
                    break;
                case 14:
                case 15:
                case 16:
                case 18:
                    lVar = new cn.mucang.android.jiakaoyi.k3collect.g0.a(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.a) aVar);
                    break;
                case 19:
                    lVar = new g(mapView, (cn.mucang.android.jiakaoyi.k3collect.j0.b.g) aVar);
                    break;
            }
            if (lVar != null) {
                lVar.k = z;
                arrayList.add(lVar);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public double distanceToStopLine(e eVar, ExamProcessor examProcessor) {
        return this.hpStopLineDistanceCalculator.calculate(eVar, examProcessor);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public List<List<Pos>> getAllPaths(boolean z) {
        return z ? this.allDashPah : this.allFullPah;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public CarData getCarData() {
        return this.carData;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.i.a getConverter() {
        return createConvert();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public String getExamSiteId() {
        return this.examSiteId;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public LeftRightLinesResult getLeftRightLines(e eVar) {
        return this.hpLeftRightLinesCalculator.getLeftRightLines(eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.pos.a getMapBound() {
        return this.mapBound;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public TwoSideOffsetResult getTwoSideOffset(e eVar) {
        return this.hpSideDistanceCalculator.getSideDistance(eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean isPressLine(e eVar, ExamProcessor examProcessor, boolean z, PressLineType pressLineType) {
        if (pressLineType == PressLineType.PressFullLine) {
            return this.pressFullLineChecker.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressDashLine) {
            return this.hpPressDashLineCalculator.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressNonMotorVehicleLine) {
            return this.pressNonMotorVehicleLineCalculator.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressNonMotorVehicleDashLine) {
            return this.pressNonMotorVehicleDashLineCalculator.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressCenterDashLine) {
            return this.hpPressCenterDashLineCalculator.checkBodyOrWheel(eVar, examProcessor, z);
        }
        if (pressLineType == PressLineType.PressCenterCircle) {
            return this.hpPressCenterCircleCalculator.checkWheel(eVar, examProcessor);
        }
        if (pressLineType == PressLineType.PressGridLine) {
            return this.hpPressGridLineCalculator.checkWheel(eVar, examProcessor);
        }
        if (pressLineType == PressLineType.PressBanMaLine) {
            return this.hpPressBanMaLineCalculator.checkWheel(eVar, examProcessor);
        }
        if (pressLineType == PressLineType.PressCenterCircleFullLine) {
            return this.pressCenterCircleLineCalculator.checkWheel(eVar, examProcessor);
        }
        if (pressLineType == PressLineType.PressNoEnterArea) {
            return this.noEnterAreaCollisionChecker.checkBodyOrWheel(eVar, examProcessor, z);
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public boolean isPressStopLine(e eVar, ExamProcessor examProcessor, boolean z) {
        return this.hpPressStopLineCalculator.checkBodyOrWheel(eVar, examProcessor, z);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x01cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x020a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x021f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x0233 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x023f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x0253 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x01c2 A[DONT_GENERATE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x0225 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x024c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x01ae A[Catch: all -> 0x039d, TryCatch #0 {all -> 0x039d, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:10:0x0026, B:12:0x0051, B:14:0x005a, B:16:0x0062, B:18:0x0069, B:20:0x0091, B:27:0x00e3, B:28:0x00e9, B:30:0x00f0, B:32:0x00fe, B:34:0x010d, B:35:0x0126, B:37:0x012f, B:39:0x0136, B:42:0x0145, B:44:0x0149, B:59:0x01a5, B:61:0x01ae, B:63:0x01bd, B:64:0x01bf, B:66:0x01c4, B:67:0x01cb, B:68:0x01d2, B:69:0x01d9, B:70:0x01e0, B:71:0x01e7, B:72:0x01ee, B:73:0x01f5, B:74:0x01fc, B:75:0x0203, B:76:0x020a, B:77:0x0211, B:78:0x0218, B:79:0x021f, B:81:0x0225, B:82:0x022c, B:83:0x0233, B:84:0x023f, B:86:0x0245, B:87:0x024c, B:88:0x0253, B:90:0x0259, B:92:0x0264, B:91:0x025f, B:62:0x01b8, B:47:0x0167, B:49:0x016b, B:51:0x0172, B:54:0x0182, B:56:0x0186, B:93:0x026b, B:22:0x0097, B:24:0x009d, B:26:0x00a7, B:94:0x0392), top: B:99:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01b8 A[Catch: all -> 0x039d, TryCatch #0 {all -> 0x039d, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:10:0x0026, B:12:0x0051, B:14:0x005a, B:16:0x0062, B:18:0x0069, B:20:0x0091, B:27:0x00e3, B:28:0x00e9, B:30:0x00f0, B:32:0x00fe, B:34:0x010d, B:35:0x0126, B:37:0x012f, B:39:0x0136, B:42:0x0145, B:44:0x0149, B:59:0x01a5, B:61:0x01ae, B:63:0x01bd, B:64:0x01bf, B:66:0x01c4, B:67:0x01cb, B:68:0x01d2, B:69:0x01d9, B:70:0x01e0, B:71:0x01e7, B:72:0x01ee, B:73:0x01f5, B:74:0x01fc, B:75:0x0203, B:76:0x020a, B:77:0x0211, B:78:0x0218, B:79:0x021f, B:81:0x0225, B:82:0x022c, B:83:0x0233, B:84:0x023f, B:86:0x0245, B:87:0x024c, B:88:0x0253, B:90:0x0259, B:92:0x0264, B:91:0x025f, B:62:0x01b8, B:47:0x0167, B:49:0x016b, B:51:0x0172, B:54:0x0182, B:56:0x0186, B:93:0x026b, B:22:0x0097, B:24:0x009d, B:26:0x00a7, B:94:0x0392), top: B:99:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0259 A[Catch: all -> 0x039d, TryCatch #0 {all -> 0x039d, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:10:0x0026, B:12:0x0051, B:14:0x005a, B:16:0x0062, B:18:0x0069, B:20:0x0091, B:27:0x00e3, B:28:0x00e9, B:30:0x00f0, B:32:0x00fe, B:34:0x010d, B:35:0x0126, B:37:0x012f, B:39:0x0136, B:42:0x0145, B:44:0x0149, B:59:0x01a5, B:61:0x01ae, B:63:0x01bd, B:64:0x01bf, B:66:0x01c4, B:67:0x01cb, B:68:0x01d2, B:69:0x01d9, B:70:0x01e0, B:71:0x01e7, B:72:0x01ee, B:73:0x01f5, B:74:0x01fc, B:75:0x0203, B:76:0x020a, B:77:0x0211, B:78:0x0218, B:79:0x021f, B:81:0x0225, B:82:0x022c, B:83:0x0233, B:84:0x023f, B:86:0x0245, B:87:0x024c, B:88:0x0253, B:90:0x0259, B:92:0x0264, B:91:0x025f, B:62:0x01b8, B:47:0x0167, B:49:0x016b, B:51:0x0172, B:54:0x0182, B:56:0x0186, B:93:0x026b, B:22:0x0097, B:24:0x009d, B:26:0x00a7, B:94:0x0392), top: B:99:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x025f A[Catch: all -> 0x039d, TryCatch #0 {all -> 0x039d, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:10:0x0026, B:12:0x0051, B:14:0x005a, B:16:0x0062, B:18:0x0069, B:20:0x0091, B:27:0x00e3, B:28:0x00e9, B:30:0x00f0, B:32:0x00fe, B:34:0x010d, B:35:0x0126, B:37:0x012f, B:39:0x0136, B:42:0x0145, B:44:0x0149, B:59:0x01a5, B:61:0x01ae, B:63:0x01bd, B:64:0x01bf, B:66:0x01c4, B:67:0x01cb, B:68:0x01d2, B:69:0x01d9, B:70:0x01e0, B:71:0x01e7, B:72:0x01ee, B:73:0x01f5, B:74:0x01fc, B:75:0x0203, B:76:0x020a, B:77:0x0211, B:78:0x0218, B:79:0x021f, B:81:0x0225, B:82:0x022c, B:83:0x0233, B:84:0x023f, B:86:0x0245, B:87:0x024c, B:88:0x0253, B:90:0x0259, B:92:0x0264, B:91:0x025f, B:62:0x01b8, B:47:0x0167, B:49:0x016b, B:51:0x0172, B:54:0x0182, B:56:0x0186, B:93:0x026b, B:22:0x0097, B:24:0x009d, B:26:0x00a7, B:94:0x0392), top: B:99:0x0007 }] */
    public void loadData(String str) {
        Map<Integer, RelatePos> map;
        cn.mucang.android.jiakaoyi.signal.pos.a aVar;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.examSiteId = str;
            this.hasData = false;
            parseCarData();
            CarData carData = this.carData;
            if (carData != null && (map = carData.carPoints) != null && map.size() == 24) {
                t.a(TAG, "k3 parseData spend time : " + (System.currentTimeMillis() - jCurrentTimeMillis));
                this.srcDataList = loadSrcData(str);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (cn.mucang.android.core.utils.g.b(this.srcDataList)) {
                    K3CollisionManager.getInstance().setProxy(null);
                    return;
                }
                cn.mucang.android.jiakaoyi.signal.i.a aVarCreateConvert = createConvert();
                this.converter = aVarCreateConvert;
                if (aVarCreateConvert == null) {
                    u.h("地图原点数据有问题");
                    cn.mucang.android.jiakaoyi.framework.log.f.o("地图原点数据有问题");
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("地图原点 " + this.converter.getZero());
                K3SrcData k3SrcData = this.srcDataList.get(0);
                if ((MucangConfig.v() || n.a()) && k3SrcData.center() != null && k3SrcData.center().size() > 0) {
                    t.a("dsh", "gps " + k3SrcData.center().get(0).toString());
                    LiveBus.d(SetInitDebugGps.class).l(new SetInitDebugGps(k3SrcData.center().get(0)));
                }
                for (K3SrcData k3SrcData2 : this.srcDataList) {
                    p.b bVarA = p.a(k3SrcData2.type);
                    if (bVarA != null) {
                        bVarA.b(k3SrcData2, this.converter);
                        cn.mucang.android.jiakaoyi.k3collect.j0.a aVarC = bVarA.c();
                        K3CollisionModel k3CollisionModelD = bVarA.d();
                        if (k3CollisionModelD != null) {
                            if (!(k3CollisionModelD instanceof j)) {
                                if (k3CollisionModelD instanceof cn.mucang.android.jiakaoyi.k3collect.collision.impl.i) {
                                    cn.mucang.android.jiakaoyi.k3collect.collision.impl.i iVar = (cn.mucang.android.jiakaoyi.k3collect.collision.impl.i) k3CollisionModelD;
                                    if (!iVar.f3917h) {
                                        Line line = iVar.f3915f;
                                        if (line.start.distanceTo(line.end) < 150.0d) {
                                        }
                                    }
                                    if (iVar.f3917h) {
                                        Pos pos = iVar.f3913d.get(0);
                                        List<Pos> list = iVar.f3913d;
                                        if (pos.distanceTo(list.get(list.size() - 1)) < 150.0d) {
                                        }
                                    }
                                }
                                this.renderModels.add(aVarC);
                                aVar = this.mapBound;
                                if (aVar == null) {
                                    this.mapBound = new cn.mucang.android.jiakaoyi.signal.pos.a(k3CollisionModelD.c);
                                } else {
                                    aVar.i(k3CollisionModelD.c);
                                }
                                switch (k3SrcData2.type) {
                                    case 1:
                                        if (((SingleLineSrcData) k3SrcData2).isDashed) {
                                            this.dashedModels.add(k3CollisionModelD);
                                        } else {
                                            this.singleFullLineModels.add(k3CollisionModelD);
                                        }
                                        addSingleLinePaths((j) k3CollisionModelD);
                                        break;
                                    case 2:
                                        if (((ShuangHuangSrcData) k3SrcData2).isDashed) {
                                            this.dashedModels.add(k3CollisionModelD);
                                        } else {
                                            this.shuangHuangFullLineModels.add(k3CollisionModelD);
                                        }
                                        break;
                                    case 3:
                                        this.sideLineModels.add(k3CollisionModelD);
                                        addSingleLinePaths((j) k3CollisionModelD);
                                        break;
                                    case 4:
                                        if (((SingleLineSrcData) k3SrcData2).isDashed) {
                                            this.nonMotorVehicleDashLineModels.add(k3CollisionModelD);
                                        } else {
                                            this.nonMotorVehicleLineModels.add(k3CollisionModelD);
                                        }
                                        break;
                                    case 5:
                                        this.banMaLineModels.add(k3CollisionModelD);
                                        break;
                                    case 7:
                                        this.centerCircleModels.add(k3CollisionModelD);
                                        break;
                                    case 8:
                                        this.gridLineModels.add(k3CollisionModelD);
                                        break;
                                    case 9:
                                        this.stopLineModels.add(k3CollisionModelD);
                                        break;
                                    case 10:
                                        this.centerDashedModels.add(k3CollisionModelD);
                                        break;
                                    case 11:
                                        this.crossRoadMarkModels.add(k3CollisionModelD);
                                        break;
                                    case 12:
                                        this.centerCircleFullModels.add(k3CollisionModelD);
                                        break;
                                    case 13:
                                        this.judgeLineFullModels.add(k3CollisionModelD);
                                        break;
                                    case 14:
                                        this.diaoTouAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 15:
                                        this.jinTingAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 16:
                                        this.tingCheAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 18:
                                        this.noEnterAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 19:
                                        this.dashFullLineModels.add(k3CollisionModelD);
                                        break;
                                }
                            } else {
                                j jVar = (j) k3CollisionModelD;
                                if (!jVar.j) {
                                    Line line2 = jVar.f3922h;
                                    if (line2.start.distanceTo(line2.end) < 150.0d) {
                                    }
                                }
                                if (jVar.j) {
                                    Pos pos2 = jVar.f3919e.get(0);
                                    List<Pos> list2 = jVar.f3919e;
                                    if (pos2.distanceTo(list2.get(list2.size() - 1)) < 150.0d) {
                                    }
                                }
                                this.renderModels.add(aVarC);
                                aVar = this.mapBound;
                                if (aVar == null) {
                                    this.mapBound = new cn.mucang.android.jiakaoyi.signal.pos.a(k3CollisionModelD.c);
                                } else {
                                    aVar.i(k3CollisionModelD.c);
                                }
                                switch (k3SrcData2.type) {
                                    case 1:
                                        if (((SingleLineSrcData) k3SrcData2).isDashed) {
                                            this.dashedModels.add(k3CollisionModelD);
                                        } else {
                                            this.singleFullLineModels.add(k3CollisionModelD);
                                        }
                                        addSingleLinePaths((j) k3CollisionModelD);
                                        break;
                                    case 2:
                                        if (((ShuangHuangSrcData) k3SrcData2).isDashed) {
                                            this.dashedModels.add(k3CollisionModelD);
                                        } else {
                                            this.shuangHuangFullLineModels.add(k3CollisionModelD);
                                        }
                                        break;
                                    case 3:
                                        this.sideLineModels.add(k3CollisionModelD);
                                        addSingleLinePaths((j) k3CollisionModelD);
                                        break;
                                    case 4:
                                        if (((SingleLineSrcData) k3SrcData2).isDashed) {
                                            this.nonMotorVehicleDashLineModels.add(k3CollisionModelD);
                                        } else {
                                            this.nonMotorVehicleLineModels.add(k3CollisionModelD);
                                        }
                                        break;
                                    case 5:
                                        this.banMaLineModels.add(k3CollisionModelD);
                                        break;
                                    case 7:
                                        this.centerCircleModels.add(k3CollisionModelD);
                                        break;
                                    case 8:
                                        this.gridLineModels.add(k3CollisionModelD);
                                        break;
                                    case 9:
                                        this.stopLineModels.add(k3CollisionModelD);
                                        break;
                                    case 10:
                                        this.centerDashedModels.add(k3CollisionModelD);
                                        break;
                                    case 11:
                                        this.crossRoadMarkModels.add(k3CollisionModelD);
                                        break;
                                    case 12:
                                        this.centerCircleFullModels.add(k3CollisionModelD);
                                        break;
                                    case 13:
                                        this.judgeLineFullModels.add(k3CollisionModelD);
                                        break;
                                    case 14:
                                        this.diaoTouAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 15:
                                        this.jinTingAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 16:
                                        this.tingCheAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 18:
                                        this.noEnterAreaModels.add(k3CollisionModelD);
                                        break;
                                    case 19:
                                        this.dashFullLineModels.add(k3CollisionModelD);
                                        break;
                                }
                            }
                        } else {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("有问题的地图数据：" + JSON.toJSONString(k3SrcData2));
                        }
                    }
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("解析地图数据layer数据 " + this.renderModels.size() + "条");
                StringBuilder sb = new StringBuilder();
                sb.append("k3 transforms spend time : ");
                sb.append(System.currentTimeMillis() - jCurrentTimeMillis2);
                t.a(TAG, sb.toString());
                K3CollisionManager.getInstance().setProxy(this);
                LiveBus.d(f.class).l(this);
                this.hpBianDaoChecker = new HpSingleBianDaoCalculator(this.dashedModels, this.nonMotorVehicleDashLineModels, this.dashFullLineModels);
                this.hpStopLineDistanceCalculator = new HpStopLineDistanceCalculator(this.stopLineModels);
                this.pressFullLineChecker = new HpPressFullLineCalculator(this.singleFullLineModels, this.shuangHuangFullLineModels, this.sideLineModels, this.dashFullLineModels);
                this.pressNonMotorVehicleLineCalculator = new HpPressFullLineCalculator(this.nonMotorVehicleLineModels);
                this.pressNonMotorVehicleDashLineCalculator = new HpPressFullLineCalculator(this.nonMotorVehicleDashLineModels);
                this.pressCenterCircleLineCalculator = new HpPressFullLineCalculator(this.centerCircleFullModels);
                this.hpPressCenterCircleCalculator = new HpPressCenterCircleCalculator(this.centerCircleModels);
                this.hpPressGridLineCalculator = new HpPressGridLineCalculator(this.gridLineModels);
                this.hpPressBanMaLineCalculator = new HpPressBanMaLineCalculator(this.banMaLineModels);
                this.hpPressDashLineCalculator = new HpPressDashLineCalculator(this.dashedModels, this.dashFullLineModels);
                this.hpPressCenterDashLineCalculator = new HpPressDashLineCalculator(this.centerDashedModels, this.dashFullLineModels);
                this.hpPressStopLineCalculator = new HpPressStopLineCalculator(this.stopLineModels);
                this.pressCrossRoadMarkLineChecker = new HpPressCrossRoadMarkCalculator(this.crossRoadMarkModels);
                this.hpSideDistanceCalculator = new HpSideDistanceCalculator(this.sideLineModels, this.singleFullLineModels, this.shuangHuangFullLineModels, this.dashedModels, this.nonMotorVehicleLineModels);
                this.hpLeftRightLinesCalculator = new HpLeftRightLinesCalculator(this.sideLineModels, this.singleFullLineModels, this.shuangHuangFullLineModels, this.dashedModels, this.nonMotorVehicleLineModels);
                this.judgeLineCollisionChecker = new PressLineCollisionChecker(this.judgeLineFullModels);
                this.diaoTouCollisionChecker = new AreaCollisionChecker(this.diaoTouAreaModels);
                this.tingCheCollisionChecker = new AreaCollisionChecker(this.tingCheAreaModels);
                this.jinTingCollisionChecker = new PressLineCollisionChecker(this.jinTingAreaModels);
                this.noEnterAreaCollisionChecker = new HpPressFullLineCalculator(this.noEnterAreaModels);
                this.hasData = true;
                return;
            }
            u.h("车身数据有问题");
            cn.mucang.android.jiakaoyi.framework.log.f.o("解析车身数据有问题");
        } catch (Throwable th) {
            th.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("解析科三考试数据异常:" + th.getLocalizedMessage());
            u.h("解析数据出错");
            this.hasData = false;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionMethod
    public List<K3CollisionModel> pressMarkLines(e eVar, ExamProcessor examProcessor, boolean z) {
        return this.pressCrossRoadMarkLineChecker.pressMarkLines(eVar, examProcessor, z);
    }

    public void reset() {
        K3CollisionManager.getInstance().setProxy(null);
    }
}
