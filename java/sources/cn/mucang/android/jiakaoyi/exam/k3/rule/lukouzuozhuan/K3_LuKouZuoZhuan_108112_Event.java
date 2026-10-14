package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BrakeSlowDownChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineBrakeChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108112_Event extends d<K3LuKouZuoZhuanStepConfig> {
    private JudgeLineBrakeChecker brakeChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;
    private BrakeSlowDownChecker slowDownChecker;

    public K3_LuKouZuoZhuan_108112_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208111.value).booleanValue();
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
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3LuKouZuoZhuanStepConfig) this.config).p208131.value).booleanValue()) {
            this.brakeChecker.check(eVar, examProcessor, bVar);
            return this.brakeChecker.judgeDeduct(eVar, bVar);
        }
        if (!this.slowDownChecker.check(eVar, examProcessor, bVar)) {
            return true;
        }
        setDoNotExecute(true);
        return this.slowDownChecker.judgeDeduct();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        BrakeSlowDownChecker.JudgeMode judgeMode;
        super.initArgs(eVar, examProcessor, bVar);
        this.brakeChecker = new JudgeLineBrakeChecker(((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208130.value).intValue());
        if (FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
        c.b bVar2 = bVar.f3143f;
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            judgeMode = (bVar2 == null || !k.c(bVar2.b)) ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.BrakePoint;
        } else if (((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208134.value).intValue() == 0) {
            judgeMode = BrakeSlowDownChecker.JudgeMode.StopLine;
        } else {
            judgeMode = ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208134.value).intValue() == 1 ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.StopLineOrDistance;
        }
        this.slowDownChecker = new BrakeSlowDownChecker(bVar, eVar.d().C + ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208123.value).intValue(), judgeMode, ((Integer) ((K3LuKouZuoZhuanStepConfig) this.config).p208130.value).intValue());
    }
}
