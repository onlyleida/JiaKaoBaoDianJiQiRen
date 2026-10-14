package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AngleVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.AroundCarVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.BianDaoVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DiaoTouVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DistanceVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DoorVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.EngineVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.FingerPrintVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.GearVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HandBrakeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.HuiZhenVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.KeepLightVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.LabaVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.LightVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.OffsetVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.QiBuVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SeatBeltVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SpeedDownVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.SpeedUpVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.StopVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ThreeTouchVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.TimeVariable;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.ZhuanWanVariable;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.model.AroundCarSensor;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class K3TeachDataCreator {
    public static Map<String, List<K3TeachEntity>> teachDataCache = new HashMap();

    private static K3TeachEntity createBanMaXianData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_BanMaXian;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将通过人行横道区域，请在人行横道前后5米内踩刹车").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "停车", "请刹车，在听到有行人通过人行横道后在5秒内停车，停车时间5秒").addVariable(new StopVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createBianDaoData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_BianDao;
        TeachData teachData = new TeachData(0, step.type, "开启左转向灯", "下面将进行变道项目，现在请开启左转向灯保持3秒以上");
        Light light = Light.TurnLeftLight;
        arrayList.add(teachData.addVariable(new LightVariable(light.lightId, true)).addVariable(new TimeVariable(3.0d)));
        TeachData teachData2 = new TeachData(5, step.type, "开启转向灯", "下面将进行变道项目，现在请开启转向灯保持3秒以上", true);
        Light light2 = Light.TurnRightLight;
        arrayList.add(teachData2.addVariable(new KeepLightVariable(new int[]{light2.lightId, light.lightId}, true, 3, 0)));
        arrayList.add(new TeachData(1, step.type, "开启右转向灯", "下面将进行变道项目，现在请开启右转向灯保持3秒以上").addVariable(new LightVariable(light2.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(2, step.type, "向左变道", "请开始向左变道").addVariable(new BianDaoVariable(0)));
        arrayList.add(new TeachData(3, step.type, "向右变道", "请开始向右变道").addVariable(new BianDaoVariable(1)));
        arrayList.add(new TeachData(6, step.type, "变道", "请开始变道").addVariable(new BianDaoVariable(2)));
        arrayList.add(new TeachData(4, step.type, "回正方向", "变道完成，请回正方向", true).addVariable(new HuiZhenVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createBusStationData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_BusStation;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将通过公共汽车站，请在公交站前后5m内踩刹车").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "停车", "下面将通过公共汽车站，请刹车，在听到有行人通过公共汽车站后在5秒内停车，停车时间5秒").addVariable(new StopVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createChaoCheData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_ChaoChe;
        arrayList.add(new TeachData(0, step.type, "开启左转向灯", "下面将进行超车项目，现在请开启左转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnLeftLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "向左变道", "请开始向左变道").addVariable(new BianDaoVariable(0)));
        arrayList.add(new TeachData(2, step.type, "行驶指定的距离", "变道完成，回正方向，继续行驶8米", true).addErrorVariable(new BianDaoVariable(1)).addVariable(new DistanceVariable().addRuleCode(206111)));
        arrayList.add(new TeachData(3, step.type, "开启右转向灯", "准备返回原车道，现在请开启右转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnRightLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(4, step.type, "向右变道", "请开始向右变道").addVariable(new BianDaoVariable(1)));
        arrayList.add(new TeachData(5, step.type, "回正方向", "变道完成，请回正方向", true).addVariable(new HuiZhenVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    public static List<K3TeachEntity> createDefault() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(createShangcheData());
        arrayList.add(createQiBuData());
        arrayList.add(createZhiXianData());
        arrayList.add(createBianDaoData());
        arrayList.add(createChaoCheData());
        arrayList.add(createHuiCheData());
        arrayList.add(createLuKouZuoZhuanData());
        arrayList.add(createLuKouYuoZhuanData());
        arrayList.add(createDiaoTouData());
        arrayList.add(createLuKouZhiXingData());
        arrayList.add(createJiaJianDangData());
        arrayList.add(createBusStationData());
        arrayList.add(createSchoolData());
        arrayList.add(createBanMaXianData());
        arrayList.add(createTingCheData());
        arrayList.add(createJianSuData());
        arrayList.add(createXianSuData());
        arrayList.add(createSuiDaoData());
        arrayList.add(createGongQiaoData());
        arrayList.add(createJiWanPoDaoData());
        arrayList.add(createLingTingData());
        arrayList.add(createRangXingData());
        arrayList.add(createHuanDaoData());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List<TeachData> list = ((K3TeachEntity) it.next()).items;
            if (list != null) {
                for (TeachData teachData : list) {
                }
            }
        }
        return arrayList;
    }

    private static K3TeachEntity createDiaoTouData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_DiaoTou;
        TeachData teachData = new TeachData(0, step.type, "开启左转向灯", "下面将进行掉头项目，现在请开启左转向灯保持3秒以上");
        Light light = Light.TurnLeftLight;
        arrayList.add(teachData.addVariable(new LightVariable(light.lightId, true)).addVariable(new TimeVariable(3.0d)));
        TeachData teachData2 = new TeachData(1, step.type, "开启右转向灯", "下面将进行掉头项目，现在请开启右转向灯保持3秒以上");
        Light light2 = Light.TurnRightLight;
        arrayList.add(teachData2.addVariable(new LightVariable(light2.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(2, step.type, "刹车", "请在停止线前踩刹车").addVariable(new FootBrakeVariable(1)));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(3, i, "挂到1挡", "请挂1挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        arrayList.add(new TeachData(4, step.type, "挂到2挡", "请挂2挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear2.gear)));
        arrayList.add(new TeachData(5, step.type, "掉头", "请在路口开始掉头，保持低速，注意红绿灯、行人").addVariable(new DiaoTouVariable()));
        arrayList.add(new TeachData(6, step.type, "回正方向盘", "转弯完成，请回正方向", true).addVariable(new HuiZhenVariable()));
        arrayList.add(new TeachData(7, step.type, "关闭转向灯", "请关闭转向灯", true).addVariable(new LightVariable(light.lightId, false)).addVariable(new LightVariable(light2.lightId, false)));
        arrayList.add(new TeachData(8, step.type, "停车", "请在路口停车观察红绿灯、行人。", false).addVariable(new StopVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createGongQiaoData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_GongQiao;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行通过拱桥项目，请踩刹车减速").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "按喇叭", "请按喇叭").addVariable(new LabaVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createHuanDaoData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_HuanDao;
        arrayList.add(new TeachData(0, step.type, "开启右转向灯", "下面将进行通过环岛项目，请开启右转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnRightLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createHuiCheData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_HuiChe;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行会车项目，进入项目后请在5秒内踩刹车", true).addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "向右偏移，与边线保持设置的距离", "车辆向右偏移，在30m内保持与边线不超过30厘米的距离", true).addVariable(new DistanceVariable().addRuleCode(207121)).addVariable(new AngleVariable(2).addRuleCode(207107)));
        arrayList.add(new TeachData(2, step.type, "保持正常行驶", "请保持正常行驶", true).addVariable(new DistanceVariable().addRuleCode(207112)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createJiWanPoDaoData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_JiWanPoDao;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行通过急弯坡路项目，请踩刹车减速").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "按喇叭", "请按喇叭").addVariable(new LabaVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createJiaJianDangData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_JiaJianDang;
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(0, i, "1挡", "下面将进行路口直行项目，请将挡位挂到1挡", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        arrayList.add(new TeachData(1, step.type, "2挡", "下面将进行路口直行项目，请将挡位挂到2挡", gearType).addVariable(new GearVariable(Gear.Gear2.gear)));
        arrayList.add(new TeachData(2, step.type, "3挡", "请轻踩油门加速，踩离合，将挡位挂到3挡", gearType).addVariable(new GearVariable(Gear.Gear3.gear)));
        arrayList.add(new TeachData(3, step.type, "4挡", "请轻踩油门加速，踩离合，将挡位挂到4挡", gearType).addVariable(new GearVariable(Gear.Gear4.gear)));
        arrayList.add(new TeachData(4, step.type, "5挡", "请轻踩油门加速，踩离合，将挡位挂到5挡", gearType).addVariable(new GearVariable(Gear.Gear5.gear)));
        arrayList.add(new TeachData(5, step.type, "降速", "加减档项目完成，请减速").addVariable(new FootBrakeVariable(1)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createJianSuData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_JianSu;
        arrayList.add(new TeachData(0, step.type, "刹车", "请在人行横道前踩刹车").addVariable(new FootBrakeVariable(1)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createLingTingData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_LinTing;
        arrayList.add(new TeachData(0, step.type, "开启右转向灯", "下面将进行靠边停车项目，现在请开启右转向灯保持3s以上准备向右停靠").addVariable(new LightVariable(Light.TurnRightLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "向右停靠", "开始向右停靠，注意观察右后视镜有无车辆人员").addVariable(new AngleVariable(2).addRuleCode(216128)));
        arrayList.add(new TeachData(2, step.type, "停车", "请准备停车").addVariable(new StopVariable()));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(3, i, "回空挡", "停车完成，请回空挡", gearType).addVariable(new GearVariable(Gear.GearN.gear)));
        int i2 = step.type;
        GearType gearType2 = GearType.auto;
        arrayList.add(new TeachData(4, i2, "回P挡", "停车完成，请回P挡", gearType2).addVariable(new GearVariable(Gear.GearP.gear)));
        arrayList.add(new TeachData(5, step.type, "拉手刹", "请拉手刹").addVariable(new HandBrakeVariable(0)));
        arrayList.add(new TeachData(6, step.type, "松脚刹", "请松脚刹").addVariable(new FootBrakeVariable(0)));
        arrayList.add(new TeachData(7, step.type, "解安全带", "请解安全带").addVariable(new SeatBeltVariable(0)));
        arrayList.add(new TeachData(8, step.type, "熄火", "请熄火").addVariable(new EngineVariable(1)));
        arrayList.add(new TeachData(9, step.type, "开车门", "请开车门").addVariable(new DoorVariable(0)));
        arrayList.add(new TeachData(10, step.type, "调整后视镜", "请调整后视镜").addVariable(new ThreeTouchVariable(TouchSensor.OutsideMirror.id)));
        TeachData teachDataAddVariable = new TeachData(11, step.type, "打开应急灯", "请开启应急灯保持3秒以上").addVariable(new TimeVariable().addRuleCode(222107));
        Light light = Light.WarningLight;
        arrayList.add(teachDataAddVariable.addVariable(new LightVariable(light.lightId, true)));
        arrayList.add(new TeachData(12, step.type, "开启左转向灯", "准备起步，现在请开启左转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnLeftLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(13, step.type, "关闭应急灯", "起步前关闭应急灯", true).addVariable(new LightVariable(light.lightId, false)));
        arrayList.add(new TeachData(14, step.type, "挂1挡", "请踩下刹车离合挂1挡", true, gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        arrayList.add(new TeachData(15, step.type, "挂D挡", "请踩下刹车挂D挡", true, gearType2).addVariable(new GearVariable(Gear.GearD.gear)));
        arrayList.add(new TeachData(16, step.type, "放手刹", "请放手刹", true).addVariable(new HandBrakeVariable(1)));
        arrayList.add(new TeachData(17, step.type, "起步", "请慢抬离合刹车准备起步", true, gearType).addVariable(new QiBuVariable()));
        arrayList.add(new TeachData(18, step.type, "起步", "请慢抬刹车准备起步", true, gearType2).addVariable(new QiBuVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createLuKouYuoZhuanData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_LuKouYouZhuan;
        TeachData teachData = new TeachData(0, step.type, "开启右转向灯", "下面将进行路口右转项目，现在请开启右转向灯保持3秒以上");
        Light light = Light.TurnRightLight;
        arrayList.add(teachData.addVariable(new LightVariable(light.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "刹车", "请在停止线前踩刹车").addVariable(new FootBrakeVariable(1)));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(2, i, "挂到1挡", "请挂1挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        arrayList.add(new TeachData(3, step.type, "挂到2挡", "请挂2挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear2.gear)));
        arrayList.add(new TeachData(4, step.type, "右转弯", "请在路口开始右转，保持低速，注意红绿灯、行人").addVariable(new ZhuanWanVariable(1)));
        arrayList.add(new TeachData(5, step.type, "回正方向盘", "转弯完成，请回正方向", true).addVariable(new HuiZhenVariable()));
        arrayList.add(new TeachData(6, step.type, "关闭转向灯", "项目结束前请关闭转向灯", true).addVariable(new LightVariable(light.lightId, false)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createLuKouZhiXingData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_LuKouZhiXing;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行路口直行项目，请在停止线前踩刹车").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "减速到指定速度", "下面将进行路口直行项目，请在停止线前踩刹车并减速到20码以下").addVariable(new SpeedDownVariable().addRuleCode(211104)));
        arrayList.add(new TeachData(2, step.type, "停车", "请在路口停车观察红绿灯、行人。").addVariable(new StopVariable()));
        arrayList.add(new TeachData(3, step.type, "起步", "请慢抬离合刹车准备起步", GearType.manual).addVariable(new QiBuVariable()));
        arrayList.add(new TeachData(4, step.type, "起步", "请慢抬刹车准备起步", GearType.auto).addVariable(new QiBuVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createLuKouZuoZhuanData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_LuKouZuoZhuan;
        TeachData teachData = new TeachData(0, step.type, "开启左转向灯", "下面将进行路口左转项目，现在请开启左转向灯保持3秒以上");
        Light light = Light.TurnLeftLight;
        arrayList.add(teachData.addVariable(new LightVariable(light.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "刹车", "请在停止线前踩刹车").addVariable(new FootBrakeVariable(1)));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(2, i, "挂到1挡", "请挂1挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        arrayList.add(new TeachData(3, step.type, "挂到2挡", "请挂2挡低速转弯", gearType).addVariable(new GearVariable(Gear.Gear2.gear)));
        arrayList.add(new TeachData(4, step.type, "左转弯", "请在路口开始左转，保持低速，注意红绿灯、行人").addVariable(new ZhuanWanVariable(0)));
        arrayList.add(new TeachData(5, step.type, "回正方向盘", "转弯完成，请回正方向", true).addVariable(new HuiZhenVariable()));
        arrayList.add(new TeachData(6, step.type, "关闭转向灯", "项目结束前请关闭转向灯", true).addVariable(new LightVariable(light.lightId, false)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createQiBuData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_QiBu;
        arrayList.add(new TeachData(0, step.type, "开启左转向灯", "下面将进行起步项目，现在请开启左转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnLeftLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "按喇叭", "请按喇叭，尽量按长一点时间哦").addVariable(new LabaVariable()));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(2, i, "挂1挡", "请踩下刹车离合挂1挡", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        int i2 = step.type;
        GearType gearType2 = GearType.auto;
        arrayList.add(new TeachData(3, i2, "挂D挡", "请踩下刹车挂D挡", gearType2).addVariable(new GearVariable(Gear.GearD.gear)));
        arrayList.add(new TeachData(4, step.type, "放手刹", "请放手刹").addVariable(new HandBrakeVariable(1)));
        arrayList.add(new TeachData(5, step.type, "起步", "请慢抬离合刹车起步", gearType).addVariable(new QiBuVariable()));
        arrayList.add(new TeachData(6, step.type, "起步", "请慢抬刹车起步", gearType2).addVariable(new QiBuVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createRangXingData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_RangXing;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行停车让行项目，请刹车，在停止线前停车").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "停车到设置的时间", "请停车保持5秒").addVariable(new StopVariable()).addVariable(new TimeVariable().addRuleCode(223105)));
        arrayList.add(new TeachData(2, step.type, "开启左转向灯", "准备起步，现在请开启左转向灯保持3秒以上").addVariable(new LightVariable(Light.TurnLeftLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        int i = step.type;
        GearType gearType = GearType.manual;
        arrayList.add(new TeachData(3, i, "挂1挡", "请踩下刹车离合挂1挡", gearType).addVariable(new GearVariable(Gear.Gear1.gear)));
        int i2 = step.type;
        GearType gearType2 = GearType.auto;
        arrayList.add(new TeachData(4, i2, "挂D挡", "请踩下刹车挂D挡", gearType2).addVariable(new GearVariable(Gear.GearD.gear)));
        arrayList.add(new TeachData(5, step.type, "放手刹", "请放手刹", true).addVariable(new HandBrakeVariable(1)));
        arrayList.add(new TeachData(6, step.type, "起步", "请慢抬离合刹车准备起步", gearType).addVariable(new QiBuVariable()));
        arrayList.add(new TeachData(7, step.type, "起步", "请慢抬刹车准备起步", gearType2).addVariable(new QiBuVariable()));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createSchoolData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_School;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将通过学校区域，请在学校区域前后5米内踩刹车").addVariable(new FootBrakeVariable(1)));
        arrayList.add(new TeachData(1, step.type, "停车", "下面将通过学校区域，请刹车，在听到有学生通过学校区域后在5秒内停车，停车时间5秒").addVariable(new StopVariable()));
        arrayList.add(new TeachData(2, step.type, "保持正常行驶", "请保持正常行驶", true).addVariable(new DistanceVariable().addRuleCode(214110)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createShangcheData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_ShangChe;
        arrayList.add(new TeachData(0, step.type, "按指纹", "请开始指纹验证").addVariable(new FingerPrintVariable()));
        arrayList.add(new TeachData(1, step.type, "打开车门", "下面将进行上车准备操作，先下车绕车一周检查车辆外观及安全状况，打开车门观前察后方交通情况", true).addVariable(new DoorVariable(0)));
        arrayList.add(new TeachData(2, step.type, "按绕车1（左前）按钮", "请去车辆左前方按下按钮").addVariable(new AroundCarVariable(AroundCarSensor.LeftFront.id)));
        arrayList.add(new TeachData(3, step.type, "按绕车2（左后）按钮", "请去车辆左后方按下按钮").addVariable(new AroundCarVariable(AroundCarSensor.LeftBack.id)));
        arrayList.add(new TeachData(4, step.type, "按绕车3（右后）按钮", "请去车辆右后方按下按钮").addVariable(new AroundCarVariable(AroundCarSensor.RightBack.id)));
        arrayList.add(new TeachData(5, step.type, "按绕车4（右前）按钮", "请去车辆右前方按下按钮").addVariable(new AroundCarVariable(AroundCarSensor.RightFront.id)));
        arrayList.add(new TeachData(6, step.type, "关闭车门", "请上车，关闭车门", true).addVariable(new DoorVariable(1)));
        arrayList.add(new TeachData(7, step.type, "摸三摸1（内后视镜）", "下面将进行三摸操作，请按内后视镜按钮").addVariable(new ThreeTouchVariable(TouchSensor.InsideMirror.id)));
        arrayList.add(new TeachData(8, step.type, "摸三摸2（外后视镜）", "请按外后视镜按钮").addVariable(new ThreeTouchVariable(TouchSensor.OutsideMirror.id)));
        arrayList.add(new TeachData(9, step.type, "摸三摸3（座椅下）", "请按座椅下按钮").addVariable(new ThreeTouchVariable(TouchSensor.Seat.id)));
        arrayList.add(new TeachData(10, step.type, "系安全带", "请系好安全带").addVariable(new SeatBeltVariable(1)));
        arrayList.add(new TeachData(11, step.type, "关闭远光灯", "请关闭远光灯", true).addVariable(new LightVariable(Light.FarLight.lightId, false)));
        arrayList.add(new TeachData(12, step.type, "启动发动机", "请启动发动机", true).addVariable(new EngineVariable(0)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createSuiDaoData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_SuiDao;
        arrayList.add(new TeachData(0, step.type, "刹车", "下面将进行通过隧道项目，请在项目开始后5s内踩刹车").addVariable(new FootBrakeVariable(1)));
        TeachData teachData = new TeachData(1, step.type, "打开近光灯", "进隧道需要打开灯光行驶，请打开近光灯");
        Light light = Light.NearLight;
        arrayList.add(teachData.addVariable(new LightVariable(light.lightId, true)));
        arrayList.add(new TeachData(2, step.type, "速度要求", "进隧道后，请保持一定速度行驶，最高速度不能超过40码，也不能低于20码速度").addVariable(new DistanceVariable().addRuleCode(219116)).addVariable(new SpeedDownVariable().addRuleCode(219105)).addVariable(new SpeedUpVariable().addRuleCode(219106)));
        arrayList.add(new TeachData(3, step.type, "关闭近光灯", "出隧道后请关闭近光灯").addVariable(new LightVariable(light.lightId, false)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createTingCheData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_TingChe;
        arrayList.add(new TeachData(0, step.type, "开启右转向灯", "下面将进行靠边停车项目，现在请开启右转向灯保持3s以上准备向右停靠").addVariable(new LightVariable(Light.TurnRightLight.lightId, true)).addVariable(new TimeVariable(3.0d)));
        arrayList.add(new TeachData(1, step.type, "向右停靠", "开始向右停靠，注意观察右后视镜有无车辆人员").addVariable(new AngleVariable(2).addRuleCode(216128)));
        arrayList.add(new TeachData(2, step.type, "停车", "请准备停车").addVariable(new StopVariable()));
        arrayList.add(new TeachData(3, step.type, "回空挡", "停车完成，请回空挡", GearType.manual).addVariable(new GearVariable(Gear.GearN.gear)));
        arrayList.add(new TeachData(4, step.type, "回P挡", "停车完成，请回P挡", GearType.auto).addVariable(new GearVariable(Gear.GearP.gear)));
        arrayList.add(new TeachData(5, step.type, "拉手刹", "请拉手刹").addVariable(new HandBrakeVariable(0)));
        arrayList.add(new TeachData(6, step.type, "松脚刹", "请松脚刹").addVariable(new FootBrakeVariable(0)));
        arrayList.add(new TeachData(7, step.type, "解安全带", "请解安全带").addVariable(new SeatBeltVariable(0)));
        arrayList.add(new TeachData(8, step.type, "熄火", "请熄火").addVariable(new EngineVariable(1)));
        arrayList.add(new TeachData(9, step.type, "开车门", "请开车门").addVariable(new DoorVariable(0)));
        arrayList.add(new TeachData(10, step.type, "调整后视镜", "请调整后视镜").addVariable(new ThreeTouchVariable(TouchSensor.OutsideMirror.id)));
        arrayList.add(new TeachData(11, step.type, "关闭灯光", "请关闭灯光", true).addVariable(new LightVariable(Light.Off.lightId, false)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createXianSuData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_XianSu;
        arrayList.add(new TeachData(0, step.type, "限速", "请保持20码以下行驶").addVariable(new SpeedDownVariable().addRuleCode(218103)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static K3TeachEntity createZhiXianData() {
        ArrayList arrayList = new ArrayList();
        Step step = Step.K3_ZhiXian;
        arrayList.add(new TeachData(0, step.type, "加速到指定速度", "下面将进行直行行驶项目，请保证车辆保持直线行驶，且速度加速到30码以上，注意安全").addVariable(new SpeedUpVariable().addRuleCode(204106)).addVariable(new DistanceVariable().addRuleCode(204110)).addErrorVariable(new OffsetVariable().addRuleCode(204104)).addErrorVariable(new AngleVariable(3).addRuleCode(204103)));
        return new K3TeachEntity(arrayList, step.type, step.name());
    }

    private static String getKey(String str) {
        return "K3_Teach_Data_" + str;
    }

    public static List<K3TeachEntity> getLocalTeachData(String str) {
        String strG;
        String key = getKey(str);
        if (!teachDataCache.containsKey(key) && (strG = i0.g(key, null)) != null) {
            try {
                teachDataCache.put(key, JSON.parseArray(strG, K3TeachEntity.class));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return teachDataCache.get(key);
    }

    public static void saveTeachDataToLocal(String str, List<K3TeachEntity> list) {
        String key = getKey(str);
        i0.m(key, JSON.toJSONString(list));
        teachDataCache.put(key, list);
    }
}
