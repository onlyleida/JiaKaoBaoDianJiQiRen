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
public class ChaoCheAngleOffsetChecker {
    private static final int InValid = -100000;
    private static final int MAX = 30000;
    private static final int N = 15;
    private CarTurnChecker carTurnChecker;
    private float chaoCheLineStartAngle;
    private int chaocheCount;
    public boolean couldTurnRight;
    private boolean hasFindChaoCheLine;
    private boolean hasFindPreLine;
    private boolean hasTurnRight;
    private float initStartAngle;
    private Pos lastPos;
    private boolean leftJudgeByLine;
    private LineAB line;
    private double maxChaoCheOffset;
    private double maxY;
    private double minY;
    private float preTurnLeftStartAngle;
    private boolean rightJudgeByLine;
    private float startAngle;
    private final float threshold;
    private double turnBackY;
    private double turnLeftY;
    public boolean turnRightNotAllow;
    private LinkedList<Float> latestAngle = new LinkedList<>();
    private LinkedList<Pos> latestPos = new LinkedList<>();
    private final LineFinder finder = new LineFinder();
    private LinkedList<Float> offsetList = new LinkedList<>();
    private float lastAngle = 1.0E8f;
    public ChaoCheStateData.State state = ChaoCheStateData.State.before;
    private List<Float> angles = new ArrayList(50);
    private double maxChaoCheDiffAngle = -9999.0d;
    private float chaocheDaoInitDis = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.ChaoCheAngleOffsetChecker$1, reason: invalid class name */
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

    public class ChaoCheBackData {
        public String content;

        public ChaoCheBackData(String str) {
            this.content = str;
        }
    }

    public ChaoCheAngleOffsetChecker(float f2) {
        this.threshold = Math.max(2.5f, f2);
        reset();
    }

    private static float calc(List<Float> list, int i) {
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float fFloatValue = BitmapDescriptorFactory.HUE_RED;
        for (int i2 = 0; i2 < i; i2++) {
            fFloatValue += list.get(i2).floatValue();
        }
        float f3 = i;
        float f4 = fFloatValue / f3;
        for (int i3 = 0; i3 < i; i3++) {
            float fFloatValue2 = list.get(i3).floatValue() - f4;
            f2 += fFloatValue2 * fFloatValue2;
        }
        return (float) Math.sqrt(f2 / f3);
    }

    private static double getAreaOfTriangle(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos.x;
        double d3 = pos2.y;
        double d4 = pos3.y;
        double d5 = d2 * (d3 - d4);
        double d6 = pos2.x;
        double d7 = pos.y;
        return Math.abs(((d5 + (d6 * (d4 - d7))) + (pos3.x * (d7 - d3))) / 2.0d);
    }

    private static int getCurvatureUsingTriangle(Pos pos, Pos pos2, Pos pos3) {
        double areaOfTriangle = getAreaOfTriangle(pos, pos2, pos3);
        if (areaOfTriangle < 1.0E-20d) {
            return 30000;
        }
        return (int) Math.min(1.0d / ((areaOfTriangle * 4.0d) / ((pos.distanceTo(pos2) * pos2.distanceTo(pos3)) * pos.distanceTo(pos3))), 30000.0d);
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

    private void onDataChange(float f2, Pos pos, int i) {
        this.latestAngle.addFirst(Float.valueOf(f2));
        if (this.latestAngle.size() > i) {
            this.latestAngle.removeLast();
        }
        this.latestPos.addFirst(pos);
        if (this.latestPos.size() > i) {
            this.latestPos.removeLast();
        }
    }

    private void resetValues() {
        this.minY = 1.0E9d;
        this.maxY = -1.0E9d;
        this.latestPos.clear();
        this.offsetList.clear();
        this.finder.clear();
    }

    private void trimAngle(LinkedList<Float> linkedList, LinkedList<Pos> linkedList2) {
        if (linkedList.size() < 14) {
            return;
        }
        int size = 3;
        while (true) {
            if (size >= linkedList2.size()) {
                size = -1;
                break;
            } else if (getCurvatureUsingTriangle(linkedList2.getFirst(), linkedList2.get(size / 2), linkedList2.get(size)) < 30000) {
                break;
            } else {
                size++;
            }
        }
        if (size > 0) {
            size = linkedList.size() - size;
        }
        while (size > 0) {
            linkedList.removeLast();
            linkedList2.removeLast();
            size--;
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
        float fDistance;
        CarModel carModelD = eVar.d();
        boolean z = true;
        if (carModelD.M != 1) {
            return;
        }
        Pos pos = GyroPosHolder.get(eVar);
        if (carModelD.b < 1.0f) {
            return;
        }
        float fC = d.c(carModelD.D);
        this.angles.add(Float.valueOf(fC));
        boolean z2 = false;
        if (this.angles.size() > 20) {
            this.angles.remove(0);
        }
        this.latestPos.addFirst(pos);
        if (this.latestPos.size() > 15) {
            this.latestPos.removeLast();
        }
        float fC2 = d.c(fC - this.startAngle);
        switch (AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State[this.state.ordinal()]) {
            case 1:
                if (this.angles.size() == 20 && Math.abs(this.startAngle - (-100000.0f)) < 1.0f) {
                    float fMean = mean(this.angles);
                    this.startAngle = fMean;
                    this.initStartAngle = fMean;
                    fC2 = d.c(fC - fMean);
                    this.angles.clear();
                    this.line = LineAB.calculate(this.latestPos);
                }
                if (Math.abs(this.startAngle - (-100000.0f)) > 1.0f) {
                    if (this.carTurnChecker == null) {
                        this.carTurnChecker = new CarTurnChecker(this.threshold);
                    }
                    this.carTurnChecker.onCheck(eVar, this.startAngle, eVar.d().L);
                    LineAB lineAB = this.line;
                    if (lineAB != null) {
                        lineAB.distance((float) pos.x, (float) pos.y);
                    }
                    LineAB lineAB2 = this.line;
                    this.rightJudgeByLine = lineAB2 != null && fC2 > 1.0f && lineAB2.distance((float) pos.x, (float) pos.y) > 100.0f;
                    LineAB lineAB3 = this.line;
                    if (lineAB3 != null && fC2 < -1.0f && lineAB3.distance((float) pos.x, (float) pos.y) > 100.0f) {
                        z2 = true;
                    }
                    this.leftJudgeByLine = z2;
                    CarTurnChecker.Direction direction = this.carTurnChecker.direction;
                    if (direction == CarTurnChecker.Direction.turnRight || this.rightJudgeByLine) {
                        if (!this.couldTurnRight) {
                            this.turnRightNotAllow = true;
                        }
                        this.state = ChaoCheStateData.State.turnRight;
                        this.angles.clear();
                    } else if (direction == CarTurnChecker.Direction.turnLeft || z2) {
                        this.state = ChaoCheStateData.State.turnLeft;
                        this.angles.clear();
                    }
                }
                break;
            case 2:
                this.hasTurnRight = true;
                if (this.rightJudgeByLine) {
                    LineAB lineAB4 = this.line;
                    fDistance = lineAB4 != null ? lineAB4.distance((float) pos.x, (float) pos.y) : -1.0f;
                    if (Math.abs(fC2) < 2.5d && fDistance > 150.0f) {
                        this.state = ChaoCheStateData.State.preTurnLeft;
                        this.angles.clear();
                    }
                } else if (Math.abs(fC2) < 2.5d) {
                    this.state = ChaoCheStateData.State.preTurnLeft;
                    this.angles.clear();
                }
                break;
            case 3:
                if (Math.abs(fC2) < 1.5d && isStable(this.angles, 20, 0.15f, 0.7f) && !this.hasFindPreLine) {
                    float fMean2 = mean(this.angles);
                    this.startAngle = fMean2;
                    this.preTurnLeftStartAngle = fMean2;
                    this.hasFindPreLine = true;
                    fC2 = d.c(fC - fMean2);
                    this.line = LineAB.calculate(this.latestPos);
                }
                if (fC2 < (-this.threshold)) {
                    this.state = ChaoCheStateData.State.turnLeft;
                }
                break;
            case 4:
                LineAB lineAB5 = this.line;
                fDistance = lineAB5 != null ? lineAB5.distance((float) pos.x, (float) pos.y) : -1.0f;
                if (fDistance > 300.0f) {
                    this.state = ChaoCheStateData.State.chaoCheDao;
                } else if (Math.abs(fC2) < 2.5d) {
                    if (Math.abs(fC2) >= 1.0f) {
                        z = this.hasTurnRight ? false : false;
                    }
                    if (z) {
                        this.state = ChaoCheStateData.State.chaoCheDao;
                        this.angles.clear();
                    }
                }
                break;
            case 5:
                if (this.chaocheDaoInitDis == BitmapDescriptorFactory.HUE_RED) {
                    this.chaocheDaoInitDis = eVar.d().C;
                }
                this.chaocheCount++;
                if (Math.abs(fC2) < 1.5d && isStable(this.angles, 20, 0.15f, 0.7f) && !this.hasFindChaoCheLine) {
                    float fMean3 = mean(this.angles);
                    this.startAngle = fMean3;
                    this.chaoCheLineStartAngle = fMean3;
                    this.hasFindChaoCheLine = true;
                    fC2 = d.c(fC - fMean3);
                    this.line = LineAB.calculate(this.latestPos);
                }
                float fDistance2 = this.line.distance((float) pos.x, (float) pos.y);
                if (!this.hasFindChaoCheLine && !this.hasTurnRight) {
                    this.maxChaoCheOffset = Math.max(fDistance2, this.maxChaoCheOffset);
                }
                double dMax = Math.max(this.maxChaoCheDiffAngle, d.c(fC - this.initStartAngle));
                this.maxChaoCheDiffAngle = dMax;
                if (!this.hasFindChaoCheLine ? !this.hasTurnRight ? this.maxChaoCheOffset <= 400.0d ? (fDistance2 >= 100.0d || fC2 <= 1.0d) && fC2 <= this.threshold : fC2 <= 2.0d : !this.hasFindPreLine ? (fDistance2 <= 80.0f || fC2 <= 1.0f) && (fDistance2 <= 170.0f || fC2 <= 0.5d) : fDistance2 >= 120.0f && fC2 <= 3.0f : (fDistance2 <= 80.0f || fC2 <= 1.5d) && (fDistance2 <= 170.0f || fC2 <= 0.5d)) {
                    z = false;
                }
                if (dMax > this.threshold || (z && eVar.d().C - this.chaocheDaoInitDis > 5.0f)) {
                    this.state = ChaoCheStateData.State.turnRightToBack;
                } else if (eVar.d().C - this.chaocheDaoInitDis > 30.0f && this.maxChaoCheDiffAngle > Math.max(2.0d, ((double) this.threshold) * 0.5d)) {
                    this.state = ChaoCheStateData.State.turnRightToBack;
                }
                break;
            case 6:
                if (!isStable(this.angles, 15, 0.08f, 0.3f)) {
                    float fDistance3 = this.line.distance((float) pos.x, (float) pos.y);
                    float fAbs = Math.abs(fC2);
                    if (!this.hasFindChaoCheLine ? !(!this.hasTurnRight ? fDistance3 < 50.0f || fAbs <= 0.5d : !this.hasFindPreLine ? !((fDistance3 <= 140.0f || fAbs >= 1.5d) && fAbs >= 0.5d && fDistance3 <= 220.0f) : !(fDistance3 >= 50.0f && fAbs > 0.5d)) : !((fDistance3 > 140.0f && fAbs < 1.5d) || fAbs <= 0.5d || fDistance3 > 220.0f)) {
                        z = false;
                    }
                    if (z) {
                        this.state = ChaoCheStateData.State.after;
                    }
                } else {
                    this.state = ChaoCheStateData.State.after;
                }
                break;
        }
        this.lastAngle = fC;
    }

    public void reset() {
        this.state = ChaoCheStateData.State.before;
        this.turnRightNotAllow = false;
        this.couldTurnRight = false;
        this.hasTurnRight = false;
        this.latestPos.clear();
        this.latestAngle.clear();
        this.startAngle = -100000.0f;
        this.line = null;
        this.lastPos = null;
        this.hasFindPreLine = false;
        this.hasFindChaoCheLine = false;
        this.rightJudgeByLine = false;
        this.leftJudgeByLine = false;
        this.chaocheCount = 0;
    }
}
