package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChaoCheAngleChecker {
    private static final int InValid = -100000;
    private static final int MAX = 30000;
    private float backRightDistance;
    private final CarTurnByGyro carTurnByGyro;
    public boolean couldTurnRight;
    private boolean hasFindChaoCheLine;
    private boolean hasFindPreLine;
    private boolean hasTurnRight;
    private CarTurnByGyro.State lastCarTurnState;
    private float leftDistance;
    private boolean leftJudgeByLine;
    private LineAB line;
    private double maxChaoCheOffset;
    private float rightDistance;
    private boolean rightJudgeByLine;
    private final float threshold;
    public boolean turnRightNotAllow;
    private float startAngle = -100000.0f;
    private float lineAngle = -100000.0f;
    private final LinkedList<Pos> latestPos = new LinkedList<>();
    public ChaoCheStateData.State chaoCheState = ChaoCheStateData.State.before;
    private final List<Float> angles = new ArrayList(50);
    private float chaocheDaoInitDis = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.ChaoCheAngleChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State;

        static {
            int[] iArr = new int[ChaoCheStateData.State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State = iArr;
            try {
                iArr[ChaoCheStateData.State.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.turnRight.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.preTurnLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.turnLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.chaoCheDao.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.turnRightToBack.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[ChaoCheStateData.State.after.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class ChaoCheBackData {
        public String content;

        public ChaoCheBackData(String str) {
            this.content = str;
        }
    }

    public ChaoCheAngleChecker(float f2) {
        float fMax = Math.max(2.0f, f2);
        this.threshold = fMax;
        this.carTurnByGyro = new CarTurnByGyro(fMax, 800L);
        reset();
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

    /* JADX WARN: Code duplicated, block: B:111:0x01bc  */
    private void oldCalChaoChe(e eVar) {
        float fDistance;
        CarModel carModelD = eVar.d();
        boolean z = true;
        if (carModelD.M != 1) {
        }
        Pos pos = GyroPosHolder.get(eVar);
        if (carModelD.b < 3.0f) {
            return;
        }
        float fC = d.c(carModelD.D);
        this.angles.add(Float.valueOf(fC));
        if (this.angles.size() > 20) {
            this.angles.remove(0);
        }
        this.latestPos.addFirst(pos);
        if (this.latestPos.size() > 15) {
            this.latestPos.removeLast();
        }
        if (this.angles.size() == 20 && Math.abs(this.startAngle - (-100000.0f)) < 1.0f) {
            float fMean = mean(this.angles);
            this.startAngle = fMean;
            this.lineAngle = fMean;
            this.angles.clear();
            this.line = LineAB.calculate(this.latestPos);
        }
        if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f) {
            float fC2 = d.c(fC - this.lineAngle);
            CarTurnByGyro.State stateOnCheck = this.carTurnByGyro.onCheck(eVar);
            switch (AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[this.chaoCheState.ordinal()]) {
                case 1:
                    LineAB lineAB = this.line;
                    if (lineAB != null) {
                        lineAB.distance((float) pos.x, (float) pos.y);
                        LineAB lineAB2 = this.line;
                        this.rightJudgeByLine = lineAB2 != null && fC2 > 1.0f && lineAB2.distance((float) pos.x, (float) pos.y) > 50.0f;
                        LineAB lineAB3 = this.line;
                        boolean z2 = lineAB3 != null && fC2 < -1.0f && lineAB3.distance((float) pos.x, (float) pos.y) > 50.0f;
                        this.leftJudgeByLine = z2;
                        if (stateOnCheck == CarTurnByGyro.State.TurnRight && this.rightJudgeByLine) {
                            if (!this.couldTurnRight) {
                                this.turnRightNotAllow = true;
                            }
                            this.chaoCheState = ChaoCheStateData.State.turnRight;
                            this.angles.clear();
                            break;
                        } else if (stateOnCheck == CarTurnByGyro.State.TurnLeft && z2) {
                            this.chaoCheState = ChaoCheStateData.State.turnLeft;
                            this.angles.clear();
                            break;
                        }
                    } else {
                        if (stateOnCheck == CarTurnByGyro.State.TurnRight) {
                            if (!this.couldTurnRight) {
                                this.turnRightNotAllow = true;
                            }
                            this.chaoCheState = ChaoCheStateData.State.turnRight;
                            this.angles.clear();
                        } else if (stateOnCheck == CarTurnByGyro.State.TurnLeft) {
                            this.chaoCheState = ChaoCheStateData.State.turnLeft;
                            this.angles.clear();
                        }
                        break;
                    }
                    break;
                case 2:
                    this.hasTurnRight = true;
                    if (stateOnCheck == CarTurnByGyro.State.Straight) {
                        this.chaoCheState = ChaoCheStateData.State.preTurnLeft;
                        this.angles.clear();
                        break;
                    } else if (this.rightJudgeByLine) {
                        LineAB lineAB4 = this.line;
                        fDistance = lineAB4 != null ? lineAB4.distance((float) pos.x, (float) pos.y) : -1.0f;
                        if (Math.abs(fC2) < 2.5d && fDistance > 150.0f) {
                            this.chaoCheState = ChaoCheStateData.State.preTurnLeft;
                            this.angles.clear();
                            break;
                        }
                    }
                    break;
                case 3:
                    if (Math.abs(fC2) < 1.5d && isStable(this.angles, 20, 0.15f, 0.7f) && !this.hasFindPreLine) {
                        this.lineAngle = mean(this.angles);
                        this.hasFindPreLine = true;
                        this.line = LineAB.calculate(this.latestPos);
                    }
                    if (stateOnCheck == CarTurnByGyro.State.TurnLeft) {
                        this.chaoCheState = ChaoCheStateData.State.turnLeft;
                        this.angles.clear();
                    }
                    break;
                case 4:
                    LineAB lineAB5 = this.line;
                    fDistance = lineAB5 != null ? lineAB5.distance((float) pos.x, (float) pos.y) : -1.0f;
                    if (stateOnCheck == CarTurnByGyro.State.Straight) {
                        this.chaoCheState = ChaoCheStateData.State.chaoCheDao;
                    } else if (stateOnCheck == CarTurnByGyro.State.TurnLeft) {
                        if (!this.hasTurnRight ? fDistance <= 150.0f : !this.hasFindPreLine ? fDistance >= 50.0f : fDistance <= 150.0f) {
                            z = false;
                        }
                        if (z) {
                            this.chaoCheState = ChaoCheStateData.State.chaoCheDao;
                            this.angles.clear();
                        }
                    }
                    break;
                case 5:
                    if (this.chaocheDaoInitDis == BitmapDescriptorFactory.HUE_RED) {
                        this.chaocheDaoInitDis = eVar.d().C;
                    }
                    if (Math.abs(fC2) < 1.5d && isStable(this.angles, 20, 0.15f, 0.7f) && !this.hasFindChaoCheLine) {
                        this.lineAngle = mean(this.angles);
                        this.hasFindChaoCheLine = true;
                        this.line = LineAB.calculate(this.latestPos);
                    }
                    if (!this.hasFindChaoCheLine && !this.hasTurnRight) {
                        this.maxChaoCheOffset = Math.max(BitmapDescriptorFactory.HUE_RED, this.maxChaoCheOffset);
                    }
                    float fDistance2 = this.line.distance((float) pos.x, (float) pos.y);
                    if (stateOnCheck == CarTurnByGyro.State.TurnRight) {
                        z = this.hasFindChaoCheLine ? false : false;
                        if (z) {
                            this.chaoCheState = ChaoCheStateData.State.turnRightToBack;
                        }
                        break;
                    } else if (stateOnCheck == CarTurnByGyro.State.Straight) {
                        if (this.hasFindChaoCheLine) {
                            if (fDistance2 <= 150.0f || fC2 <= 1.0f) {
                                z = false;
                            }
                        } else if (!this.hasTurnRight) {
                            float f2 = this.threshold;
                            double d2 = ((double) f2) * 0.6d;
                            double d3 = 100.0d;
                            double d4 = this.maxChaoCheOffset;
                            if (d4 > 500.0d) {
                                d3 = 250.0d;
                            } else if (d4 > 400.0d) {
                                d3 = 150.0d;
                            }
                            if ((fDistance2 >= d3 || fC2 <= d2) && fC2 <= f2) {
                                z = false;
                            }
                        } else if (!this.hasFindPreLine ? (fDistance2 <= 80.0f || fC2 <= 1.0f) && (fDistance2 <= 170.0f || fC2 <= 0.5d) : fDistance2 >= 100.0f && fC2 <= 3.0f) {
                            z = false;
                        }
                        if (z && eVar.d().C - this.chaocheDaoInitDis > 5.0f) {
                            this.chaoCheState = ChaoCheStateData.State.turnRightToBack;
                            break;
                        }
                    }
                    break;
                case 6:
                    float fDistance3 = this.line.distance((float) pos.x, (float) pos.y);
                    float fAbs = Math.abs(fC2);
                    if (stateOnCheck == CarTurnByGyro.State.TurnRight) {
                        this.chaoCheState = ChaoCheStateData.State.after;
                    } else if (stateOnCheck == CarTurnByGyro.State.Straight) {
                        if (!this.hasFindChaoCheLine ? !(!this.hasTurnRight ? fDistance3 < 50.0f || fAbs <= 0.5d : !this.hasFindPreLine ? !((fDistance3 <= 140.0f || fAbs >= 1.5d) && fAbs >= 0.5d && fDistance3 <= 220.0f) : !(fDistance3 >= 50.0f && fAbs > 0.5d)) : !((fDistance3 > 140.0f && fAbs < 1.5d) || fAbs <= 0.5d || fDistance3 > 220.0f)) {
                            z = false;
                        }
                        if (z) {
                            this.chaoCheState = ChaoCheStateData.State.after;
                        }
                    }
                    break;
            }
        }
    }

    public float getStartAngel() {
        return this.startAngle;
    }

    public void onBefore(e eVar) {
        CarModel carModelD = eVar.d();
        if (carModelD.M == 1 && carModelD.b >= 1.0f) {
            this.angles.add(Float.valueOf(d.c(carModelD.D)));
            if (this.angles.size() > 10) {
                this.angles.remove(0);
            }
        }
    }

    public void onSignalFrame(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        CarModel carModelD = eVar.d();
        boolean z = true;
        if (carModelD.M == 1 && carModelD.b >= 3.0f) {
            Pos pos = GyroPosHolder.get(eVar);
            this.latestPos.addFirst(pos);
            if (this.latestPos.size() > 15) {
                this.latestPos.removeLast();
            }
            CarTurnByGyro.State stateOnCheck = this.carTurnByGyro.onCheck(eVar);
            this.startAngle = this.carTurnByGyro.getStartAngle();
            float fC = d.c(carModelD.D);
            if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f && (stateOnCheck == CarTurnByGyro.State.Straight || this.chaoCheState == ChaoCheStateData.State.before)) {
                if (this.line == null && this.latestPos.size() == 15 && this.latestPos.getFirst().distanceTo(this.latestPos.getLast()) > 200.0d) {
                    this.line = LineAB.calculate(this.latestPos);
                }
                ChaoCheStateData.State state = this.chaoCheState;
                if (state == ChaoCheStateData.State.preTurnLeft) {
                    this.hasFindPreLine = true;
                } else if (state == ChaoCheStateData.State.chaoCheDao) {
                    this.hasFindChaoCheLine = true;
                }
            }
            switch (AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[this.chaoCheState.ordinal()]) {
                case 1:
                    if (stateOnCheck == CarTurnByGyro.State.TurnLeft) {
                        this.chaoCheState = ChaoCheStateData.State.turnLeft;
                    } else if (stateOnCheck == CarTurnByGyro.State.TurnRight) {
                        if (!this.couldTurnRight) {
                            this.turnRightNotAllow = true;
                        }
                        this.chaoCheState = ChaoCheStateData.State.turnRight;
                    } else if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f) {
                        float fC2 = d.c(fC - this.startAngle);
                        LineAB lineAB = this.line;
                        if ((lineAB == null ? -1.0f : lineAB.distance((float) pos.x, (float) pos.y)) > 100.0f) {
                            if (fC2 > 1.0f) {
                                if (!this.couldTurnRight) {
                                    this.turnRightNotAllow = true;
                                }
                                this.chaoCheState = ChaoCheStateData.State.turnRight;
                            } else if (fC2 < -1.0f) {
                                this.chaoCheState = ChaoCheStateData.State.turnLeft;
                            }
                        }
                    }
                    break;
                case 2:
                    this.hasTurnRight = true;
                    if (this.leftDistance == BitmapDescriptorFactory.HUE_RED) {
                        this.leftDistance = eVar.d().C;
                    }
                    if (stateOnCheck == CarTurnByGyro.State.Straight || eVar.d().C - this.leftDistance > 3.0f) {
                        this.chaoCheState = ChaoCheStateData.State.preTurnLeft;
                    }
                    break;
                case 3:
                    if (stateOnCheck == CarTurnByGyro.State.TurnLeft) {
                        this.chaoCheState = ChaoCheStateData.State.turnLeft;
                    } else if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f) {
                        float fC3 = d.c(fC - this.startAngle);
                        LineAB lineAB2 = this.line;
                        float fDistance = lineAB2 == null ? -1.0f : lineAB2.distance((float) pos.x, (float) pos.y);
                        if (!this.hasFindPreLine) {
                            if (fDistance < 50.0f && fC3 < -1.0f) {
                                this.chaoCheState = ChaoCheStateData.State.turnLeft;
                            }
                        } else if (fDistance > 100.0f && fC3 < -1.0f) {
                            this.chaoCheState = ChaoCheStateData.State.turnLeft;
                        }
                    }
                    break;
                case 4:
                    if (this.leftDistance == -1.0f) {
                        this.leftDistance = eVar.d().C;
                    }
                    if (stateOnCheck == CarTurnByGyro.State.Straight || eVar.d().C - this.leftDistance > 3.0f) {
                        this.chaoCheState = ChaoCheStateData.State.chaoCheDao;
                    }
                    break;
                case 5:
                    if (stateOnCheck == CarTurnByGyro.State.TurnRight) {
                        this.chaoCheState = ChaoCheStateData.State.turnRightToBack;
                    } else if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f) {
                        float fC4 = d.c(fC - this.startAngle);
                        LineAB lineAB3 = this.line;
                        float fDistance2 = lineAB3 != null ? lineAB3.distance((float) pos.x, (float) pos.y) : -1.0f;
                        boolean z2 = this.hasFindChaoCheLine;
                        if (!z2 ? !this.hasTurnRight ? fDistance2 >= 100.0f || fC4 <= ((double) this.threshold) * 0.5d : !z2 ? fDistance2 <= 100.0f || fC4 <= ((double) this.threshold) * 0.5d : fDistance2 >= 100.0f || fC4 <= ((double) this.threshold) * 0.5d : fDistance2 <= 100.0f || fC4 <= ((double) this.threshold) * 0.5d) {
                            z = false;
                        }
                        if (z) {
                            this.chaoCheState = ChaoCheStateData.State.turnRightToBack;
                        }
                    }
                    break;
                case 6:
                    if (stateOnCheck == CarTurnByGyro.State.Straight) {
                        this.chaoCheState = ChaoCheStateData.State.after;
                    }
                    break;
            }
            this.lastCarTurnState = stateOnCheck;
        }
    }

    public void reset() {
        this.chaoCheState = ChaoCheStateData.State.before;
        this.turnRightNotAllow = false;
        this.couldTurnRight = false;
        this.hasTurnRight = false;
        this.latestPos.clear();
        this.startAngle = -100000.0f;
        this.line = null;
        this.hasFindPreLine = false;
        this.hasFindChaoCheLine = false;
        this.rightJudgeByLine = false;
        this.leftJudgeByLine = false;
    }
}
