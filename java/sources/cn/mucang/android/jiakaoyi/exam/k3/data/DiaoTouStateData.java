package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStraightenChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarTurnChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.DiaoTouAngleChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineTurnLightChecker;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class DiaoTouStateData extends K3BaseStepData<K3DiaoTouStepConfig> {
    private CarTurnChecker carTurnChecker;
    private CarStraightenChecker checker;
    private DiaoTouAngleChecker diaoTouAngleChecker;
    private final CarTurnChecker.Direction diaoTouDirection;
    private float diaotouFinishDistance;
    public boolean isLeftDiaoTou;
    public State lastState;
    public State state;
    public final JudgeLineTurnLightChecker turnLightChecker;

    public enum State {
        before,
        diaotou,
        after
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DiaoTouStateData(K3DiaoTouStepConfig k3DiaoTouStepConfig) {
        super(k3DiaoTouStepConfig);
        this.isLeftDiaoTou = true;
        this.checker = new CarStraightenChecker(2000);
        this.state = State.before;
        this.carTurnChecker = new CarTurnChecker(((Integer) k3DiaoTouStepConfig.p210104.value).intValue());
        this.turnLightChecker = new JudgeLineTurnLightChecker();
        if (((Integer) k3DiaoTouStepConfig.p210135.value).intValue() == 0) {
            this.isLeftDiaoTou = true;
            this.diaoTouDirection = CarTurnChecker.Direction.turnLeft;
        } else {
            this.isLeftDiaoTou = false;
            this.diaoTouDirection = CarTurnChecker.Direction.turnRight;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (this.diaoTouAngleChecker == null) {
            this.diaoTouAngleChecker = new DiaoTouAngleChecker(K3CollisionManager.getInstance().hasHpCollision(eVar));
        }
        this.diaoTouAngleChecker.insert(eVar);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3DiaoTouStepConfig) this.config).p210132.value).booleanValue()) {
            this.turnLightChecker.check(eVar, examProcessor, bVar);
        }
        State state = this.state;
        if (state == State.before) {
            this.carTurnChecker.onCheck(eVar, this.startAngel, examProcessor.i);
            if (this.carTurnChecker.direction == this.diaoTouDirection) {
                this.state = State.diaotou;
                this.checker.start();
                u.h("检测到掉头");
            }
        } else if (state == State.diaotou) {
            if (((Integer) ((K3DiaoTouStepConfig) this.config).p210143.value).intValue() == 1) {
                if (Math.abs(eVar.d().D - this.startAngel) > ((Integer) ((K3DiaoTouStepConfig) this.config).p210144.value).intValue()) {
                    if (this.diaotouFinishDistance == BitmapDescriptorFactory.HUE_RED) {
                        this.diaotouFinishDistance = eVar.d().C;
                    }
                    if (eVar.d().C - this.diaotouFinishDistance > 2.0f) {
                        this.state = State.after;
                    }
                } else {
                    this.diaotouFinishDistance = BitmapDescriptorFactory.HUE_RED;
                }
            } else if (this.checker.onCheck(eVar.d().b, eVar.d().D, examProcessor.i) && this.diaoTouAngleChecker.isEnd()) {
                this.state = State.after;
            }
        }
        if (this.lastState != this.state) {
            f.o("掉头状态 lastState " + this.lastState + " ; state " + this.state + " ; estimateTotalDistance " + eVar.d().C);
        }
        this.lastState = this.state;
    }
}
