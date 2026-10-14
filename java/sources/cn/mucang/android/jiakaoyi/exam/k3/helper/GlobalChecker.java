package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalChecker {
    private static final int InValid = -100000;
    private static final int MAX = 30000;
    private static final int N = 20;
    private static final int Turn_Curve = 2500;
    private long beforeTime;
    private final K3GlobalStepConfig config;
    public boolean isChangeOneRoad;
    public boolean isChangeTwoRoad;
    private LineAB line;
    private float startAngle;
    private LinkedList<Pos> latest = new LinkedList<>();
    private LinkedList<Float> latestAngle = new LinkedList<>();
    private LinkedList<Pos> latestPos = new LinkedList<>();
    private int maxCount = 0;
    public GlobalStateData.State state = GlobalStateData.State.before;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.GlobalChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State;

        static {
            int[] iArr = new int[GlobalStateData.State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State = iArr;
            try {
                iArr[GlobalStateData.State.before.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.straight.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.maybeTurnLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.maybeTurnRight.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.turnLeft.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.turnRight.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[GlobalStateData.State.after.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public GlobalChecker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.config = k3GlobalStepConfig;
        reset();
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

    private void handleException(float f2, int i) {
        if (Math.abs(d.c(f2 - this.startAngle)) > 30.0f) {
            this.state = GlobalStateData.State.after;
        }
        if (i <= 2500) {
            this.state = GlobalStateData.State.after;
        }
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

    private void onBefore(long j, float f2, Pos pos) {
        this.startAngle = -100000.0f;
        this.line = null;
        this.latestAngle.addFirst(Float.valueOf(f2));
        if (this.latestAngle.size() > 20) {
            this.latestAngle.removeLast();
        }
        this.latestPos.addFirst(pos);
        if (this.latestPos.size() > 20) {
            this.latestPos.removeLast();
        }
        if (this.beforeTime <= 0) {
            this.beforeTime = j;
        }
        if (j - this.beforeTime > 1000) {
            this.state = GlobalStateData.State.straight;
        }
    }

    public float getStartAngel() {
        return this.startAngle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onSignalFrame(e eVar) {
        this.isChangeOneRoad = false;
        this.isChangeTwoRoad = false;
        CarModel carModelD = eVar.d();
        if (carModelD.M != 1) {
        }
        Pos pos = GyroPosHolder.get(eVar);
        if (carModelD.b < 1.0f) {
            return;
        }
        float f2 = carModelD.D;
        long j = carModelD.L;
        this.latest.addFirst(pos);
        if (this.latest.size() <= 3 || this.latest.getFirst().z - this.latest.getLast().z <= 1000.0d || this.latest.getFirst().distanceTo(this.latest.getLast()) <= 100.0d) {
            return;
        }
        Pos first = this.latest.getFirst();
        LinkedList<Pos> linkedList = this.latest;
        int curvatureUsingTriangle = getCurvatureUsingTriangle(first, linkedList.get(linkedList.size() / 2), this.latest.getLast());
        this.latest.removeLast();
        switch (AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State[this.state.ordinal()]) {
            case 1:
                this.maxCount = 0;
                this.startAngle = -100000.0f;
                this.line = null;
                if (curvatureUsingTriangle != 30000) {
                    this.beforeTime = 0L;
                    this.latestAngle.clear();
                    this.latestPos.clear();
                } else {
                    onBefore(j, f2, pos);
                }
                break;
            case 2:
                this.maxCount = 0;
                if (curvatureUsingTriangle == 30000) {
                    this.startAngle = -100000.0f;
                    this.line = null;
                    this.latestAngle.addFirst(Float.valueOf(f2));
                    if (this.latestAngle.size() > 20) {
                        this.latestAngle.removeLast();
                    }
                    this.latestPos.addFirst(pos);
                    if (this.latestPos.size() > 20) {
                        this.latestPos.removeLast();
                    }
                    break;
                } else {
                    this.beforeTime = 0L;
                    if (this.latestAngle.size() != 20 || this.latestPos.size() != 20) {
                        this.state = GlobalStateData.State.before;
                        break;
                    } else {
                        if (this.line == null) {
                            this.startAngle = mean(this.latestAngle);
                            this.line = LineAB.calculate(this.latestPos);
                        }
                        float fDistance = this.line.distance((float) pos.x, (float) pos.y);
                        if (curvatureUsingTriangle < 15000 && fDistance > 20.0f) {
                            if (d.c(f2 - this.startAngle) < -1.0f) {
                                this.state = GlobalStateData.State.maybeTurnLeft;
                                this.latestAngle.clear();
                                this.latestPos.clear();
                            } else if (d.c(f2 - this.startAngle) > 1.0f) {
                                this.state = GlobalStateData.State.maybeTurnRight;
                                this.latestAngle.clear();
                                this.latestPos.clear();
                            }
                            break;
                        }
                    }
                }
                break;
            case 3:
            case 4:
                if (this.line.distance((float) pos.x, (float) pos.y) > 50.0f) {
                    this.maxCount = 0;
                    if (this.state == GlobalStateData.State.maybeTurnRight) {
                        if (((Integer) this.config.p200137.value).intValue() == 0 || (((Integer) this.config.p200137.value).intValue() == 1 && eVar.d().j(Light.TurnRightLight))) {
                            u.h("检测到右偏移");
                            this.state = GlobalStateData.State.turnRight;
                        } else if (((Integer) this.config.p200137.value).intValue() == 1) {
                            eVar.d().j(Light.TurnRightLight);
                        }
                    } else if (((Integer) this.config.p200137.value).intValue() == 0 || (((Integer) this.config.p200137.value).intValue() == 1 && eVar.d().j(Light.TurnLeftLight))) {
                        u.h("检测到左偏移");
                        this.state = GlobalStateData.State.turnLeft;
                    } else if (((Integer) this.config.p200137.value).intValue() == 1) {
                        eVar.d().j(Light.TurnLeftLight);
                    }
                }
                if (curvatureUsingTriangle == 30000) {
                    int i = this.maxCount + 1;
                    this.maxCount = i;
                    if (i > 2) {
                        reset();
                    }
                }
                break;
            case 5:
            case 6:
                this.maxCount = 0;
                float fAbs = Math.abs(this.line.distance((float) pos.x, (float) pos.y));
                if (curvatureUsingTriangle < 20000 || Math.abs(d.c(f2 - this.startAngle)) >= 4.0f) {
                    if (curvatureUsingTriangle == 30000 && fAbs > 900.0f) {
                        reset();
                        this.state = GlobalStateData.State.before;
                    }
                } else if (fAbs > 150.0f && fAbs < 400.0f) {
                    this.state = GlobalStateData.State.after;
                    this.isChangeOneRoad = true;
                } else if (fAbs > 500.0f && fAbs < 900.0f) {
                    this.isChangeTwoRoad = true;
                    this.state = GlobalStateData.State.after;
                }
                handleException(f2, curvatureUsingTriangle);
                break;
            case 7:
                reset();
                break;
        }
    }

    public void reset() {
        this.state = GlobalStateData.State.before;
        this.beforeTime = 0L;
        this.latestPos.clear();
        this.latestAngle.clear();
        this.latest.clear();
        this.startAngle = -100000.0f;
        this.line = null;
        this.maxCount = 0;
    }
}
