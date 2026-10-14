package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gear.LineAB;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalBianDaoChecker {
    private static final int InValid = -100000;
    private CarTurnByGyro carTurnByGyro;
    private final K3GlobalStepConfig globalStepConfig;
    public boolean isChangeOneRoad;
    public boolean isChangeTwoRoad;
    private LineAB line;
    private final cn.mucang.android.jiakaoyi.signal.f.a byGyro = new cn.mucang.android.jiakaoyi.signal.f.a(1.5f);
    private LinkedList<Pos> latestPos = new LinkedList<>();
    private GlobalStateData.State globalState = GlobalStateData.State.before;
    private CarTurnByGyro.State lastCarTurnState = CarTurnByGyro.State.None;

    /* JADX WARN: Multi-variable type inference failed */
    public GlobalBianDaoChecker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.globalStepConfig = k3GlobalStepConfig;
        this.carTurnByGyro = new CarTurnByGyro(((Integer) k3GlobalStepConfig.p200138.value).intValue(), 800L);
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

    public GlobalStateData.State check(e eVar) {
        float fDistance;
        if (eVar.d().M != 1) {
            return this.globalState;
        }
        if (eVar.d().b < 3.0f) {
            return this.globalState;
        }
        Pos pos = GyroPosHolder.get(eVar);
        CarTurnByGyro.State stateOnCheck = this.carTurnByGyro.onCheck(eVar);
        CarTurnByGyro.State state = CarTurnByGyro.State.TurnLeft;
        if (stateOnCheck == state) {
            LineAB lineAB = this.line;
            fDistance = lineAB != null ? lineAB.distance((float) pos.x, (float) pos.y) : -1.0f;
            if (fDistance > 150.0f && fDistance < 400.0f) {
                this.isChangeOneRoad = true;
            } else if (fDistance > 500.0f && fDistance < 900.0f) {
                this.isChangeTwoRoad = true;
            }
            this.globalState = GlobalStateData.State.turnLeft;
        } else {
            CarTurnByGyro.State state2 = CarTurnByGyro.State.TurnRight;
            if (stateOnCheck == state2) {
                LineAB lineAB2 = this.line;
                fDistance = lineAB2 != null ? lineAB2.distance((float) pos.x, (float) pos.y) : -1.0f;
                if (fDistance > 150.0f && fDistance < 400.0f) {
                    this.isChangeOneRoad = true;
                } else if (fDistance > 500.0f && fDistance < 900.0f) {
                    this.isChangeTwoRoad = true;
                }
                this.globalState = GlobalStateData.State.turnRight;
            } else {
                this.isChangeTwoRoad = false;
                this.isChangeOneRoad = false;
                CarTurnByGyro.State state3 = this.lastCarTurnState;
                if (state3 == state2 || state3 == state) {
                    this.globalState = GlobalStateData.State.after;
                } else if (stateOnCheck == CarTurnByGyro.State.Straight) {
                    this.globalState = GlobalStateData.State.straight;
                    this.latestPos.addFirst(pos);
                    if (this.latestPos.size() > 20) {
                        this.latestPos.removeLast();
                    }
                    if (this.latestPos.size() == 20 && Math.abs(this.carTurnByGyro.getStartAngle() - (-100000.0f)) < 1.0f) {
                        this.line = null;
                        this.line = LineAB.calculate(this.latestPos);
                    }
                } else {
                    this.globalState = GlobalStateData.State.before;
                }
            }
        }
        CarTurnByGyro.State state4 = this.lastCarTurnState;
        CarTurnByGyro.State state5 = CarTurnByGyro.State.Straight;
        if (state4 == state5 && stateOnCheck != state5) {
            this.latestPos.clear();
        }
        this.lastCarTurnState = stateOnCheck;
        return this.globalState;
    }

    public void reset() {
        this.carTurnByGyro.reset();
    }
}
