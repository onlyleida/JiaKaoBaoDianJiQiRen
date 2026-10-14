package cn.mucang.android.jiakaoyi.exam.k3.data;

import android.os.SystemClock;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.busmodel.HpGlobalData;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.AutoFinishedStepManager;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedDistanceCalculator;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GlobalBianDaoChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GlobalChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GlobalPressLineChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GyroPosHolder;
import cn.mucang.android.jiakaoyi.exam.k3.helper.HpGlobalChecker;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalStateData extends K3BaseStepData<K3GlobalStepConfig> {
    private static final int ANGLE_VALUE = -999999;
    private static final int COUNT = 21;
    private static final int LimitTime = 8000;
    public static boolean isStepFinish = false;
    public AutoFinishedStepManager autoFinishedStepManager;
    public double gearSpeedDistance;
    private GearSpeedDistanceCalculator gearSpeedDistanceCalculator;
    private final GlobalBianDaoChecker globalBianDaoChecker;
    private final GlobalChecker globalChecker;
    public final HpGlobalChecker hpGlobalChecker;
    private final GlobalPressLineChecker hpPressLineChecker;
    public boolean isChangeOneRoad;
    public boolean isChangeTwoRoad;
    private final LinkedList<Float> lastAngles;
    public State realState;
    public State state;

    public enum State {
        before,
        straight,
        maybeTurnLeft,
        maybeTurnRight,
        turnLeft,
        turnRight,
        after
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GlobalStateData(K3GlobalStepConfig k3GlobalStepConfig) {
        super(k3GlobalStepConfig);
        this.state = State.before;
        this.lastAngles = new LinkedList<>();
        this.gearSpeedDistanceCalculator = new GearSpeedDistanceCalculator(((Integer) k3GlobalStepConfig.p200114.value).intValue(), ((Integer) k3GlobalStepConfig.p200131.value).intValue(), false);
        this.globalChecker = new GlobalChecker(k3GlobalStepConfig);
        this.globalBianDaoChecker = new GlobalBianDaoChecker(k3GlobalStepConfig);
        this.hpGlobalChecker = new HpGlobalChecker();
        this.hpPressLineChecker = new GlobalPressLineChecker();
    }

    private void initState() {
        this.lastAngles.clear();
        this.state = State.before;
        this.startAngel = -999999.0f;
        this.startTime = 0L;
        this.isChangeTwoRoad = false;
        this.isChangeOneRoad = false;
        this.globalChecker.reset();
        this.globalBianDaoChecker.reset();
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().M == 3) {
            HpGlobalData hpGlobalData = new HpGlobalData();
            GlobalPressLineChecker.PressLineInfo pressLineInfoCheck = this.hpPressLineChecker.check(eVar, examProcessor);
            if (pressLineInfoCheck.pressDashedLine) {
                String str = "压虚线(" + ((SystemClock.elapsedRealtime() - pressLineInfoCheck.pressDashLineTime) / 1000) + "s)";
                hpGlobalData.pressDesc = str;
                w.g(str);
            } else {
                w.g("");
                if (pressLineInfoCheck.pressFullLine) {
                    hpGlobalData.pressDesc = "压实线";
                } else {
                    hpGlobalData.pressDesc = "未压线";
                }
            }
            this.hpGlobalChecker.check(eVar, examProcessor);
            if (this.hpGlobalChecker.turningLeft) {
                w.g("左变道");
                hpGlobalData.bianDaoDesc = "左变道";
            }
            if (this.hpGlobalChecker.turningRight) {
                w.g("右变道");
                hpGlobalData.bianDaoDesc = "右变道";
            }
            HpGlobalChecker hpGlobalChecker = this.hpGlobalChecker;
            if (!hpGlobalChecker.turningLeft && !hpGlobalChecker.turningRight) {
                w.g("");
                hpGlobalData.bianDaoDesc = "未变道";
            }
            hpGlobalData.currentDistance = eVar.d().C;
            LiveBus.d(HpGlobalData.class).l(hpGlobalData);
        }
        if (eVar.d().M == 1) {
            GyroPosHolder.get(eVar);
        }
        this.gearSpeedDistance = this.gearSpeedDistanceCalculator.startCalculate(eVar);
        if (isStepFinish) {
            isStepFinish = false;
            initState();
        }
        State state = this.state;
        if (state == State.after || state == null) {
            initState();
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.state = this.hpGlobalChecker.state;
        } else {
            this.globalChecker.onSignalFrame(eVar);
            GlobalChecker globalChecker = this.globalChecker;
            this.isChangeTwoRoad = globalChecker.isChangeTwoRoad;
            this.isChangeOneRoad = globalChecker.isChangeOneRoad;
            this.state = globalChecker.state;
        }
        this.realState = this.state;
        if (this.autoFinishedStepManager == null) {
            this.autoFinishedStepManager = new AutoFinishedStepManager(this);
        }
        this.autoFinishedStepManager.startCheck(eVar, examProcessor, bVar);
        if (examProcessor.v()) {
            initState();
        }
        if (examProcessor.n.b(ConflictSignal.TurnLight) || examProcessor.n.b(ConflictSignal.TurnLightError) || examProcessor.n.b(ConflictSignal.TurnLightLongDistance)) {
            initState();
        }
    }
}
