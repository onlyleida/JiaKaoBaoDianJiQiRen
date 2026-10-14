package cn.mucang.android.jiakaoyi.exam.k3.helper;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class CheckByGyro {
    private static final float InValid = -100000.0f;
    private final long delayTime;
    private float lastDegree = InValid;
    private State state = State.None;
    private int count = 0;
    private int leftCount = 0;
    private int rightCount = 0;
    private float startDegree = InValid;
    private long st = 0;

    public enum State {
        Straight,
        TurnLeft,
        TurnRight,
        None
    }

    public CheckByGyro(long j) {
        this.delayTime = j;
    }

    public State currentState() {
        return this.state;
    }

    public boolean isStraight() {
        return this.state == State.Straight;
    }

    public boolean isTurnLeft() {
        return this.state == State.TurnLeft;
    }

    public boolean isTurnRight() {
        return this.state == State.TurnRight;
    }

    public void put(float f2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.st == 0) {
            this.st = jElapsedRealtime;
        }
        if (jElapsedRealtime - this.st <= this.delayTime) {
            return;
        }
        float f3 = this.lastDegree;
        if (f3 == InValid) {
            this.lastDegree = f2;
            this.startDegree = f2;
            return;
        }
        if (Math.abs(f2 - f3) < 1.0E-5d) {
            return;
        }
        if (Math.abs(f2 - this.startDegree) < 5.0f) {
            int i = this.count + 1;
            this.count = i;
            if (i > 10) {
                this.state = State.Straight;
                this.leftCount = 0;
                this.rightCount = 0;
            }
        } else if (f2 > this.startDegree) {
            int i2 = this.rightCount + 1;
            this.rightCount = i2;
            if (i2 > 5) {
                this.state = State.TurnRight;
                this.leftCount = 0;
                this.count = 0;
            }
        } else {
            int i3 = this.leftCount + 1;
            this.leftCount = i3;
            if (i3 > 5) {
                this.state = State.TurnLeft;
                this.rightCount = 0;
                this.count = 0;
            }
        }
        this.lastDegree = f2;
    }
}
