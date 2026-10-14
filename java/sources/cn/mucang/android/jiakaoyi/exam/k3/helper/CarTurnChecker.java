package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;

/* JADX INFO: loaded from: classes2.dex */
public class CarTurnChecker {
    private double changeValue;
    public Direction direction;
    private long keepTime;
    private float lastGyroAngel;
    private long triggerTime;

    public enum Direction {
        readyTurnLeft,
        readyTurnRight,
        turnLeft,
        turnRight,
        None
    }

    public CarTurnChecker(double d2) {
        this.direction = Direction.None;
        this.lastGyroAngel = -9999.0f;
        this.triggerTime = -1L;
        this.keepTime = 500L;
        this.changeValue = d2;
    }

    public void onCheck(e eVar, float f2, long j) {
        double dA = d.a(eVar.d().D - f2);
        double d2 = this.changeValue;
        if (dA <= (-d2)) {
            if (this.triggerTime == -1 || this.direction == Direction.readyTurnRight) {
                this.direction = Direction.readyTurnLeft;
                this.triggerTime = j;
                return;
            }
        } else if (dA >= d2) {
            if (this.triggerTime == -1 || this.direction == Direction.readyTurnLeft) {
                this.direction = Direction.readyTurnRight;
                this.triggerTime = j;
            }
        } else if (this.triggerTime != -1) {
            this.triggerTime = -1L;
            this.direction = Direction.None;
        }
        Direction direction = this.direction;
        if (direction == Direction.readyTurnLeft) {
            if (j - this.triggerTime > this.keepTime) {
                this.direction = Direction.turnLeft;
            }
        } else {
            if (direction != Direction.readyTurnRight || j - this.triggerTime <= this.keepTime) {
                return;
            }
            this.direction = Direction.turnRight;
        }
    }

    public CarTurnChecker(long j, double d2) {
        this.direction = Direction.None;
        this.lastGyroAngel = -9999.0f;
        this.triggerTime = -1L;
        this.keepTime = j;
        this.changeValue = d2;
    }
}
