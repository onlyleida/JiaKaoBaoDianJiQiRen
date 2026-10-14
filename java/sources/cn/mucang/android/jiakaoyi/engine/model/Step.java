package cn.mucang.android.jiakaoyi.engine.model;

import cn.mucang.android.jiakaoyi.engine.R;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.google.mlkit.common.MlKitException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.opencv.videoio.Videoio;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'K2_Global' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class Step {
    private static final /* synthetic */ Step[] $VALUES;
    public static final Step B2_CeFangTingChe;
    public static final Step B2_ChunHuaLu;
    public static final Step B2_DanBian;
    public static final Step B2_GaoSu;
    public static final Step B2_Global;
    public static final Step B2_JinJiQingKuang;
    public static final Step B2_QiDianQuYu;
    public static final Step B2_QiFu;
    public static final Step B2_SQuXian;
    public static final Step B2_ShanLu;
    public static final Step B2_ShangPoQiBu;
    public static final Step B2_ShiHuaLuMian;
    public static final Step B2_SuiDao;
    public static final Step B2_XianKuan;
    public static final Step B2_ZhaiLuDiaoTou;
    public static final Step B2_ZhangAi;
    public static final Step B2_ZhiJiaoZhuanWan;
    public static final Step B2_ZhuangKao;
    public static final Step K2_BianXianShiBie;
    public static final Step K2_CeFangTingChe;
    public static final Step K2_DaoCheRuKu;
    public static final Step K2_DoubleYuanHuan;
    public static final Step K2_ETC;
    public static final Step K2_Global;
    public static final Step K2_JinJiQingKuang;
    public static final Step K2_QiDianQuYu;
    public static final Step K2_QuKa;
    public static final Step K2_SQuXian;
    public static final Step K2_ShangPoQiBu;
    public static final Step K2_ShiHuaLuMian;
    public static final Step K2_SuiDao;
    public static final Step K2_XiaCheJianCha;
    public static final Step K2_YuanHuanLianXi;
    public static final Step K2_ZhaiLuDiaoTou;
    public static final Step K2_ZhiJiaoZhuanWan;
    public static final Step Moto_BanMaXian;
    public static final Step Moto_BianDao;
    public static final Step Moto_ChangDi;
    public static final Step Moto_DanBian;
    public static final Step Moto_DiaoTou;
    public static final Step Moto_Global;
    public static final Step Moto_JiaJianDang;
    public static final Step Moto_LightSimulate;
    public static final Step Moto_LuKouYouZhuan;
    public static final Step Moto_LuKouZhiXing;
    public static final Step Moto_LuKouZuoZhuan;
    public static final Step Moto_QiBu;
    public static final Step Moto_QiDianQuYu;
    public static final Step Moto_ShangChe;
    public static final Step Moto_ShangPoQiBu;
    public static final Step Moto_TingChe;
    public static final Step Moto_ZhiXian;
    public static final Step Moto_ZhuangKao;
    private static final Map<Integer, Step> cache;
    public final int number;
    public final String stepName;
    public final int type;
    public final String zhStepName;
    public static final Step K2_Param = new Step("K2_Param", 0, k0.a(R.string.engine_param_config), -1, "参数配置");
    public static final Step K3_Global = new Step("K3_Global", 1, k0.a(R.string.engine_global), 3, "全局通用事件");
    public static final Step K3_ShangChe = new Step("K3_ShangChe", 2, k0.a(R.string.engine_shangche), 1, "上车准备");
    public static final Step K3_LightSimulate = new Step("K3_LightSimulate", 3, k0.a(R.string.engine_light_simulate), 2, "灯光模拟");
    public static final Step K3_QiBu = new Step("K3_QiBu", 4, k0.a(R.string.engine_qibu), 4, "起步");
    public static final Step K3_ZhiXian = new Step("K3_ZhiXian", 5, k0.a(R.string.engine_zhixian), 5, "直线行驶");
    public static final Step K3_BianDao = new Step("K3_BianDao", 6, k0.a(R.string.engine_biandao), 6, "变更车道");
    public static final Step K3_ChaoChe = new Step("K3_ChaoChe", 7, k0.a(R.string.engine_chaoche), 7, "超车");
    public static final Step K3_HuiChe = new Step("K3_HuiChe", 8, k0.a(R.string.engine_huiche), 8, "前方会车");
    public static final Step K3_LuKouZuoZhuan = new Step("K3_LuKouZuoZhuan", 9, k0.a(R.string.engine_lukouzuozhuan), 9, "路口左转");
    public static final Step K3_LuKouYouZhuan = new Step("K3_LuKouYouZhuan", 10, k0.a(R.string.engine_lukouyouzhuan), 10, "路口右转");
    public static final Step K3_DiaoTou = new Step("K3_DiaoTou", 11, k0.a(R.string.engine_diaotou), 11, "掉头");
    public static final Step K3_LuKouZhiXing = new Step("K3_LuKouZhiXing", 12, k0.a(R.string.engine_lukouzhixing), 12, "路口直行");
    public static final Step K3_JiaJianDang = new Step("K3_JiaJianDang", 13, k0.a(R.string.engine_jiajiandang), 13, "加减挡");
    public static final Step K3_BusStation = new Step("K3_BusStation", 14, k0.a(R.string.engine_busstation), 14, "通过公共汽车站");
    public static final Step K3_School = new Step("K3_School", 15, k0.a(R.string.engine_school), 15, "通过学校");
    public static final Step K3_BanMaXian = new Step("K3_BanMaXian", 16, k0.a(R.string.engine_banmaxian), 16, "通过人行横道");
    public static final Step K3_TingChe = new Step("K3_TingChe", 17, k0.a(R.string.engine_tingche), 17, "靠边停车");
    public static final Step K3_JianSu = new Step("K3_JianSu", 18, k0.a(R.string.engine_jiansu), 18, "减速");
    public static final Step K3_XianSu = new Step("K3_XianSu", 19, k0.a(R.string.engine_xiansu), 19, "限速");
    public static final Step K3_SuiDao = new Step("K3_SuiDao", 20, k0.a(R.string.engine_suidao), 20, "通过隧道");
    public static final Step K3_GongQiao = new Step("K3_GongQiao", 21, k0.a(R.string.engine_gongqiao), 21, "通过拱桥");
    public static final Step K3_JiWanPoDao = new Step("K3_JiWanPoDao", 22, k0.a(R.string.engine_jiawanpodao), 22, "通过急弯坡路");
    public static final Step K3_LinTing = new Step("K3_LinTing", 23, k0.a(R.string.engine_linting), 23, "临时停车");
    public static final Step K3_RangXing = new Step("K3_RangXing", 24, k0.a(R.string.engine_rangxing), 24, "停车让行");
    public static final Step K3_HuanDao = new Step("K3_HuanDao", 25, k0.a(R.string.engine_huandao), 25, "通过环岛");
    public static final Step K3_JinTing = new Step("K3_JinTing", 26, k0.a(R.string.engine_jingting), 26, "通过禁止停车区域");
    public static final Step K3_BianDaoChaoChe = new Step("K3_BianDaoChaoChe", 27, k0.a(R.string.engine_chaochebiandao), 27, "超车(仅变道)");
    public static final Step K3_TeShuQuYu = new Step("K3_TeShuQuYu", 28, k0.a(R.string.engine_teshuquyu), 28, "特殊区域");

    static {
        int i = R.string.engine_global;
        K2_Global = new Step("K2_Global", 29, k0.a(i), 101, "全局通用事件");
        K2_DaoCheRuKu = new Step("K2_DaoCheRuKu", 30, k0.a(R.string.engine_daocheruku), 102, 1, "倒车入库");
        int i2 = R.string.engine_shangpoqibu;
        K2_ShangPoQiBu = new Step("K2_ShangPoQiBu", 31, k0.a(i2), 103, 4, "上坡起步");
        int i3 = R.string.engine_zhijiaozhuanwan;
        K2_ZhiJiaoZhuanWan = new Step("K2_ZhiJiaoZhuanWan", 32, k0.a(i3), 104, 5, "直角转弯");
        int i4 = R.string.engine_cefangtingche;
        K2_CeFangTingChe = new Step("K2_CeFangTingChe", 33, k0.a(i4), 105, 2, "侧方停车");
        int i5 = R.string.engine_quxian;
        K2_SQuXian = new Step("K2_SQuXian", 34, k0.a(i5), 106, 3, "曲线行驶");
        K2_QuKa = new Step("K2_QuKa", 35, k0.a(R.string.engine_tingchequka), 107, 6, "停车取卡");
        K2_XiaCheJianCha = new Step("K2_XiaCheJianCha", 36, k0.a(R.string.engine_xiachejiancha), 108, "下车检查");
        int i6 = R.string.engine_qidianquyu;
        K2_QiDianQuYu = new Step("K2_QiDianQuYu", 37, k0.a(i6), 109, 12, "起点区域");
        int i7 = R.string.engine_zhailudiaotou;
        K2_ZhaiLuDiaoTou = new Step("K2_ZhaiLuDiaoTou", 38, k0.a(i7), 110, 7, "窄路掉头");
        K2_JinJiQingKuang = new Step("K2_JinJiQingKuang", 39, k0.a(R.string.engine_jingjiqingkuang), 111, 8, "紧急情况");
        K2_ShiHuaLuMian = new Step("K2_ShiHuaLuMian", 40, k0.a(R.string.engine_shihualumian), 112, 9, "湿滑路面");
        int i8 = R.string.engine_molisuidao;
        K2_SuiDao = new Step("K2_SuiDao", 41, k0.a(i8), 113, 10, "模拟隧道");
        K2_BianXianShiBie = new Step("K2_BianXianShiBie", 42, k0.a(R.string.engine_bianxianlianxi), 114, "边线练习");
        K2_ETC = new Step("K2_ETC", 43, k0.a(R.string.engine_molietc), 115, 11, "模拟ETC");
        K2_YuanHuanLianXi = new Step("K2_YuanHuanLianXi", 44, k0.a(R.string.engine_huanxinglianxi), 116, "圆环练习");
        K2_DoubleYuanHuan = new Step("K2_DoubleYuanHuan", 45, k0.a(R.string.engine_bazilianxi), 117, "8字路练习");
        B2_Global = new Step("B2_Global", 46, k0.a(i), MlKitException.CODE_SCANNER_CANCELLED, "全局通用事件");
        B2_ShangPoQiBu = new Step("B2_ShangPoQiBu", 47, k0.a(i2), MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 4, "上坡起步");
        B2_SQuXian = new Step("B2_SQuXian", 48, k0.a(i5), 203, 3, "曲线行驶");
        B2_CeFangTingChe = new Step("B2_CeFangTingChe", 49, k0.a(i4), MlKitException.CODE_SCANNER_TASK_IN_PROGRESS, 2, "侧方停车");
        B2_ZhiJiaoZhuanWan = new Step("B2_ZhiJiaoZhuanWan", 50, k0.a(i3), MlKitException.CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR, 5, "直角转弯");
        B2_QiDianQuYu = new Step("B2_QiDianQuYu", 51, k0.a(i6), MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, "起点区域");
        B2_ZhaiLuDiaoTou = new Step("B2_ZhaiLuDiaoTou", 52, k0.a(i7), MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 7, "窄路掉头");
        B2_JinJiQingKuang = new Step("B2_JinJiQingKuang", 53, k0.a(R.string.engine_molijingjiqingkuang), 208, 8, "模拟紧急情况处置");
        B2_ShiHuaLuMian = new Step("B2_ShiHuaLuMian", 54, k0.a(R.string.engine_moliyuwutianqi), 209, 9, "模拟雨雾天湿滑路面");
        B2_SuiDao = new Step("B2_SuiDao", 55, k0.a(i8), 210, 10, "模拟隧道");
        int i9 = R.string.engine_zhuangkao;
        B2_ZhuangKao = new Step("B2_ZhuangKao", 56, k0.a(i9), 211, 1, "桩考");
        int i10 = R.string.engine_danbianqiao;
        B2_DanBian = new Step("B2_DanBian", 57, k0.a(i10), 212, 6, "单边桥");
        B2_XianKuan = new Step("B2_XianKuan", 58, k0.a(R.string.engine_xiankuanmen), 213, 11, "限宽门");
        B2_ZhangAi = new Step("B2_ZhangAi", 59, k0.a(R.string.engine_lianxuzhangai), 214, 13, "连续障碍");
        B2_QiFu = new Step("B2_QiFu", 60, k0.a(R.string.engine_qifulu), 215, 14, "起伏路");
        B2_ShanLu = new Step("B2_ShanLu", 61, k0.a(R.string.engine_lianxujiwanshanlu), 216, 15, "连续急弯山路");
        B2_GaoSu = new Step("B2_GaoSu", 62, k0.a(R.string.engine_moligaosu), 217, 12, "模拟高速公路行驶");
        B2_ChunHuaLu = new Step("B2_ChunHuaLu", 63, k0.a(R.string.engine_molishihualumian), 218, 16, "模拟湿滑路面");
        Moto_Global = new Step("Moto_Global", 64, k0.a(R.string.engine_global), Videoio.CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE, "全局通用事件");
        Moto_ZhuangKao = new Step("Moto_ZhuangKao", 65, k0.a(i9), 302, 2, "桩考");
        Moto_ShangPoQiBu = new Step("Moto_ShangPoQiBu", 66, k0.a(R.string.engine_shangpoqibu), Videoio.CAP_PROP_PVAPI_DECIMATIONVERTICAL, 1, "上坡起步");
        Moto_DanBian = new Step("Moto_DanBian", 67, k0.a(i10), Videoio.CAP_PROP_PVAPI_BINNINGX, 3, "单边桥");
        Moto_QiDianQuYu = new Step("Moto_QiDianQuYu", 68, k0.a(R.string.engine_qidianquyu), Videoio.CAP_PROP_PVAPI_BINNINGY, "起点区域");
        Moto_ShangChe = new Step("Moto_ShangChe", 69, k0.a(R.string.engine_shangche), 331, 4, "上车准备");
        Moto_QiBu = new Step("Moto_QiBu", 70, k0.a(R.string.engine_qibu), 332, 5, "起步");
        Moto_ZhiXian = new Step("Moto_ZhiXian", 71, k0.a(R.string.engine_zhixian), AMapEngineUtils.ARROW_LINE_SHADOW_TEXTURE_ID, 6, "直线行驶");
        Moto_BianDao = new Step("Moto_BianDao", 72, k0.a(R.string.engine_biandao), 334, 13, "变更车道");
        Moto_LuKouZuoZhuan = new Step("Moto_LuKouZuoZhuan", 73, k0.a(R.string.engine_lukouzuozhuan), 335, 9, "路口左转");
        Moto_LuKouYouZhuan = new Step("Moto_LuKouYouZhuan", 74, k0.a(R.string.engine_lukouyouzhuan), 336, 10, "路口右转");
        Moto_LuKouZhiXing = new Step("Moto_LuKouZhiXing", 75, k0.a(R.string.engine_lukouzhixing), 337, "路口直行");
        Moto_BanMaXian = new Step("Moto_BanMaXian", 76, k0.a(R.string.engine_banmaxian), 338, 11, "通过人行横道");
        Moto_DiaoTou = new Step("Moto_DiaoTou", 77, k0.a(R.string.engine_diaotou), 339, 12, "掉头");
        Moto_TingChe = new Step("Moto_TingChe", 78, k0.a(R.string.engine_tingche), 340, 8, "靠边停车");
        Moto_LightSimulate = new Step("Moto_LightSimulate", 79, k0.a(R.string.engine_light_simulate), 341, 14, "灯光模拟");
        Moto_ChangDi = new Step("Moto_ChangDi", 80, k0.a(R.string.engine_changdixianlu), 342, "场地线路");
        Moto_JiaJianDang = new Step("Moto_JiaJianDang", 81, k0.a(R.string.engine_jiajiandang), 343, 7, "加减挡");
        $VALUES = new Step[]{K2_Param, K3_Global, K3_ShangChe, K3_LightSimulate, K3_QiBu, K3_ZhiXian, K3_BianDao, K3_ChaoChe, K3_HuiChe, K3_LuKouZuoZhuan, K3_LuKouYouZhuan, K3_DiaoTou, K3_LuKouZhiXing, K3_JiaJianDang, K3_BusStation, K3_School, K3_BanMaXian, K3_TingChe, K3_JianSu, K3_XianSu, K3_SuiDao, K3_GongQiao, K3_JiWanPoDao, K3_LinTing, K3_RangXing, K3_HuanDao, K3_JinTing, K3_BianDaoChaoChe, K3_TeShuQuYu, K2_Global, K2_DaoCheRuKu, K2_ShangPoQiBu, K2_ZhiJiaoZhuanWan, K2_CeFangTingChe, K2_SQuXian, K2_QuKa, K2_XiaCheJianCha, K2_QiDianQuYu, K2_ZhaiLuDiaoTou, K2_JinJiQingKuang, K2_ShiHuaLuMian, K2_SuiDao, K2_BianXianShiBie, K2_ETC, K2_YuanHuanLianXi, K2_DoubleYuanHuan, B2_Global, B2_ShangPoQiBu, B2_SQuXian, B2_CeFangTingChe, B2_ZhiJiaoZhuanWan, B2_QiDianQuYu, B2_ZhaiLuDiaoTou, B2_JinJiQingKuang, B2_ShiHuaLuMian, B2_SuiDao, B2_ZhuangKao, B2_DanBian, B2_XianKuan, B2_ZhangAi, B2_QiFu, B2_ShanLu, B2_GaoSu, B2_ChunHuaLu, Moto_Global, Moto_ZhuangKao, Moto_ShangPoQiBu, Moto_DanBian, Moto_QiDianQuYu, Moto_ShangChe, Moto_QiBu, Moto_ZhiXian, Moto_BianDao, Moto_LuKouZuoZhuan, Moto_LuKouYouZhuan, Moto_LuKouZhiXing, Moto_BanMaXian, Moto_DiaoTou, Moto_TingChe, Moto_LightSimulate, Moto_ChangDi, Moto_JiaJianDang};
        cache = new HashMap();
        for (Step step : values()) {
            cache.put(Integer.valueOf(step.type), step);
        }
    }

    private Step(String str, int i, String str2, int i2, String str3) {
        super(str, i);
        this.stepName = str2;
        this.type = i2;
        this.number = -1;
        this.zhStepName = str3;
    }

    public static List<Step> b2RobotSteps() {
        List<Step> listB2Steps = b2Steps();
        listB2Steps.remove(B2_QiDianQuYu);
        return listB2Steps;
    }

    public static List<Step> b2Steps() {
        Step[] stepArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (Step step : stepArrValues) {
            int i = step.type;
            KeMu keMu = KeMu.B2;
            if (i >= keMu.min && i <= keMu.max) {
                arrayList.add(step);
            }
        }
        return arrayList;
    }

    public static Step findWithB2Number(int i) {
        for (Step step : values()) {
            int i2 = step.type;
            KeMu keMu = KeMu.B2;
            if (i2 >= keMu.min && i2 <= keMu.max && step.number == i) {
                return step;
            }
        }
        return null;
    }

    public static Step findWithK2Number(int i) {
        for (Step step : values()) {
            int i2 = step.type;
            KeMu keMu = KeMu.K2;
            if (i2 >= keMu.min && i2 <= keMu.max && step.number == i) {
                return step;
            }
        }
        return null;
    }

    public static Step findWithMotoNumber(int i) {
        for (Step step : values()) {
            int i2 = step.type;
            KeMu keMu = KeMu.Moto;
            if (i2 >= keMu.min && i2 <= keMu.max && step.number == i) {
                return step;
            }
        }
        return null;
    }

    public static Step findWithType(int i) {
        return cache.get(Integer.valueOf(i));
    }

    public static List<Step> k2Steps() {
        Step[] stepArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (Step step : stepArrValues) {
            if (step != K2_XiaCheJianCha && step != K2_YuanHuanLianXi && step != K2_DoubleYuanHuan) {
                int i = step.type;
                KeMu keMu = KeMu.K2;
                if (i >= keMu.min && i <= keMu.max) {
                    arrayList.add(step);
                }
            }
        }
        return arrayList;
    }

    public static List<Step> k3Steps() {
        Step[] stepArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (Step step : stepArrValues) {
            int i = step.type;
            KeMu keMu = KeMu.K3;
            if (i >= keMu.min && i <= keMu.max) {
                arrayList.add(step);
            }
        }
        return arrayList;
    }

    public static List<Step> motoSteps() {
        Step[] stepArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (Step step : stepArrValues) {
            int i = step.type;
            KeMu keMu = KeMu.Moto;
            if (i >= keMu.min && i <= keMu.max && step != Moto_LuKouZhiXing) {
                arrayList.add(step);
            }
        }
        return arrayList;
    }

    public static List<Step> robotSteps() {
        List<Step> listK2Steps = k2Steps();
        listK2Steps.remove(K2_QiDianQuYu);
        listK2Steps.remove(K2_BianXianShiBie);
        listK2Steps.remove(K2_JinJiQingKuang);
        return listK2Steps;
    }

    public static Step valueOf(String str) {
        return (Step) Enum.valueOf(Step.class, str);
    }

    public static Step[] values() {
        return (Step[]) $VALUES.clone();
    }

    public String getStepName() {
        return cn.mucang.android.jiakaoyi.engine.k.a.e(this);
    }

    public boolean isGlobal() {
        return this == K2_Global || this == B2_Global;
    }

    public boolean needStepHandler() {
        return (this == K2_Global || this == K3_Global || this == K3_LightSimulate || this == B2_Global || this == Moto_Global || this == Moto_ChangDi) ? false : true;
    }

    private Step(String str, int i, String str2, int i2, int i3, String str3) {
        super(str, i);
        this.stepName = str2;
        this.type = i2;
        this.number = i3;
        this.zhStepName = str3;
    }
}
