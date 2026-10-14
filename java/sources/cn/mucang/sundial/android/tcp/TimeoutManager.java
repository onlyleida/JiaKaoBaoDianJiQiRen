package cn.mucang.sundial.android.tcp;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import android.util.SparseIntArray;
import cn.mucang.sundial.android.tcp.data.DataManager;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;

/* JADX INFO: loaded from: classes5.dex */
public class TimeoutManager {
    private final SparseIntArray extendRetryTimesMap;
    private final SparseArray<ITimeout> extendTimeoutCallbacks;
    private final SparseArray<Runnable> extendTimeoutTasks;
    private final Handler msgHandler;
    private int retryTimes;
    private final SparseIntArray retryTimesMap;
    private final SparseArray<ITimeout> timeoutCallbacks;
    private long timeoutPeriod;
    private final SparseArray<Runnable> timeoutTasks;

    public interface ITimeout {
        void onTimeout();
    }

    private static class TimeoutManagerHolder {
        private static final TimeoutManager sManager = new TimeoutManager();

        private TimeoutManagerHolder() {
        }
    }

    public static TimeoutManager getInstance() {
        return TimeoutManagerHolder.sManager;
    }

    public synchronized void addTimeoutTask(int i, boolean z, Runnable runnable) {
        try {
            SparseIntArray sparseIntArray = z ? this.extendRetryTimesMap : this.retryTimesMap;
            SparseArray<Runnable> sparseArray = z ? this.extendTimeoutTasks : this.timeoutTasks;
            if (sparseIntArray.get(i, 0) <= this.retryTimes) {
                sparseArray.put(i, runnable);
                this.msgHandler.postDelayed(runnable, this.timeoutPeriod);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void onMessageReply(int i, boolean z) {
        try {
            SparseIntArray sparseIntArray = z ? this.extendRetryTimesMap : this.retryTimesMap;
            SparseArray<Runnable> sparseArray = z ? this.extendTimeoutTasks : this.timeoutTasks;
            if (sparseArray.indexOfKey(i) >= 0) {
                this.msgHandler.removeCallbacks(sparseArray.get(i));
                sparseArray.delete(i);
                sparseIntArray.delete(i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean onTimeout(int i, boolean z) {
        try {
            SparseIntArray sparseIntArray = z ? this.extendRetryTimesMap : this.retryTimesMap;
            SparseArray<Runnable> sparseArray = z ? this.extendTimeoutTasks : this.timeoutTasks;
            sparseIntArray.put(i, sparseIntArray.get(i, 0) + 1);
            sparseArray.delete(i);
            if (sparseIntArray.get(i, 0) <= this.retryTimes) {
                return true;
            }
            sparseIntArray.delete(i);
            ITimeout iTimeout = (z ? this.extendTimeoutCallbacks : this.timeoutCallbacks).get(i);
            if (iTimeout != null) {
                iTimeout.onTimeout();
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void registerTimeoutCallback(int i, boolean z, ITimeout iTimeout) {
        try {
            (z ? this.extendTimeoutCallbacks : this.timeoutCallbacks).put(i, iTimeout);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setRetryTimes(int i) {
        this.retryTimes = i;
    }

    public void setTimeoutPeriod(long j) {
        this.timeoutPeriod = j;
    }

    public synchronized void unregisterTimeoutCallback(int i, boolean z) {
        try {
            (z ? this.extendTimeoutCallbacks : this.timeoutCallbacks).remove(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void updateByDeviceParameter() {
        Object deviceParameterValue = DataManager.getInstance().getDeviceParameterValue(2L);
        if (deviceParameterValue instanceof Long) {
            Long l = (Long) deviceParameterValue;
            if (l.longValue() > 0) {
                setTimeoutPeriod(l.longValue() * 1000);
            }
        }
        Object deviceParameterValue2 = DataManager.getInstance().getDeviceParameterValue(3L);
        if (deviceParameterValue2 instanceof Long) {
            Long l2 = (Long) deviceParameterValue2;
            if (l2.longValue() > 0) {
                setRetryTimes(l2.intValue());
            }
        }
    }

    private TimeoutManager() {
        this.timeoutPeriod = SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
        this.retryTimes = 1;
        this.timeoutCallbacks = new SparseArray<>();
        this.extendTimeoutCallbacks = new SparseArray<>();
        this.timeoutTasks = new SparseArray<>();
        this.retryTimesMap = new SparseIntArray();
        this.extendTimeoutTasks = new SparseArray<>();
        this.extendRetryTimesMap = new SparseIntArray();
        HandlerThread handlerThread = new HandlerThread("timeout-handler-thread");
        handlerThread.start();
        this.msgHandler = new Handler(handlerThread.getLooper());
        updateByDeviceParameter();
    }
}
