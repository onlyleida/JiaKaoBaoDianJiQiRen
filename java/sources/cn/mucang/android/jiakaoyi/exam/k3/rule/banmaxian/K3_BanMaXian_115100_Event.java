package cn.mucang.android.jiakaoyi.exam.k3.rule.banmaxian;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BrakeSlowDownChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineBrakeChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;

/* JADX INFO: loaded from: classes2.dex */
public class K3_BanMaXian_115100_Event extends d<K3BanMaXianStepConfig> {
    private JudgeLineBrakeChecker brakeChecker;
    private BrakeSlowDownChecker brakeSlowDownChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;

    public K3_BanMaXian_115100_Event(K3BanMaXianStepConfig k3BanMaXianStepConfig, Deduct deduct) {
        super(k3BanMaXianStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3BanMaXianStepConfig) this.config).p215103.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.footBrakeVoiceHelper;
        if (footBrakeVoiceHelper != null) {
            footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
        }
        if (((Boolean) ((K3BanMaXianStepConfig) this.config).p215119.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.brakeChecker.check(eVar, examProcessor, bVar);
            return this.brakeChecker.judgeDeduct(eVar, bVar);
        }
        if (!this.brakeSlowDownChecker.check(eVar, examProcessor, bVar)) {
            return true;
        }
        setDoNotExecute(true);
        return this.brakeSlowDownChecker.judgeDeduct();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        BrakeSlowDownChecker.JudgeMode judgeMode;
        super.initArgs(eVar, examProcessor, bVar);
        this.brakeChecker = new JudgeLineBrakeChecker(((Integer) ((K3BanMaXianStepConfig) this.config).p215118.value).intValue());
        if (FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
        c.b bVar2 = bVar.f3143f;
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            judgeMode = (bVar2 == null || !k.c(bVar2.b)) ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.BrakePoint;
        } else if (((Integer) ((K3BanMaXianStepConfig) this.config).p215126.value).intValue() == 0) {
            judgeMode = BrakeSlowDownChecker.JudgeMode.StopLine;
        } else {
            judgeMode = ((Integer) ((K3BanMaXianStepConfig) this.config).p215126.value).intValue() == 1 ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.StopLineOrDistance;
        }
        this.brakeSlowDownChecker = new BrakeSlowDownChecker(bVar, eVar.d().C + ((Integer) ((K3BanMaXianStepConfig) this.config).p215104.value).intValue(), judgeMode, ((Integer) ((K3BanMaXianStepConfig) this.config).p215118.value).intValue());
    }
}
