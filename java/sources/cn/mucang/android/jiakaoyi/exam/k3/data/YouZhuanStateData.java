package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStraightenChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarTurnChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class YouZhuanStateData extends K3BaseStepData<K3LuKouYouZhuanStepConfig> {
    private CarTurnChecker carTurnChecker;
    private boolean hasReachAngle;
    public State lastState;
    private boolean pressStopLine;
    private float reachDistance;
    public State state;
    private CarStraightenChecker straightenChecker;
    public final JudgeLineTurnLightChecker turnLightChecker;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.data.YouZhuanStateData$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$YouZhuanStateData$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$YouZhuanStateData$State = iArr;
            try {
                iArr[State.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$YouZhuanStateData$State[State.Turning.ordinal()] = 2;
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
    public YouZhuanStateData(K3LuKouYouZhuanStepConfig k3LuKouYouZhuanStepConfig) {
        super(k3LuKouYouZhuanStepConfig);
        this.state = State.Start;
        this.hasReachAngle = false;
        this.reachDistance = -1.0f;
        this.straightenChecker = new CarStraightenChecker();
        this.carTurnChecker = new CarTurnChecker(((Integer) k3LuKouYouZhuanStepConfig.p209122.value).intValue());
        this.turnLightChecker = new JudgeLineTurnLightChecker();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x012f  */
    /* JADX WARN: Instruction removed from duplicated block: B:55:0x012f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3LuKouYouZhuanStepConfig) this.config).p209131.value).booleanValue()) {
            this.turnLightChecker.check(eVar, examProcessor, bVar);
        }
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$YouZhuanStateData$State[this.state.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2) {
            }
            if (this.lastState != this.state) {
                f.o("路口右转状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
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
                    f.o("高精度通过压停止线 判断出右转弯");
                    u.h("检测到右转弯");
                }
            }
            if (!((Boolean) ((K3LuKouYouZhuanStepConfig) this.config).p209135.value).booleanValue()) {
                State state3 = this.state;
                State state4 = State.Turning;
                if (state3 != state4 && this.carTurnChecker.direction == CarTurnChecker.Direction.turnRight) {
                    this.state = state4;
                    this.straightenChecker.start();
                    f.o("高精度通过角度 判断出右转弯");
                    u.h("检测到右转弯");
                }
            }
        } else {
            State state5 = this.state;
            State state6 = State.Turning;
            if (state5 != state6 && this.carTurnChecker.direction == CarTurnChecker.Direction.turnRight) {
                this.state = state6;
                this.straightenChecker.start();
                f.o("低精度通过角度 判断出右转弯");
                u.h("检测到右转弯");
            }
        }
        if (!this.hasReachAngle && d.a(eVar.d().D - this.startAngel) <= ((Integer) ((K3LuKouYouZhuanStepConfig) this.config).p209104.value).intValue()) {
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
            f.o("路口右转状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastState = this.state;
    }
}
