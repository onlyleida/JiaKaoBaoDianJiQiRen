package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStraightenChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarTurnChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class ZuoZhuanStateData extends K3BaseStepData<K3LuKouZuoZhuanStepConfig> {
    public CarTurnChecker carTurnChecker;
    private boolean hasReachAngle;
    public State lastState;
    private boolean pressStopLine;
    private float reachDistance;
    public State state;
    private CarStraightenChecker straightenChecker;
    public final JudgeLineTurnLightChecker turnLightChecker;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.data.ZuoZhuanStateData$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ZuoZhuanStateData$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ZuoZhuanStateData$State = iArr;
            try {
                iArr[State.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ZuoZhuanStateData$State[State.Turning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum State {
        Start,
        Turning,
        TurningEND
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ZuoZhuanStateData(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig) {
        super(k3LuKouZuoZhuanStepConfig);
        this.state = State.Start;
        this.hasReachAngle = false;
        this.reachDistance = -1.0f;
        this.straightenChecker = new CarStraightenChecker();
        this.carTurnChecker = new CarTurnChecker(((Integer) k3LuKouZuoZhuanStepConfig.p208122.value).intValue());
        this.turnLightChecker = new JudgeLineTurnLightChecker();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0120  */
    /* JADX WARN: Instruction removed from duplicated block: B:55:0x0120, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208131.value).booleanValue()) {
            this.turnLightChecker.check(eVar, examProcessor, bVar);
        }
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ZuoZhuanStateData$State[this.state.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2) {
            }
            if (this.lastState != this.state) {
                f.o("路口左转状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
            }
            this.lastState = this.state;
        }
        this.carTurnChecker.onCheck(eVar, this.startAngel, examProcessor.i);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (eVar.d().h()) {
                State state = this.state;
                State state2 = State.Turning;
                if (state != state2 && !this.pressStopLine && K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true)) {
                    this.pressStopLine = true;
                    this.state = state2;
                    this.straightenChecker.start();
                    u.h("检测到左转弯");
                }
            }
            if (!((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208135.value).booleanValue()) {
                State state3 = this.state;
                State state4 = State.Turning;
                if (state3 != state4 && this.carTurnChecker.direction == CarTurnChecker.Direction.turnLeft) {
                    this.state = state4;
                    this.straightenChecker.start();
                    u.h("检测到左转弯");
                }
            }
        } else {
            State state5 = this.state;
            State state6 = State.Turning;
            if (state5 != state6 && this.carTurnChecker.direction == CarTurnChecker.Direction.turnLeft) {
                this.state = state6;
                this.straightenChecker.start();
                u.h("检测到左转弯");
            }
        }
        if (!this.hasReachAngle && d.a(this.startAngel - eVar.d().D) <= ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208104.value).intValue()) {
            z = false;
        }
        this.hasReachAngle = z;
        if (z && this.reachDistance <= BitmapDescriptorFactory.HUE_RED) {
            this.reachDistance = eVar.d().C;
        }
        if (this.hasReachAngle && (this.straightenChecker.onCheck(eVar.d().b, eVar.d().D, examProcessor.i) || eVar.d().C - this.reachDistance >= 15.0f)) {
            this.state = State.TurningEND;
        }
        if (this.lastState != this.state) {
            f.o("路口左转状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastState = this.state;
    }
}
