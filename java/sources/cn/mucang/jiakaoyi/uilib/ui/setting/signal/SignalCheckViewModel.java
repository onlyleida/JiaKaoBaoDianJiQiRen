package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.signal.center.model.AroundCarSensor;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarClutchState;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarThrottleState;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.center.model.TouchSensor;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveSenorInfo;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalBaseItem;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandardItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\b¨\u0006\""}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "baseList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalBaseItem;", "getBaseList", "()Landroidx/lifecycle/MutableLiveData;", "extendList", "", "getExtendList", "format", "Ljava/text/SimpleDateFormat;", "getFormat", "()Ljava/text/SimpleDateFormat;", "gpsSpeed", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;", "getGpsSpeed", "()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;", "setGpsSpeed", "(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;)V", "standardList", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;", "getStandardList", "initData", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "updateBaseList", "signalModel", "updateData", "updateExtendList", "updateStandardList", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalCheckViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<List<SignalBaseItem>> f10241a = new z<>();
    private final z<List<SignalStandardItem>> b = new z<>();
    private final z<List<Object>> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.handle.gps.h f10242d;

    public SignalCheckViewModel() {
        new SimpleDateFormat("HHmmssSSS", Locale.CHINA);
    }

    private final void e(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        String str;
        CarBrakeState carBrakeState;
        String string;
        String str2;
        CarBrakeState carBrakeState2;
        String string2;
        CarClutchState carClutchState;
        String str3;
        CarThrottleState carThrottleState;
        String str4;
        ArrayList arrayList = new ArrayList();
        if (cn.mucang.android.jiakaoyi.signal.d.i.a()) {
            if (this.f10242d == null) {
                this.f10242d = new cn.mucang.android.jiakaoyi.signal.handle.gps.h();
            }
            cn.mucang.android.jiakaoyi.signal.handle.gps.h hVar = this.f10242d;
            float fA = hVar == null ? BitmapDescriptorFactory.HUE_RED : hVar.a(eVar);
            StringBuilder sb = new StringBuilder();
            sb.append(fA);
            sb.append('(');
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String str5 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(eVar.d().c)}, 1));
            kotlin.jvm.internal.r.d(str5, "java.lang.String.format(format, *args)");
            sb.append(str5);
            sb.append(')');
            arrayList.add(new SignalBaseItem("速度：", sb.toString()));
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(eVar.d().b);
            sb2.append('(');
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
            String str6 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(eVar.d().c)}, 1));
            kotlin.jvm.internal.r.d(str6, "java.lang.String.format(format, *args)");
            sb2.append(str6);
            sb2.append(')');
            arrayList.add(new SignalBaseItem("速度：", sb2.toString()));
        }
        arrayList.add(new SignalBaseItem("转速：", String.valueOf(eVar.d().f5265a)));
        Gear gear = eVar.d().m;
        String str7 = "-";
        if (gear == null || (str = gear.gearName) == null) {
            str = "-";
        }
        arrayList.add(new SignalBaseItem("挡位：", str));
        arrayList.add(new SignalBaseItem("时间：", String.valueOf(eVar.d().L)));
        ReceiveSenorInfo receiveSenorInfo = eVar.d().G;
        String str8 = "";
        if (receiveSenorInfo == null || (carBrakeState = receiveSenorInfo.safeBoardBrakeState) == null || (string = Integer.valueOf(carBrakeState.id).toString()) == null) {
            string = "";
        }
        arrayList.add(new SignalBaseItem("刹车状态：", string));
        if (eVar.d().u == null) {
            arrayList.add(new SignalBaseItem("外置挡位：", "未取到"));
        } else {
            Gear gear2 = eVar.d().u;
            if (gear2 != null && (str2 = gear2.gearName) != null) {
                str7 = str2;
            }
            arrayList.add(new SignalBaseItem("外置挡位：", str7));
        }
        arrayList.add(new SignalBaseItem("卫星数：", String.valueOf(eVar.getCurrentPosition().i)));
        arrayList.add(new SignalBaseItem("GPS角度：", String.valueOf(eVar.getCurrentPosition().f5281g.getBearing())));
        StringCompanionObject stringCompanionObject3 = StringCompanionObject.f14671a;
        String str9 = String.format("%.8f", Arrays.copyOf(new Object[]{Double.valueOf(eVar.getCurrentPosition().f5281g.getLatitude())}, 1));
        kotlin.jvm.internal.r.d(str9, "java.lang.String.format(format, *args)");
        arrayList.add(new SignalBaseItem("纬度：", str9));
        String str10 = String.format("%.8f", Arrays.copyOf(new Object[]{Double.valueOf(eVar.getCurrentPosition().f5281g.getLongitude())}, 1));
        kotlin.jvm.internal.r.d(str10, "java.lang.String.format(format, *args)");
        arrayList.add(new SignalBaseItem("经度：", str10));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(eVar.getCurrentPosition().f5282h);
        sb3.append('-');
        sb3.append(eVar.getCurrentPosition().b);
        sb3.append('(');
        String str11 = String.format("%.3f", Arrays.copyOf(new Object[]{Float.valueOf(eVar.getCurrentPosition().j)}, 1));
        kotlin.jvm.internal.r.d(str11, "java.lang.String.format(format, *args)");
        sb3.append(str11);
        sb3.append(')');
        arrayList.add(new SignalBaseItem("GPS类型：", sb3.toString()));
        arrayList.add(new SignalBaseItem("方向盘1：", String.valueOf(eVar.d().q)));
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        boolean z = absSignalProvider != null && (absSignalProvider.useNonOldProtocol() || cn.mucang.android.jiakaoyi.framework.utils.n.a());
        if (z || AppUtils.b() || AppUtils.c()) {
            arrayList.add(new SignalBaseItem("方向盘2：", String.valueOf(eVar.d().r)));
        }
        arrayList.add(new SignalBaseItem("陀螺仪：", String.valueOf(eVar.d().D)));
        arrayList.add(new SignalBaseItem("油门：", String.valueOf(eVar.d().i)));
        if (z) {
            arrayList.add(new SignalBaseItem("脚刹行程：", String.valueOf(eVar.d().H)));
            arrayList.add(new SignalBaseItem("离合行程：", String.valueOf(eVar.d().I)));
            ReceiveSenorInfo receiveSenorInfo2 = eVar.d().G;
            if (receiveSenorInfo2 == null || (carBrakeState2 = receiveSenorInfo2.safeBoardBrakeState) == null || (string2 = Integer.valueOf(carBrakeState2.id).toString()) == null) {
                string2 = "";
            }
            arrayList.add(new SignalBaseItem("刹车状态：", string2));
            ReceiveSenorInfo receiveSenorInfo3 = eVar.d().G;
            if (receiveSenorInfo3 == null || (carClutchState = receiveSenorInfo3.safeModuleClutchState) == null || (str3 = carClutchState.state) == null) {
                str3 = "";
            }
            arrayList.add(new SignalBaseItem("离合状态：", str3));
            ReceiveSenorInfo receiveSenorInfo4 = eVar.d().G;
            if (receiveSenorInfo4 != null && (carThrottleState = receiveSenorInfo4.throttleState) != null && (str4 = carThrottleState.state) != null) {
                str8 = str4;
            }
            arrayList.add(new SignalBaseItem("油门状态：", str8));
        }
        if (b0.a().b()) {
            String name = cn.mucang.jiakaoyi.uilib.rtmc.e.b;
            kotlin.jvm.internal.r.d(name, "name");
            arrayList.add(new SignalBaseItem("基站：", name));
            String str12 = String.format("%.3f", Arrays.copyOf(new Object[]{Float.valueOf(eVar.getCurrentPosition().f5278d)}, 1));
            kotlin.jvm.internal.r.d(str12, "java.lang.String.format(format, *args)");
            arrayList.add(new SignalBaseItem("距离：", str12));
            ExamSiteModel examSiteModelD = ExamSiteUtil.d();
            if (examSiteModelD != null) {
                String str13 = String.format("%.8f", Arrays.copyOf(new Object[]{Double.valueOf(examSiteModelD.originLongitude)}, 1));
                kotlin.jvm.internal.r.d(str13, "java.lang.String.format(format, *args)");
                arrayList.add(new SignalBaseItem("原经：", str13));
                String str14 = String.format("%.8f", Arrays.copyOf(new Object[]{Double.valueOf(examSiteModelD.originLatitude)}, 1));
                kotlin.jvm.internal.r.d(str14, "java.lang.String.format(format, *args)");
                arrayList.add(new SignalBaseItem("原纬：", str14));
            }
        }
        if (AppUtils.l() || AppUtils.b()) {
            arrayList.add(new SignalBaseItem("气压：", String.valueOf(eVar.d().K)));
        }
        if (cn.mucang.android.jiakaoyi.signal.b.c.a()) {
            arrayList.add(new SignalBaseItem("倒车灯状态：", cn.mucang.android.jiakaoyi.signal.b.c.c() ? "可用" : "不可用"));
        }
        arrayList.add(new SignalBaseItem("网络:", JNet.b() + "ms"));
        this.f10241a.l(arrayList);
    }

    private final void g(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        this.c.l(BoxSignalManager.e(eVar));
    }

    private final void h(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        CarModel carModelD = eVar.d();
        ArrayList arrayList = new ArrayList();
        if (carModelD.j) {
            arrayList.add(new SignalStandardItem(true, "车门-关闭"));
        } else {
            arrayList.add(new SignalStandardItem(false, "车门-打开"));
        }
        if (carModelD.f5266d) {
            arrayList.add(new SignalStandardItem(true, "安全带-插上"));
        } else {
            arrayList.add(new SignalStandardItem(false, "安全带-拔出"));
        }
        if (carModelD.f5268f) {
            arrayList.add(new SignalStandardItem(true, "手刹-放下"));
        } else {
            arrayList.add(new SignalStandardItem(false, "手刹-拉起"));
        }
        if (carModelD.f5269g) {
            arrayList.add(new SignalStandardItem(true, "脚刹-踩下"));
        } else {
            arrayList.add(new SignalStandardItem(false, "脚刹-松开"));
        }
        if (carModelD.f5267e) {
            arrayList.add(new SignalStandardItem(true, "离合-踩下"));
        } else {
            arrayList.add(new SignalStandardItem(false, "离合-松开"));
        }
        if (carModelD.k) {
            arrayList.add(new SignalStandardItem(true, "空挡传感器-是"));
        } else {
            arrayList.add(new SignalStandardItem(false, "空挡传感器-否"));
        }
        if (carModelD.l) {
            arrayList.add(new SignalStandardItem(true, "喇叭-开启"));
        } else {
            arrayList.add(new SignalStandardItem(false, "喇叭-关闭"));
        }
        if (carModelD.j(Light.NearLight)) {
            arrayList.add(new SignalStandardItem(true, "近光灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "近光灯-关闭"));
        }
        if (carModelD.j(Light.FarLight)) {
            arrayList.add(new SignalStandardItem(true, "远光灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "远光灯-关闭"));
        }
        if (carModelD.j(Light.WarningLight)) {
            arrayList.add(new SignalStandardItem(true, "应急灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "应急灯-关闭"));
        }
        if (carModelD.j(Light.RearFogLight)) {
            arrayList.add(new SignalStandardItem(true, "后雾灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "后雾灯-关闭"));
        }
        if (carModelD.j(Light.FrontFogLight)) {
            arrayList.add(new SignalStandardItem(true, "前雾灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "前雾灯-关闭"));
        }
        if (carModelD.j(Light.WidthLight)) {
            arrayList.add(new SignalStandardItem(true, "示宽灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "示宽灯-关闭"));
        }
        if (carModelD.j(Light.TurnLeftLight)) {
            arrayList.add(new SignalStandardItem(true, "左转灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "左转灯-关闭"));
        }
        if (carModelD.j(Light.TurnRightLight)) {
            arrayList.add(new SignalStandardItem(true, "右转灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "右转灯-关闭"));
        }
        if (carModelD.j(Light.ReturnLight)) {
            arrayList.add(new SignalStandardItem(true, "倒车灯-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "倒车灯-关闭"));
        }
        if (carModelD.f5270h) {
            arrayList.add(new SignalStandardItem(true, "发动机-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "发动机-关闭"));
        }
        SignalStandardItem signalStandardItem = new SignalStandardItem(false, "");
        KeyState keyState = carModelD.p;
        if (keyState == KeyState.ON || keyState == KeyState.Start) {
            signalStandardItem.c(true);
        }
        signalStandardItem.d(kotlin.jvm.internal.r.m("钥匙-", carModelD.p.desc));
        arrayList.add(signalStandardItem);
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.y, AroundCarSensor.LeftFront.id)) {
            arrayList.add(new SignalStandardItem(true, "前左-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "前左-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.y, AroundCarSensor.RightFront.id)) {
            arrayList.add(new SignalStandardItem(true, "前右-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "前右-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.y, AroundCarSensor.LeftBack.id)) {
            arrayList.add(new SignalStandardItem(true, "后左-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "后左-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.y, AroundCarSensor.RightBack.id)) {
            arrayList.add(new SignalStandardItem(true, "后右-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "后右-关闭"));
        }
        if (carModelD.s) {
            arrayList.add(new SignalStandardItem(true, "指纹-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "指纹-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.z, TouchSensor.Seat.id)) {
            arrayList.add(new SignalStandardItem(true, "座椅-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "座椅-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.z, TouchSensor.OutsideMirror.id)) {
            arrayList.add(new SignalStandardItem(true, "外后视镜-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "外后视镜-关闭"));
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(carModelD.z, TouchSensor.InsideMirror.id)) {
            arrayList.add(new SignalStandardItem(true, "内后视镜-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "内后视镜-关闭"));
        }
        if (carModelD.n) {
            arrayList.add(new SignalStandardItem(true, "雨刷-打开"));
        } else {
            arrayList.add(new SignalStandardItem(false, "雨刷-关闭"));
        }
        this.b.l(arrayList);
    }

    public final z<List<SignalBaseItem>> a() {
        return this.f10241a;
    }

    public final z<List<Object>> b() {
        return this.c;
    }

    public final z<List<SignalStandardItem>> c() {
        return this.b;
    }

    public final void d(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        e(signalGetter);
        h(signalGetter);
        g(signalGetter);
    }

    public final void f(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        e(signalGetter);
        h(signalGetter);
        g(signalGetter);
    }
}
