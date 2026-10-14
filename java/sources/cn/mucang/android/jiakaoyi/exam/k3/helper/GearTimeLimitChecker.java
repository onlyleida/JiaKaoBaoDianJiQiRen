package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class GearTimeLimitChecker {
    private final Gear checkGear;
    private final boolean isSeriesCheck;
    private final long limitTime;
    private long startTime = -1;

    public GearTimeLimitChecker(Gear gear, long j, boolean z) {
        this.checkGear = gear;
        this.limitTime = j;
        this.isSeriesCheck = z;
    }

    public boolean check(e eVar, ExamProcessor examProcessor) {
        if (this.checkGear == null) {
            return false;
        }
        if (eVar.d().m == this.checkGear) {
            if (this.startTime == -1) {
                this.startTime = examProcessor.i;
            }
            if (!this.isSeriesCheck) {
                return examProcessor.i - this.startTime > this.limitTime;
            }
            if (examProcessor.i - this.startTime > this.limitTime) {
                this.startTime = -1L;
                return true;
            }
        } else {
            this.startTime = -1L;
        }
        return false;
    }
}
