package cn.mucang.sundial.android.timer.alive;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.send.HeartBeatRequest;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.SundialTimer;
import cn.mucang.sundial.android.utils.CPUUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HeartBeatManager implements SundialTimer.OnTickListener {
    private long heartBeatPeriod;
    private SundialTimer timer;

    private static class HeartBeatManagerHolder {
        private static final HeartBeatManager sManager = new HeartBeatManager();

        private HeartBeatManagerHolder() {
        }
    }

    public static HeartBeatManager getInstance() {
        return HeartBeatManagerHolder.sManager;
    }

    @Override // cn.mucang.sundial.android.timer.SundialTimer.OnTickListener
    public void onTick(long j) {
        SundialManager.getInstance().sendMessage(new HeartBeatRequest());
        long jPerformance = CPUUtils.performance();
        if (jPerformance >= 50) {
            SundialLog.normal("CPU Load: " + jPerformance + "%");
        }
    }

    public void setHeartBeatPeriod(long j) {
        this.heartBeatPeriod = j * 1000;
    }

    public synchronized void start() {
        StringBuilder sb = new StringBuilder();
        sb.append("HeartBeatManager start in thread: ");
        sb.append(Thread.currentThread().getName());
        sb.append(", timer为空： ");
        boolean z = true;
        sb.append(this.timer == null);
        t.a(ProtocolConfig.SUNDIAL, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HeartBeatManager start in thread: ");
        sb2.append(Thread.currentThread().getName());
        sb2.append(", timer为空： ");
        if (this.timer != null) {
            z = false;
        }
        sb2.append(z);
        SundialLog.com(sb2.toString());
        if (this.timer == null) {
            SundialTimer sundialTimer = new SundialTimer(this.heartBeatPeriod, false, (SundialTimer.OnTickListener) this);
            this.timer = sundialTimer;
            sundialTimer.start();
        }
    }

    public synchronized void stop() {
        SundialTimer sundialTimer = this.timer;
        if (sundialTimer != null) {
            sundialTimer.stop();
            this.timer = null;
        }
    }

    private HeartBeatManager() {
        this.heartBeatPeriod = 10000L;
        Object deviceParameterValue = DataManager.getInstance().getDeviceParameterValue(1L);
        if (deviceParameterValue != null) {
            try {
                setHeartBeatPeriod(((Long) deviceParameterValue).longValue());
            } catch (Exception unused) {
            }
        }
    }
}
