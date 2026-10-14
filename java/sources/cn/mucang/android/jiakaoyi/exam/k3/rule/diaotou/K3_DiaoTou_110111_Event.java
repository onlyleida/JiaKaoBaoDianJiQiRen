package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BrakeSlowDownChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineBrakeChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110111_Event extends d<K3DiaoTouStepConfig> {
    private JudgeLineBrakeChecker brakeChecker;
    private BrakeSlowDownChecker brakeSlowDownChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;

    public K3_DiaoTou_110111_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3DiaoTouStepConfig) this.config).p210111.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!bVar.f3143f.f3087g) {
            setDoNotExecute(true);
            return true;
        }
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.footBrakeVoiceHelper;
        if (footBrakeVoiceHelper != null) {
            footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
        }
        if (((Boolean) ((K3DiaoTouStepConfig) this.config).p210132.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.brakeChecker.check(eVar, examProcessor, bVar);
            return this.brakeChecker.judgeDeduct(eVar, bVar);
        }
        if (this.brakeSlowDownChecker.check(eVar, examProcessor, bVar)) {
            setDoNotExecute(true);
            return this.brakeSlowDownChecker.judgeDeduct();
        }
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar) || (((DiaoTouStateData) bVar.f()).state != DiaoTouStateData.State.diaotou && !bVar.j())) {
            return true;
        }
        setDoNotExecute(true);
        return this.brakeSlowDownChecker.hasValidBrake();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        BrakeSlowDownChecker.JudgeMode judgeMode;
        super.initArgs(eVar, examProcessor, bVar);
        this.brakeChecker = new JudgeLineBrakeChecker(((Integer) ((K3DiaoTouStepConfig) this.config).p210131.value).intValue());
        if (FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
        c.b bVar2 = bVar.f3143f;
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            judgeMode = BrakeSlowDownChecker.JudgeMode.StopLine;
        } else {
            judgeMode = (bVar2 == null || !k.c(bVar2.b)) ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.BrakePoint;
        }
        this.brakeSlowDownChecker = new BrakeSlowDownChecker(bVar, eVar.d().C + ((Integer) ((K3DiaoTouStepConfig) this.config).p210122.value).intValue(), judgeMode, ((Integer) ((K3DiaoTouStepConfig) this.config).p210131.value).intValue());
    }
}
