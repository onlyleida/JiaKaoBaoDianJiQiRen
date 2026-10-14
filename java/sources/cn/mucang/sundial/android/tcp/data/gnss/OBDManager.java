package cn.mucang.sundial.android.tcp.data.gnss;

import android.content.Context;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UpdateSpeedEvent;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.utils.LocationListener;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.math.BigDecimal;
import java.sql.Timestamp;

/* JADX INFO: loaded from: classes5.dex */
public class OBDManager {
    private static final String TAG = "OBDManager";
    private static long overSpeed;
    private static long overSpeedTime;
    private CarModel carModel;
    private DataCallBack dataCallBack;
    private BaseDataStrategy dataStrategy;
    private boolean init;
    private boolean isOverSpeed;
    private long overSpeedStartTime;
    private final UpdateSpeedEvent updateSpeedEvent;

    private static class OBDManagerHolder {
        private static final OBDManager sManager = new OBDManager();

        private OBDManagerHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(CarModel carModel) {
        if (carModel != null) {
            t.h(TAG, "speed=" + carModel.speed + ",gpsSpeed=" + carModel.gpsSpeed + ",rpm=" + carModel.rpm + ",totalDistance=" + carModel.totalDistance);
        }
        getInstance().carModel = carModel;
        if (MucangConfig.v()) {
            LiveBus.post(this.updateSpeedEvent);
        }
        float f2 = carModel == null ? BitmapDescriptorFactory.HUE_RED : carModel.speed;
        long j = overSpeed;
        if (j <= 0 || overSpeedTime <= 0) {
            this.overSpeedStartTime = -1L;
            this.isOverSpeed = false;
            return;
        }
        if (f2 <= j) {
            this.overSpeedStartTime = -1L;
            this.isOverSpeed = false;
        } else {
            if (this.overSpeedStartTime <= 0) {
                this.overSpeedStartTime = System.currentTimeMillis();
                return;
            }
            if (this.isOverSpeed) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = overSpeedTime;
            if (jCurrentTimeMillis - j2 > j2) {
                this.isOverSpeed = true;
            }
        }
    }

    public static synchronized GNSSData createGNSSData(long j) {
        GNSSData gNSSData;
        gNSSData = new GNSSData();
        AlarmInfo alarmInfoCreateNormal = AlarmInfo.createNormal();
        if (getInstance().isOverSpeed) {
            alarmInfoCreateNormal.addMark(2);
        }
        gNSSData.setAlarmInfo(alarmInfoCreateNormal);
        VehicleStatus vehicleStatusCreateNormal = VehicleStatus.createNormal();
        gNSSData.setVehicleStatus(vehicleStatusCreateNormal);
        gNSSData.setLatitude(AppLocation.latitude);
        gNSSData.setLongitude(AppLocation.longitude);
        CarModel carModel = getInstance().carModel;
        if (carModel != null) {
            vehicleStatusCreateNormal.setAccOn(carModel.keyState.isStart());
            gNSSData.setDriveSpeed(new BigDecimal(Float.toString(carModel.speed)));
            gNSSData.setGpsSpeed(new BigDecimal(Float.toString(carModel.gpsSpeed)));
            gNSSData.setDirection(carModel.wheelDegree);
            gNSSData.setMileage(new BigDecimal(Float.toString(carModel.totalDistance)));
            gNSSData.setEngineSpeed(Integer.valueOf(carModel.rpm));
        } else {
            vehicleStatusCreateNormal.setAccOn(false);
            gNSSData.setDriveSpeed(BigDecimal.ZERO);
            gNSSData.setGpsSpeed(BigDecimal.ZERO);
            gNSSData.setDirection(0);
            gNSSData.setMileage(BigDecimal.ZERO);
            gNSSData.setEngineSpeed(0);
        }
        gNSSData.setRecordTime(new Timestamp(j));
        SundialLog.com("driveSpeed=" + gNSSData.getDriveSpeed() + ",rpm=" + gNSSData.getEngineSpeed() + ",latitude=" + gNSSData.getLatitude() + ",longitude=" + gNSSData.getLongitude());
        StringBuilder sb = new StringBuilder();
        sb.append("GnssData: ");
        sb.append(JSON.toJSON(gNSSData));
        SundialLog.com(sb.toString());
        return gNSSData;
    }

    public static synchronized CarModel getCarModel() {
        return getInstance().carModel;
    }

    private static OBDManager getInstance() {
        return OBDManagerHolder.sManager;
    }

    public static synchronized void start(Context context, BaseDataStrategy baseDataStrategy) {
        if (!getInstance().init) {
            getInstance().init = true;
            if (baseDataStrategy != null) {
                baseDataStrategy.setDataCallBack(getInstance().dataCallBack);
                getInstance().dataStrategy = baseDataStrategy;
                getInstance().dataStrategy.start(context);
            }
            updateOverSpeedParam();
            AppLocation.removeListener(LocationListener.getInstance());
            AppLocation.addListener(LocationListener.getInstance());
            AppLocation.startLocation();
        }
    }

    public static synchronized void stop() {
        getInstance().dataStrategy.stop();
        getInstance().init = false;
        AppLocation.stopLocation();
    }

    public static synchronized void updateOverSpeedParam() {
        overSpeed = Parameter.getIntParameter(85L, -1);
        overSpeedTime = Parameter.getIntParameter(86L, -1);
        t.h(TAG, "最大速度：" + overSpeed + "km/h, 超速持续时间设置：" + overSpeedTime + "秒");
        SundialLog.com("最大速度：" + overSpeed + "km/h, 超速持续时间设置：" + overSpeedTime + "秒");
    }

    private OBDManager() {
        this.updateSpeedEvent = new UpdateSpeedEvent();
        this.init = false;
        this.overSpeedStartTime = 0L;
        this.isOverSpeed = false;
        this.dataCallBack = new DataCallBack() { // from class: cn.mucang.sundial.android.tcp.data.gnss.a
            @Override // cn.mucang.sundial.android.tcp.data.gnss.DataCallBack
            public final void onResult(CarModel carModel) {
                this.f10365a.b(carModel);
            }
        };
    }
}
