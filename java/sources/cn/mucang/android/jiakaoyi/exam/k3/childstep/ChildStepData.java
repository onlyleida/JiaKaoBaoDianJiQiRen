package cn.mucang.android.jiakaoyi.exam.k3.childstep;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;

/* JADX INFO: loaded from: classes2.dex */
public class ChildStepData {
    public static int AroundCarStep = 1;
    public static int FingerPrintStep = 0;
    public static int PlayingLinetStep = 3;
    public static int ShangCheStep = 4;
    public static int ThreeTouchStep = 2;
    public String dialogDesc;
    public long endTime;
    public volatile boolean finish;
    public long finishTime;
    private boolean forceEnd = false;
    public volatile boolean isEnd;
    public volatile boolean isFinishLightExam;
    public volatile boolean isPause;
    public boolean isPlayEndVoice;
    public boolean isPlayStartVoice;
    public boolean isShowDialog;
    public volatile boolean isStart;
    public boolean isTimeOut;
    public String name;
    public long nextStepStartTime;
    public long playingStartVoiceEnd;
    public long startTime;
    public int stepId;
    public long stepTime;
    public long waitTime;

    /* JADX WARN: Multi-variable type inference failed */
    public ChildStepData(int i, String str, IntegerValue integerValue) {
        this.waitTime = 0L;
        this.stepId = i;
        this.name = str;
        if (integerValue != null) {
            this.waitTime = ((Integer) integerValue.value).intValue() * 1000;
        }
    }

    public void setEnd() {
        if (this.isEnd) {
            return;
        }
        this.isEnd = true;
        this.endTime = SystemClock.elapsedRealtime();
        this.nextStepStartTime = SystemClock.elapsedRealtime() + this.waitTime;
    }

    public void setFinish() {
        if (this.finish) {
            return;
        }
        this.finish = true;
        this.finishTime = SystemClock.elapsedRealtime();
    }

    public void setForceEnd() {
        this.forceEnd = true;
        this.isEnd = true;
        this.endTime = SystemClock.elapsedRealtime();
        this.nextStepStartTime = SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setStart(IntegerValue integerValue) {
        if (this.isStart) {
            return;
        }
        this.isStart = true;
        this.startTime = SystemClock.elapsedRealtime();
        if (integerValue != null) {
            this.stepTime = ((Integer) integerValue.value).intValue() * 1000;
        }
    }
}
