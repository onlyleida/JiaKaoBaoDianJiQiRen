package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Integer, Map<Integer, String[]>> f6733a;

    static {
        HashMap map = new HashMap();
        f6733a = map;
        map.put(Integer.valueOf(Step.K2_ZhiJiaoZhuanWan.type), l());
        map.put(Integer.valueOf(Step.K2_ShangPoQiBu.type), i());
        map.put(Integer.valueOf(Step.K2_SQuXian.type), h());
        map.put(Integer.valueOf(Step.K2_CeFangTingChe.type), b());
        map.put(Integer.valueOf(Step.K2_DaoCheRuKu.type), c());
        map.put(Integer.valueOf(Step.K2_ShiHuaLuMian.type), e());
        map.put(Integer.valueOf(Step.K2_SuiDao.type), j());
        map.put(Integer.valueOf(Step.K2_QuKa.type), g());
        map.put(Integer.valueOf(Step.K2_ZhaiLuDiaoTou.type), k());
        map.put(Integer.valueOf(Step.K2_JinJiQingKuang.type), f());
        map.put(Integer.valueOf(Step.K2_ETC.type), d());
    }

    private static Map<Integer, String[]> b() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"侧方停车，靠右侧边线慢速行驶，注意雨刷器铆钉处，始终与道路右边线保持重合行驶", "请将车辆开往绿色线框区域，注意车尾不要超出线框区域", "叮咚", "听到提示音迅速停车找参照点", "请停车，现在开始倒车"});
        map.put(2, new String[]{"慢慢后倒，注意库位左前角在后视镜的出现时机", "听到提示音后迅速停车找参照点", "叮咚", "此刻库位左前角刚刚从右后视镜中消失这是向右打满方向的参照点，现在请向右打满继续后倒，看左后视镜", "听到提示音后迅速停车找参照点", "观察左后视镜，牢牢记住库位右后角，出现在左后视镜中的时机，这是回正方向的最佳位置，回正方向，继续后倒", "听到提示音迅速找参照点", "看左后视镜，牢牢记住左后轮底部与库位虚线的位置关系，这是左打满的关键参照点，现在请左打满继续练习", "观察车头三分之一处进入库位边线时停车", "请停车，保持方向盘左打满不动，挂空挡", "开左转向灯，挂一挡平稳起步"});
        map.put(3, new String[]{"观察车头左前端三分之一处与道路左边线重合时迅速回正方向，当车头中心对准道路左边线时向右打一圈方向", "回正方向", "叮咚", "向右打一圈", "感觉车辆即将顺正时，回正方向", "回正方向"});
        return map;
    }

    private static Map<Integer, String[]> c() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"往前开，方向盘最高处对准前方第三条虚线的左边缘直行", "请将车辆驶入绿色线框区域，注意车尾不要驶出控制线", "感觉左肩膀与出口控制线平齐时停车", "叮咚", "请停车，挂空挡", "开始倒库，请挂倒挡开始倒库"});
        map.put(2, new String[]{"慢慢的往后倒", "听到提示音后迅速停车找参照点", "叮咚", "牢牢记住左后视镜根部下沿与控制线下沿的关系，现在请向右打满方向，慢抬离合器继续倒车，观察左后视镜", "停车太晚，很难倒进去", "听到提示音迅速停车找参照点", "观察左后视镜，牢牢记记住左库脚出现在后视镜的时机，这是向左回一圈的参照点，现在请向左回一圈继续练习", "回正方向", "听到提示音后迅速停车找参照点", "记住当前左后视镜下沿与左边车道线的位置关系，这是停车时机的参照点，请挂空挡", "停车位置合适，挂一挡开始左出库", "停车位置偏左，挂一挡开始左出库", "停车位置偏右，挂一挡开始左出库"});
        map.put(3, new String[]{"慢慢向前开", "听到提示音迅速停车找参照点", "叮咚", "牢牢记住此刻车头与前边线的位置关系，这是迅速向左打一圈半方向的参照点，现在向左打一圈半方向继续练习", "感觉左肩膀与控制线平齐时停车", "停车，请挂空挡", "亲，挂倒挡，保持方向盘左打一圈半不动，开始左倒库"});
        map.put(4, new String[]{"看左后视镜，感觉左后轮到左库角的距离过大时向左打满方向", "看右后视镜，当车身右侧与车库边线即将平行时回正方向", "回正方向", "叮咚", "听到提示音迅速停车找参照点", "记住当前左后视镜下沿与左边车道线的位置关系，这是停车时机的参照点，请挂空挡", "停车位置合适，挂一挡开始右出库", "停车位置偏左，挂一挡开始右出库", "停车位置偏右，挂一挡开始右出库"});
        map.put(5, new String[]{"慢慢向前开", "听到提示音迅速停车找参照点", "叮咚", "牢牢记住此刻车头与前边线的位置关系，这是迅速向右打一圈半方向的参照点，现在向右打一圈半方向继续练习", "回正方向"});
        return map;
    }

    private static Map<Integer, String[]> d() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"启动车辆向前行驶，靠近收费处需减速慢行，以车头左侧1/3对准左侧路边缘线行驶，控制车身与左侧路边缘线的距离在50厘米以内", "看左侧车窗，当收费卡箱出现在车窗中间位置时，停车，挂空挡，拉手刹", "当左侧动画视窗完成取卡后，前方栏杆自动升起，此时挂前进挡，松手刹，车辆起步驶出项目"});
        return map;
    }

    private static Map<Integer, String[]> e() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"模拟雨雾天湿滑路面，请打开示廓灯、前照灯、雾灯、危险报警闪光灯、雨刮器", "保持低速行驶，不要停车", "微调方向，使车保持在黄线内行驶", "请关闭所有灯光及雨刮器"});
        return map;
    }

    private static Map<Integer, String[]> f() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"前方出现紧急情况，迅速停车", "停车后开启危险报警闪光灯", "等待5秒，关灯，挂一档平稳起步驶出项目"});
        return map;
    }

    private static Map<Integer, String[]> g() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"启动车辆向前行驶，靠近收费处需减速慢行，以车头左侧1/3对准左侧路边缘线行驶，控制车身与左侧路边缘线的距离在50厘米以内", "看左侧车窗，当收费卡箱出现在车窗中间位置时，停车，挂空挡，拉手刹，此位置可完成取卡", "当左侧动画视窗完成取卡后，前方栏杆自动升起，此时挂前进挡，松手刹，车辆起步驶出项目，完成模拟高速公路停车取卡"});
        return map;
    }

    private static Map<Integer, String[]> h() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"进入曲线，请慢速行驶，观察前机盖左侧三分之一处与道路右边线重合时迅速左打一圈加九十度方向", "顺着曲线的幅度向左调整", "叮咚", "请保持前机盖左侧三分之一处与道路右边线重合行驶", "注意观察雨刷器铆钉处越过道路右边线迅速回正方向", "顺着曲线的弧度回正方向", "观察雨刷器铆钉处与道路左边线重合时迅速向右打一圈加90度方向，使雨刷器铆钉处与道路左边线保持重合行驶", "顺着曲线的弧度向右调整", "调整方向，使车顺正驶出科目"});
        return map;
    }

    private static Map<Integer, String[]> i() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"上坡起步，靠右侧边线慢速行驶，注意雨刷器铆钉处，始终与道路右边线保持重合行驶", "听到提示音迅速停车找参照点", "叮咚", "牢牢记住左后视镜根部下沿与停车桩线的关系，现在请慢抬离合，车辆抖动或者车头抬起时，放下手刹松开脚刹继续上坡", "做的不错，没有后溜", "车辆后溜，下次等到车辆抖动或者车头抬起时，再松刹车哦"});
        return map;
    }

    private static Map<Integer, String[]> j() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"模拟隧道行驶，低速行驶，提前开启前照灯", "隧道内控制车速，不要随意变换车道", "驶出隧道前，关闭前照灯"});
        return map;
    }

    private static Map<Integer, String[]> k() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"车身靠近右侧标准线，正对库区直线行驶，进入要求在120秒内完成掉头动作，并且轮胎不能触碰库位边缘线", "车身靠右，不要触碰库位边缘线的情况下缓缓向前行驶，视线紧盯正前方库位边缘线", "当视线里，看到正前方库位边缘线与车辆前头位置差一拳距离重合时，方向盘迅速左打死", "探头看左前轮，当左前轮与库位左侧边缘线距离20公分左右时，停车，方向盘右打死，换倒挡", "向后倒车，视线看左侧后视镜，当后视镜里看到左后轮胎离库位边缘线20公分左右距离时停车，方向盘左打死，换前进档", "车辆开出库区，车头正对前方时，方向回正"});
        return map;
    }

    private static Map<Integer, String[]> l() {
        HashMap map = new HashMap();
        map.put(1, new String[]{"直角转弯，开左转向灯，靠右侧边线慢速行驶，注意雨刷器铆钉处，始终与道路右边线保持重合行驶", "听到提示音迅速停车找参照点", "叮咚", "牢牢记住前机盖与前边线（即上边线）的位置关系，此处是向左打满方向的关键参照点，现在请左打满继续练习", "车辆即将摆正，回正方向"});
        return map;
    }

    static /* synthetic */ void m(cn.mucang.android.jiakaoyi.framework.h.b bVar, String[] strArr, DialogInterface dialogInterface, int i) {
        if (i == 1) {
            bVar.callback("");
        } else {
            bVar.callback(strArr[i]);
        }
    }

    public void a(Activity activity, TeachModel teachModel, final cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        Map<Integer, String[]> map = f6733a.get(Integer.valueOf(teachModel.step));
        if (map == null) {
            bVar.callback("");
            return;
        }
        String[] strArr = map.get(Integer.valueOf(teachModel.subStep));
        if (strArr == null) {
            bVar.callback("");
            return;
        }
        final String[] strArr2 = new String[strArr.length + 2];
        System.arraycopy(strArr, 0, strArr2, 2, strArr.length);
        strArr2[0] = "采集标准轨迹";
        strArr2[1] = "自定义提示内容";
        new androidx.appcompat.app.c.a(activity).setItems(strArr2, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                z1.m(bVar, strArr2, dialogInterface, i);
            }
        }).create().show();
    }
}
