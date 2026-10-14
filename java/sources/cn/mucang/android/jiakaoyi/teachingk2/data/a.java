package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.JudgeType;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import com.iflytek.cloud.ErrorCode;
import io.agora.rtc.internal.RtcEngineEvent;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Step, Map<Integer, Deduct>> f6984a = new HashMap();

    static {
        n();
    }

    public static e a(Deduct deduct, Step step) {
        Constructor<?> constructor;
        String strName = step.name();
        try {
            Constructor<?>[] constructors = Class.forName("cn.mucang.android.jiakaoyi.teachingk2.rule." + strName.replace("K2_", "").toLowerCase() + "." + strName.replace("K2_", "Teach_") + "_" + deduct.code + "_Event").getConstructors();
            int length = constructors.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    constructor = null;
                    break;
                }
                constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes != null && parameterTypes.length == 2) {
                    break;
                }
                i++;
            }
            if (constructor != null) {
                return (e) constructor.newInstance(new SimpleTeachingConfig(), deduct);
            }
            t.d("TAG", "扣分项构造失败:deduct = " + deduct + " , Constructor = " + constructor);
            return null;
        } catch (Exception e2) {
            t.d("TAG", "固定事件扣分项构造失败:" + e2.getLocalizedMessage());
        }
    }

    private static Map<Integer, Deduct> b() {
        HashMap map = new HashMap();
        Integer numValueOf = Integer.valueOf(RtcEngineEvent.EvtType.EVT_OPEN_CHANNEL_SUCCESS);
        Step step = Step.K2_CeFangTingChe;
        JudgeType judgeType = JudgeType.both;
        map.put(numValueOf, new Deduct(RtcEngineEvent.EvtType.EVT_OPEN_CHANNEL_SUCCESS, "车身出库右边线", "车身出库右边线", 100, step, judgeType));
        map.put(13002, new Deduct(13002, "车身出库底边线", "车身出库底边线", 100, step, judgeType));
        map.put(13003, new Deduct(13003, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(13004, new Deduct(13004, "出库时未打转向灯", "出库时未打转向灯", 100, step, judgeType));
        map.put(13005, new Deduct(13005, "出库时打错转向灯", "出库时打错转向灯", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_LEAVE_CHANNEL), new Deduct(RtcEngineEvent.EvtType.EVT_LEAVE_CHANNEL, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_NETWORK_QUALITY), new Deduct(RtcEngineEvent.EvtType.EVT_NETWORK_QUALITY, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_USER_OFFLINE), new Deduct(RtcEngineEvent.EvtType.EVT_USER_OFFLINE, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(13009, new Deduct(13009, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_RTC_STATS), new Deduct(RtcEngineEvent.EvtType.EVT_RTC_STATS, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> c() {
        HashMap map = new HashMap();
        Step step = Step.K2_DaoCheRuKu;
        JudgeType judgeType = JudgeType.both;
        map.put(11001, new Deduct(11001, "车身出库左边线", "车身出库左边线", 100, step, judgeType));
        map.put(11002, new Deduct(11002, "车身出库右边线", "车身出库右边线", 100, step, judgeType));
        map.put(11003, new Deduct(11003, "车身出库底边线", "车身出库底边线", 100, step, judgeType));
        map.put(11004, new Deduct(11004, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(11005, new Deduct(11005, "倒库不入", "倒库不入", 100, step, judgeType));
        map.put(11006, new Deduct(11006, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT), new Deduct(Videoio.CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(11008, new Deduct(11008, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(11009, new Deduct(11009, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(11010, new Deduct(11010, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        return map;
    }

    public static Map<Step, Map<Integer, Deduct>> d() {
        return f6984a;
    }

    private static Map<Integer, Deduct> e() {
        HashMap map = new HashMap();
        Step step = Step.K2_ETC;
        JudgeType judgeType = JudgeType.both;
        map.put(19002, new Deduct(19002, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(19003, new Deduct(19003, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(19004, new Deduct(19004, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(19005, new Deduct(19005, "右后轮压线", "右后轮压线", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> f() {
        HashMap map = new HashMap();
        Integer numValueOf = Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_NOT_FOUND);
        Step step = Step.K2_ShiHuaLuMian;
        JudgeType judgeType = JudgeType.both;
        map.put(numValueOf, new Deduct(ErrorCode.MSP_ERROR_LMOD_NOT_FOUND, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_UNEXPECTED_BIN), new Deduct(ErrorCode.MSP_ERROR_LMOD_UNEXPECTED_BIN, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_LOADCODE), new Deduct(ErrorCode.MSP_ERROR_LMOD_LOADCODE, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_PRECALL), new Deduct(ErrorCode.MSP_ERROR_LMOD_PRECALL, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_RUNTIME_EXCEPTION), new Deduct(ErrorCode.MSP_ERROR_LMOD_RUNTIME_EXCEPTION, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_LMOD_ALREADY_LOADED), new Deduct(ErrorCode.MSP_ERROR_LMOD_ALREADY_LOADED, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        map.put(16007, new Deduct(16007, "进入雨雾天湿滑路预报点前，操作灯光", "进入雨雾天湿滑路预报点前，操作灯光", 100, step, judgeType));
        map.put(16008, new Deduct(16008, "进入雨雾天湿滑路前，未踩刹车减速", "进入雨雾天湿滑路前，未踩刹车减速", 100, step, judgeType));
        map.put(16009, new Deduct(16009, "进入雨雾天湿滑路未开应急灯", "进入雨雾天湿滑路未开应急灯", 100, step, judgeType));
        map.put(16010, new Deduct(16010, "进入雨雾天湿滑路未开雾灯", "进入雨雾天湿滑路未开雾灯", 100, step, judgeType));
        map.put(16011, new Deduct(16011, "进入雨雾天湿滑路未开大灯", "进入雨雾天湿滑路未开大灯", 100, step, judgeType));
        map.put(16012, new Deduct(16012, "进入雨雾天湿滑路未开雨刮器", "进入雨雾天湿滑路未开雨刮器", 100, step, judgeType));
        map.put(16013, new Deduct(16013, "离开雨雾天湿滑路时未关闭灯光", "离开雨雾天湿滑路时未关闭灯光", 100, step, judgeType));
        map.put(16014, new Deduct(16014, "离开雨雾天湿滑路时未关闭雨刮", "离开雨雾天湿滑路时未关闭雨刮", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> g() {
        HashMap map = new HashMap();
        map.put(21001, new Deduct(21001, "停车后未及时打开报警灯", "停车后未及时打开报警灯", 100, Step.K2_JinJiQingKuang, JudgeType.both));
        return map;
    }

    private static Map<Integer, Deduct> h() {
        HashMap map = new HashMap();
        Step step = Step.K2_QuKa;
        JudgeType judgeType = JudgeType.both;
        map.put(20001, new Deduct(20001, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_NETWORK_TIMEOUT), new Deduct(ErrorCode.ERROR_NETWORK_TIMEOUT, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_NET_EXCEPTION), new Deduct(ErrorCode.ERROR_NET_EXCEPTION, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_INVALID_RESULT), new Deduct(ErrorCode.ERROR_INVALID_RESULT, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_NO_MATCH), new Deduct(ErrorCode.ERROR_NO_MATCH, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_AUDIO_RECORD), new Deduct(ErrorCode.ERROR_AUDIO_RECORD, "驶过停车取卡位置未停车", "驶过停车取卡位置未停车", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_NO_SPEECH), new Deduct(ErrorCode.ERROR_NO_SPEECH, "车身距路边线大于50厘米", "车身距路边线大于50厘米", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.ERROR_SPEECH_TIMEOUT), new Deduct(ErrorCode.ERROR_SPEECH_TIMEOUT, "停车后未拉手刹", "停车后未拉手刹", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> i() {
        HashMap map = new HashMap();
        Integer numValueOf = Integer.valueOf(ErrorCode.MSP_ERROR_MMP_MYSQL_INITFAIL);
        Step step = Step.K2_SQuXian;
        JudgeType judgeType = JudgeType.both;
        map.put(numValueOf, new Deduct(ErrorCode.MSP_ERROR_MMP_MYSQL_INITFAIL, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_MMP_REDIS_INITFAIL), new Deduct(ErrorCode.MSP_ERROR_MMP_REDIS_INITFAIL, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_MMP_NETDSS_INITFAIL), new Deduct(ErrorCode.MSP_ERROR_MMP_NETDSS_INITFAIL, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_MMP_TAIR_INITFAIL), new Deduct(ErrorCode.MSP_ERROR_MMP_TAIR_INITFAIL, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(15005, new Deduct(15005, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_MMP_MAIL_SESSION_FAIL), new Deduct(ErrorCode.MSP_ERROR_MMP_MAIL_SESSION_FAIL, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> j() {
        HashMap map = new HashMap();
        Step step = Step.K2_ShangPoQiBu;
        JudgeType judgeType = JudgeType.both;
        map.put(12001, new Deduct(12001, "前保险杠未定于桩杆线", "前保险杠未定于桩杆线", 100, step, judgeType));
        map.put(12002, new Deduct(12002, "车身距路边线超出30厘米，未超出50厘米", "车身距路边线超出30厘米，未超出50厘米", 100, step, judgeType));
        map.put(12003, new Deduct(12003, "车身出右边线", "车身出右边线", 100, step, judgeType));
        map.put(12004, new Deduct(12004, "车身出左边线", "车身出左边线", 100, step, judgeType));
        map.put(12005, new Deduct(12005, "车辆后溜超出10厘米，未超出30厘米", "车辆后溜超出10厘米，未超出30厘米", 100, step, judgeType));
        map.put(12006, new Deduct(12006, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(12007, new Deduct(12007, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(12008, new Deduct(12008, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(12009, new Deduct(12009, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(12010, new Deduct(12010, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        map.put(12011, new Deduct(12011, "车身距路边线超出50厘米", "车身距路边线超出50厘米", 100, step, judgeType));
        map.put(12012, new Deduct(12012, "车辆后溜超出30厘米", "车辆后溜超出30厘米", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> k() {
        HashMap map = new HashMap();
        Integer numValueOf = Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_PREVIEW);
        Step step = Step.K2_SuiDao;
        JudgeType judgeType = JudgeType.both;
        map.put(numValueOf, new Deduct(Videoio.CAP_PROP_GPHOTO2_PREVIEW, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_WIDGET_ENUMERATE), new Deduct(Videoio.CAP_PROP_GPHOTO2_WIDGET_ENUMERATE, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_RELOAD_CONFIG), new Deduct(Videoio.CAP_PROP_GPHOTO2_RELOAD_CONFIG, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE), new Deduct(Videoio.CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_COLLECT_MSGS), new Deduct(Videoio.CAP_PROP_GPHOTO2_COLLECT_MSGS, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_GPHOTO2_FLUSH_MSGS), new Deduct(Videoio.CAP_PROP_GPHOTO2_FLUSH_MSGS, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_SPEED), new Deduct(Videoio.CAP_PROP_SPEED, "进入隧道前，未踩刹车减速", "进入隧道前，未踩刹车减速", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_APERTURE), new Deduct(Videoio.CAP_PROP_APERTURE, "进入隧道时未鸣喇叭", "进入隧道时未鸣喇叭", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_EXPOSUREPROGRAM), new Deduct(Videoio.CAP_PROP_EXPOSUREPROGRAM, "进入隧道预报点前，开启大灯", "进入隧道预报点前，开启大灯", 100, step, judgeType));
        map.put(Integer.valueOf(Videoio.CAP_PROP_VIEWFINDER), new Deduct(Videoio.CAP_PROP_VIEWFINDER, "进入隧道时未开启大灯", "进入隧道时未开启大灯", 100, step, judgeType));
        map.put(17011, new Deduct(17011, "离开隧道前未鸣喇叭", "离开隧道前未鸣喇叭", 100, step, judgeType));
        map.put(17012, new Deduct(17012, "不按考试员指令驾驶", "不按考试员指令驾驶", 100, step, judgeType));
        map.put(17013, new Deduct(17013, "离开隧道时未关闭大灯", "离开隧道时未关闭大灯", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> l() {
        HashMap map = new HashMap();
        Step step = Step.K2_ZhaiLuDiaoTou;
        JudgeType judgeType = JudgeType.both;
        map.put(18001, new Deduct(18001, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(18002, new Deduct(18002, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(18003, new Deduct(18003, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(18004, new Deduct(18004, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(18005, new Deduct(18005, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(18006, new Deduct(18006, "未按规定完成项目", "未按规定完成项目", 100, step, judgeType));
        map.put(18007, new Deduct(18007, "未在规定的动作内完成掉头", "未在规定的动作内完成掉头", 100, step, judgeType));
        return map;
    }

    private static Map<Integer, Deduct> m() {
        HashMap map = new HashMap();
        Step step = Step.K2_ZhiJiaoZhuanWan;
        JudgeType judgeType = JudgeType.both;
        map.put(14001, new Deduct(14001, "未打转向灯", "未打转向灯", 100, step, judgeType));
        map.put(14002, new Deduct(14002, "转向灯错误", "转向灯错误", 100, step, judgeType));
        map.put(14003, new Deduct(14003, "车身轧道路边缘线", "车身轧道路边缘线", 100, step, judgeType));
        map.put(14004, new Deduct(14004, "左前轮压线", "左前轮压线", 100, step, judgeType));
        map.put(14005, new Deduct(14005, "右前轮压线", "右前轮压线", 100, step, judgeType));
        map.put(14006, new Deduct(14006, "左后轮压线", "左后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_FIRST_REMOTE_VIDEO_DECODED), new Deduct(RtcEngineEvent.EvtType.EVT_FIRST_REMOTE_VIDEO_DECODED, "右后轮压线", "右后轮压线", 100, step, judgeType));
        map.put(Integer.valueOf(RtcEngineEvent.EvtType.EVT_CONNECTION_LOST), new Deduct(RtcEngineEvent.EvtType.EVT_CONNECTION_LOST, "起步时未松手刹", "起步时未松手刹", 100, step, judgeType));
        return map;
    }

    private static void n() {
        for (Step step : Step.k2Steps()) {
            if (step == Step.K2_DaoCheRuKu) {
                f6984a.put(step, c());
            } else if (step == Step.K2_ShangPoQiBu) {
                f6984a.put(step, j());
            } else if (step == Step.K2_CeFangTingChe) {
                f6984a.put(step, b());
            } else if (step == Step.K2_ZhiJiaoZhuanWan) {
                f6984a.put(step, m());
            } else if (step == Step.K2_SQuXian) {
                f6984a.put(step, i());
            } else if (step == Step.K2_ShiHuaLuMian) {
                f6984a.put(step, f());
            } else if (step == Step.K2_SuiDao) {
                f6984a.put(step, k());
            } else if (step == Step.K2_QuKa) {
                f6984a.put(step, h());
            } else if (step == Step.K2_ZhaiLuDiaoTou) {
                f6984a.put(step, l());
            } else if (step == Step.K2_JinJiQingKuang) {
                f6984a.put(step, g());
            } else if (step == Step.K2_ETC) {
                f6984a.put(step, e());
            }
        }
    }
}
