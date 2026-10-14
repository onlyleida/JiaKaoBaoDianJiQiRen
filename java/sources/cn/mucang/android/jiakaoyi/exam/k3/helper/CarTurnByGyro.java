package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CarTurnByGyro {
    private static final float InValid = -100000.0f;
    private final int Count = 20;
    private List<Float> angles = new ArrayList(40);
    private final long keepTime;
    private float lastGyroAngel;
    private State lastState;
    private float smallOffset;
    private float smallStartDistance;
    private float startAngle;
    private long startStraightTime;
    private long startTime;
    public State state;
    private final float threshold;

    public enum State {
        Straight,
        TurnLeft,
        TurnRight,
        None
    }

    public CarTurnByGyro(float f2, long j) {
        State state = State.None;
        this.state = state;
        this.startTime = -1L;
        this.startStraightTime = -1L;
        this.startAngle = InValid;
        this.lastState = state;
        this.smallStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.lastGyroAngel = InValid;
        this.smallOffset = BitmapDescriptorFactory.HUE_RED;
        this.threshold = f2;
        this.keepTime = Math.min(1000L, j);
    }

    private boolean isStable(List<Float> list, int i, float f2, float f3) {
        if (list.size() < i || Math.abs(d.c(list.get(0).floatValue() - list.get(i - 1).floatValue())) > f3) {
            return false;
        }
        float fMean = mean(list);
        float f4 = BitmapDescriptorFactory.HUE_RED;
        Iterator<Float> it = list.iterator();
        while (it.hasNext()) {
            float fC = d.c(it.next().floatValue() - fMean);
            if (Math.abs(fC) > 0.618d) {
                return false;
            }
            f4 += fC;
        }
        return f4 / ((float) i) <= f2;
    }

    private float mean(List<Float> list) {
        Iterator<Float> it = list.iterator();
        double dSin = 0.0d;
        double dCos = 0.0d;
        while (it.hasNext()) {
            double dFloatValue = it.next().floatValue();
            dSin += Math.sin(Math.toRadians(dFloatValue));
            dCos += Math.cos(Math.toRadians(dFloatValue));
        }
        return (float) Math.toDegrees(Math.atan2(dSin / ((double) list.size()), dCos / ((double) list.size())));
    }

    public float getStartAngle() {
        return this.startAngle;
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

    public State onCheck(e eVar) {
        float fC = d.c(eVar.d().D);
        long j = eVar.d().L;
        State state = this.state;
        State state2 = State.Straight;
        if (state != state2) {
            this.angles.add(Float.valueOf(fC));
            if (this.angles.size() > 25) {
                this.angles.remove(0);
                if (isStable(this.angles, 20, 0.4f, this.threshold)) {
                    reset();
                    this.state = state2;
                    this.startAngle = fC;
                }
            }
        }
        if (Math.abs(this.startAngle - InValid) > BitmapDescriptorFactory.HUE_RED) {
            float fA = d.a(fC - this.startAngle);
            float f2 = this.threshold;
            if (fA <= (-f2)) {
                this.startStraightTime = -1L;
                if (this.startTime == -1) {
                    this.startTime = j;
                    this.angles.clear();
                }
                if (Math.abs(fA) >= 40.0f) {
                    this.state = State.None;
                } else if (this.lastState != State.TurnRight && j - this.startTime > this.keepTime) {
                    this.state = State.TurnLeft;
                }
            } else if (fA >= f2) {
                this.startStraightTime = -1L;
                if (this.startTime == -1) {
                    this.startTime = j;
                    this.angles.clear();
                }
                if (Math.abs(fA) >= 40.0f) {
                    this.state = State.None;
                } else if (this.lastState != State.TurnLeft && j - this.startTime > this.keepTime) {
                    this.state = State.TurnRight;
                }
            } else {
                if (this.startTime != -1) {
                    this.startTime = -1L;
                }
                if (this.smallStartDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.smallStartDistance = eVar.d().C;
                    this.smallOffset = BitmapDescriptorFactory.HUE_RED;
                }
                if (Math.abs(this.lastGyroAngel - InValid) > BitmapDescriptorFactory.HUE_RED) {
                    float fSin = this.smallOffset + ((float) (((double) (eVar.d().C - this.smallStartDistance)) * Math.sin(Math.toRadians(d.a(fC - this.lastGyroAngel)))));
                    this.smallOffset = fSin;
                    if (fSin > 150.0f) {
                        reset();
                        this.state = State.TurnRight;
                    } else if (fSin < -150.0f) {
                        reset();
                        this.state = State.TurnLeft;
                    } else if (eVar.d().C - this.smallStartDistance > 20.0f) {
                        reset();
                        this.state = state2;
                        this.startAngle = fC;
                    }
                }
            }
        }
        this.lastGyroAngel = fC;
        State state3 = this.state;
        this.lastState = state3;
        return state3;
    }

    public void reset() {
        this.startTime = -1L;
        this.smallStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.startStraightTime = -1L;
        this.state = State.None;
        this.startAngle = InValid;
        this.angles.clear();
    }
}
