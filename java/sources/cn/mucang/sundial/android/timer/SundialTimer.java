package cn.mucang.sundial.android.timer;

import android.os.SystemClock;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class SundialTimer {
    private ScheduledFuture<?> future;
    private long mLastTickTime;
    private final OnTickListener mOnTickListener;
    private final long mScheduleDelay;
    private final long mSchedulePeriod;
    private TimerTask mTimerTask;
    private final ScheduledExecutorService scheduledService;

    public interface OnTickListener {
        void onTick(long j);
    }

    public SundialTimer(long j, boolean z, OnTickListener onTickListener) {
        this(j, z ? 0L : j, onTickListener);
    }

    private boolean isRunning() {
        return (this.mTimerTask == null || this.future == null) ? false : true;
    }

    public void start() {
        if (isRunning()) {
            return;
        }
        this.mTimerTask = new TimerTask() { // from class: cn.mucang.sundial.android.timer.SundialTimer.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (SundialTimer.this.mOnTickListener != null) {
                    SundialTimer.this.mOnTickListener.onTick(SystemClock.elapsedRealtime() - SundialTimer.this.mLastTickTime);
                }
            }
        };
        this.mLastTickTime = SystemClock.elapsedRealtime();
        this.future = this.scheduledService.scheduleAtFixedRate(this.mTimerTask, this.mScheduleDelay, this.mSchedulePeriod, TimeUnit.MILLISECONDS);
    }

    public void stop() {
        if (isRunning()) {
            this.mTimerTask.cancel();
            this.mTimerTask = null;
            this.future.cancel(true);
            this.future = null;
        }
        this.scheduledService.shutdownNow();
    }

    public SundialTimer(long j, long j2, OnTickListener onTickListener) {
        this.mSchedulePeriod = j;
        this.mScheduleDelay = j2;
        this.mOnTickListener = onTickListener;
        this.scheduledService = Executors.newSingleThreadScheduledExecutor();
    }
}
