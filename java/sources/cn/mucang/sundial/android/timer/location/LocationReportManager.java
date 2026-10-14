package cn.mucang.sundial.android.timer.location;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.Gnss;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.PacketResponseObserver;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.send.LocationReportRequest;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class LocationReportManager {
    private static final int MSG_RETRY = 2;
    private static final int MSG_TICK = 1;
    private static final String TAG = "LocationReportManager";
    private float lastReportDistance;
    private long lastReportTimeForInterval;
    private int reportDistance;
    private int reportInterval;
    private int reportStrategy;
    private long tempTrackEndTime;
    private int tempTrackInterval;
    private Handler timerHandler;
    private HandlerThread timerThread;

    private static class LocationReportManagerHolder {
        private static final LocationReportManager sManager = new LocationReportManager();

        private LocationReportManagerHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ boolean b(Message message) {
        int i = message.what;
        if (i == 1) {
            onTick();
            rescheduleTick();
            return true;
        }
        if (i != 2) {
            return false;
        }
        tryToResendFailedReport(getBatchResendCount());
        return true;
    }

    private int calculateNextScheduleDelay() {
        int i;
        if (System.currentTimeMillis() < this.tempTrackEndTime && (i = this.tempTrackInterval) > 0) {
            return i * 1000;
        }
        int i2 = this.reportStrategy;
        if (i2 == 1 || i2 == 2) {
            return 1000;
        }
        return this.reportInterval * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBatchResendCount() {
        return Math.min(10, Math.max(5, this.reportInterval / 3));
    }

    public static LocationReportManager getInstance() {
        return LocationReportManagerHolder.sManager;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007f  */
    /* JADX WARN: Code duplicated, block: B:40:? A[RETURN, SYNTHETIC] */
    private void onTick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < this.tempTrackEndTime && this.tempTrackInterval > 0) {
            t.h(TAG, "定时发送位置汇报");
            this.lastReportTimeForInterval = jCurrentTimeMillis;
            report();
            return;
        }
        int i = this.reportStrategy;
        boolean z = false;
        boolean z2 = true;
        if (!(i == 1 || i == 2)) {
            t.h(TAG, "定时发送位置汇报");
            this.lastReportTimeForInterval = jCurrentTimeMillis;
            report();
            return;
        }
        if ((i == 2) && jCurrentTimeMillis - this.lastReportTimeForInterval >= this.reportInterval * 1000) {
            t.h(TAG, "定时发送位置汇报");
            this.lastReportTimeForInterval = jCurrentTimeMillis;
            z = true;
        }
        CarModel carModel = OBDManager.getCarModel();
        float f2 = carModel != null ? carModel.currentDistance : BitmapDescriptorFactory.HUE_RED;
        if (f2 == BitmapDescriptorFactory.HUE_RED || this.lastReportDistance != BitmapDescriptorFactory.HUE_RED) {
            if ((f2 - this.lastReportDistance) * 1000.0f >= this.reportDistance) {
                t.h(TAG, "定距发送位置汇报");
                this.lastReportDistance = f2;
            }
            if (z2) {
                report();
            }
        }
        this.lastReportDistance = f2;
        z2 = z;
        if (z2) {
            report();
        }
    }

    private void reloadParams() {
        String str;
        this.reportStrategy = Parameter.getIntParameter(32L, 0);
        int intParameter = Parameter.getIntParameter(41L, 30);
        int intParameter2 = Parameter.getIntParameter(34L, 100);
        int intParameter3 = Parameter.getIntParameter(44L, 500);
        int intParameter4 = Parameter.getIntParameter(45L, 1000);
        boolean zStudentLoginSuccess = SundialManager.getInstance().studentLoginSuccess();
        if (!zStudentLoginSuccess) {
            intParameter = intParameter2;
        }
        this.reportInterval = intParameter;
        if (!zStudentLoginSuccess) {
            intParameter3 = intParameter4;
        }
        this.reportDistance = intParameter3;
        StringBuilder sb = new StringBuilder();
        sb.append("位置汇报策略：");
        int i = this.reportStrategy;
        if (i == 0) {
            str = "定时";
        } else {
            str = i == 1 ? "定距" : "定时+定距";
        }
        sb.append(str);
        t.h(TAG, sb.toString());
        t.h(TAG, "定时汇报间隔：" + this.reportInterval + "秒");
        t.h(TAG, "定距汇报距离：" + this.reportDistance + "米");
    }

    private void report() {
        if (!AppLocation.isLocationValid()) {
            t.h(TAG, "非法的经纬度，取消位置上报");
            return;
        }
        GNSSData gNSSData = GNSSData.getGNSSData();
        gNSSData.getVehicleStatus().setSupplement(true);
        final Gnss gnss = new Gnss();
        gnss.setGnssData(GNSSData.toString(gNSSData.encode()));
        gnss.setCreateTime(System.currentTimeMillis());
        DataManager.getInstance().saveGnss(gnss);
        gNSSData.getVehicleStatus().setSupplement(false);
        send(gnss, gNSSData, new PacketResponseObserver.RequestResultListener() { // from class: cn.mucang.sundial.android.timer.location.LocationReportManager.2
            @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
            public void onResult(boolean z) {
                StringBuilder sb = new StringBuilder();
                sb.append("发送位置汇报[");
                sb.append(z ? "成功]" : "失败]");
                t.h(LocationReportManager.TAG, sb.toString());
                if (z) {
                    gnss.setUploadStatus(1);
                    DataManager.getInstance().saveGnss(gnss);
                    DataManager.getInstance().removeOldGnssData();
                    LocationReportManager locationReportManager = LocationReportManager.this;
                    locationReportManager.tryToResendFailedReport(locationReportManager.getBatchResendCount());
                }
            }

            @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
            public void onTimeout() {
                t.h(LocationReportManager.TAG, "发送位置汇报[超时]");
            }
        });
    }

    private void rescheduleRetry() {
        this.timerHandler.removeMessages(2);
        this.timerHandler.sendEmptyMessageDelayed(2, 60L);
    }

    private void rescheduleTick() {
        this.timerHandler.removeMessages(1);
        this.timerHandler.sendEmptyMessageDelayed(1, calculateNextScheduleDelay());
    }

    private void send(Gnss gnss, GNSSData gNSSData, PacketResponseObserver.RequestResultListener requestResultListener) {
        LocationReportRequest locationReportRequest = new LocationReportRequest();
        if (gNSSData != null) {
            locationReportRequest.setGnssData(gNSSData);
        } else if (gnss == null || gnss.getGnssData() == null) {
            requestResultListener.onResult(false);
        } else {
            locationReportRequest.setGnssData(GNSSData.toBytes(gnss.getGnssData()));
        }
        SundialManager.getInstance().sendMessage(locationReportRequest, requestResultListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryToResendFailedReport(int i) {
        for (final Gnss gnss : DataManager.getInstance().getRecentGnssData(i)) {
            send(gnss, null, new PacketResponseObserver.RequestResultListener() { // from class: cn.mucang.sundial.android.timer.location.LocationReportManager.1
                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onResult(boolean z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("重传历史位置数据[");
                    sb.append(z ? "成功]" : "失败]");
                    t.h(LocationReportManager.TAG, sb.toString());
                    if (z) {
                        gnss.setUploadStatus(1);
                        DataManager.getInstance().saveGnss(gnss);
                    }
                }

                @Override // cn.mucang.sundial.android.tcp.PacketResponseObserver.RequestResultListener
                public void onTimeout() {
                    t.h(LocationReportManager.TAG, "重传历史位置数据[超时]");
                }
            });
        }
    }

    public synchronized void configTempTrack(int i, long j) {
        boolean z = this.tempTrackInterval > 0 && this.tempTrackEndTime > System.currentTimeMillis();
        this.tempTrackInterval = i;
        this.tempTrackEndTime = System.currentTimeMillis() + (1000 * j);
        if (!z && i > 0 && j > 0) {
            t.h(TAG, "开始临时位置追踪，间隔" + i + "秒，时长" + j + "秒");
            rescheduleTick();
        } else if (z && (i <= 0 || j <= 0)) {
            t.h(TAG, "停止正在执行的临时位置追踪");
            rescheduleTick();
        } else if (z) {
            t.h(TAG, "重新设置临时位置追踪，间隔" + i + "秒，时长" + j + "秒");
            rescheduleTick();
        }
    }

    public synchronized void restartIfNotInTempTrack() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        reloadParams();
        if (jCurrentTimeMillis < this.tempTrackEndTime && this.tempTrackInterval > 0) {
            t.h(TAG, "请求重置位置上报任务，但正在执行临时位置追踪");
        } else {
            t.h(TAG, "重置位置上报任务");
            rescheduleTick();
        }
    }

    public synchronized void start() {
        StringBuilder sb = new StringBuilder();
        sb.append("开始位置上报，之前状态：");
        sb.append(this.timerThread != null ? "开启" : "关闭");
        t.h(TAG, sb.toString());
        if (this.timerThread == null) {
            HandlerThread handlerThread = new HandlerThread(TAG);
            this.timerThread = handlerThread;
            handlerThread.start();
        }
        if (this.timerHandler == null) {
            this.timerHandler = new Handler(this.timerThread.getLooper(), new Handler.Callback() { // from class: cn.mucang.sundial.android.timer.location.a
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f10374a.b(message);
                }
            });
        }
        CarModel carModel = OBDManager.getCarModel();
        this.lastReportDistance = carModel != null ? carModel.currentDistance : BitmapDescriptorFactory.HUE_RED;
        this.lastReportTimeForInterval = System.currentTimeMillis();
        reloadParams();
        rescheduleTick();
        rescheduleRetry();
    }

    public synchronized void stop() {
        StringBuilder sb = new StringBuilder();
        sb.append("停止位置上报，之前状态：");
        sb.append(this.timerThread != null ? "开启" : "关闭");
        t.h(TAG, sb.toString());
        this.timerHandler = null;
        HandlerThread handlerThread = this.timerThread;
        if (handlerThread != null) {
            handlerThread.quit();
            this.timerThread = null;
        }
    }

    private LocationReportManager() {
    }
}
