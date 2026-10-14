package cn.mucang.android.jiakaoyi.teachingk2.unity;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.error.GlobalChecker;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarPoseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarStateModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static Pos a(e eVar) {
        Pos pos = eVar.c().center;
        return pos == null ? new Pos(0.0d, 0.0d, 0.0d) : new Pos(pos);
    }

    public static CarPoseModel b(e eVar) {
        CarPoseModel carPoseModel = new CarPoseModel();
        CarPos carPosC = eVar.c();
        if (carPosC.center == null) {
            return null;
        }
        carPoseModel.pitch = (float) carPosC.pitch;
        carPoseModel.yaw = (float) eVar.c().degree;
        carPoseModel.position = a(eVar);
        c cVar = carPosC.carRect;
        carPoseModel.length = (int) cVar.f5820a.distanceTo(cVar.b);
        c cVar2 = carPosC.carRect;
        carPoseModel.width = (int) cVar2.f5820a.distanceTo(cVar2.f5821d);
        carPoseModel.wheelLeftFront = carPosC.wheelLeftFront;
        carPoseModel.wheelLeftBack = carPosC.wheelLeftBack;
        carPoseModel.wheelRightFront = carPosC.wheelRightFront;
        carPoseModel.wheelRightBack = carPosC.wheelRightBack;
        return carPoseModel;
    }

    public static CarStateModel c(e eVar) {
        CarStateModel carStateModel = new CarStateModel();
        CarModel carModelD = eVar.d();
        carStateModel.gear = carModelD.m.gear;
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        boolean z = absSignalProvider != null && (absSignalProvider.useNonOldProtocol() || n.a());
        if (z) {
            carStateModel.clutch = carModelD.I / 100.0f;
        } else {
            carStateModel.clutch = carModelD.f5267e ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        if (z) {
            carStateModel.footbrake = carModelD.H / 100.0f;
        } else {
            carStateModel.footbrake = carModelD.f5269g ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        carStateModel.handbrake = !carModelD.f5268f;
        carStateModel.power = carModelD.f5265a > 30;
        carStateModel.accelerator = carModelD.i / 100.0f;
        carStateModel.seatBelt = carModelD.f5266d;
        carStateModel.doorState = carModelD.j;
        carStateModel.horn = carModelD.l;
        carStateModel.speed = carModelD.b;
        carStateModel.wheelAngle = carModelD.r;
        carStateModel.lightsState = carModelD.x;
        carStateModel.debugInfo = "GPS 类型：" + eVar.getCurrentPosition().f5282h + " 卫星数：" + eVar.getCurrentPosition().i + " \n" + GlobalChecker.d().f8797a;
        carStateModel.wiper = carModelD.n;
        carStateModel.rpm = carModelD.f5265a;
        carStateModel.key = carModelD.p.isStart();
        return carStateModel;
    }
}
