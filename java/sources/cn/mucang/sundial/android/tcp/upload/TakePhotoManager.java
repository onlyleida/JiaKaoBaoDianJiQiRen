package cn.mucang.sundial.android.tcp.upload;

import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.AutoTakePhotoEvent;
import cn.mucang.sundial.android.eventbus.event.AutoTakePhotoWithActivityEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.Constant;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.timer.SundialTimer;
import com.blankj.utilcode.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class TakePhotoManager implements SundialTimer.OnTickListener {
    private static final String TAG = "TakePhotoManager";
    private final long DEFAULT_TAKE_PHOTO_PERIOD;
    private volatile boolean inStudentInfoActivity;
    private long mSchedulePeriod;
    private volatile boolean takingPhoto;
    private SundialTimer timer;

    private static class AutoTakePhotoManagerHolder {
        private static final TakePhotoManager sInstance = new TakePhotoManager();

        private AutoTakePhotoManagerHolder() {
        }
    }

    public static TakePhotoManager getInstance() {
        return AutoTakePhotoManagerHolder.sInstance;
    }

    public static synchronized boolean isInStudentInfoActivity() {
        return getInstance().inStudentInfoActivity;
    }

    public static synchronized boolean isTakingPhoto() {
        return getInstance().takingPhoto;
    }

    public static synchronized void setInStudentInfoActivity(boolean z) {
        getInstance().inStudentInfoActivity = z;
    }

    public static synchronized void setTakingPhoto(boolean z) {
        getInstance().takingPhoto = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: studentTrainingTakePhoto, reason: merged with bridge method [inline-methods] */
    public void b() {
        if (DeviceUtils.isSingleApk(Utils.d())) {
            LiveBus.post(new AutoTakePhotoWithActivityEvent());
        } else {
            LiveBus.post(new AutoTakePhotoEvent());
        }
    }

    public boolean isStarted() {
        return this.timer != null;
    }

    @Override // cn.mucang.sundial.android.timer.SundialTimer.OnTickListener
    public void onTick(long j) {
        if (!isTakingPhoto() && UploadImageManager.getInstance().isIdle()) {
            a();
        } else {
            SundialLog.normal("正在拍照延迟30秒再拍一次");
            u.d(new Runnable() { // from class: cn.mucang.sundial.android.tcp.upload.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10371a.b();
                }
            }, 30000L);
        }
    }

    public void start(boolean z) {
        if (z) {
            stop();
        }
        if (this.timer == null) {
            DeviceConfig deviceConfig = DataManager.getInstance().getDeviceConfig();
            if (deviceConfig != null && deviceConfig.getTakePhotoInterval() > 0) {
                this.mSchedulePeriod = deviceConfig.getTakePhotoInterval() * Constant.ONE_MINUTE;
            }
            SundialTimer sundialTimer = new SundialTimer(this.mSchedulePeriod, false, (SundialTimer.OnTickListener) this);
            this.timer = sundialTimer;
            sundialTimer.start();
            SundialLog.com("timer start...");
        }
    }

    public void stop() {
        SundialTimer sundialTimer = this.timer;
        if (sundialTimer != null) {
            sundialTimer.stop();
            this.timer = null;
            SundialLog.com("timer stop...");
        }
    }

    private TakePhotoManager() {
        this.DEFAULT_TAKE_PHOTO_PERIOD = 900000L;
        this.mSchedulePeriod = 900000L;
        this.takingPhoto = false;
        this.inStudentInfoActivity = false;
    }
}
