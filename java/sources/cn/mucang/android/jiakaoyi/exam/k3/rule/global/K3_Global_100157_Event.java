package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.biandao.HpMultiBiandaoChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100157_Event extends d<K3GlobalStepConfig> {
    private HpMultiBiandaoChecker hpMultiBiandaoChecker;
    private long lastTriggerTime;

    public K3_Global_100157_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastTriggerTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.LianXuBianDao)) {
            HpMultiBiandaoChecker hpMultiBiandaoChecker = this.hpMultiBiandaoChecker;
            if (hpMultiBiandaoChecker != null) {
                hpMultiBiandaoChecker.reset();
            }
            this.lastTriggerTime = 0L;
            return true;
        }
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (examProcessor.i - this.lastTriggerTime < ((Integer) ((K3GlobalStepConfig) this.config).p200156.value).intValue() * 1000) {
                return true;
            }
            boolean z = ((GlobalStateData) bVar.f()).isChangeTwoRoad;
            if (z) {
                this.lastTriggerTime = examProcessor.i;
            }
            return !z;
        }
        if (examProcessor.y(Step.K3_DiaoTou)) {
            return true;
        }
        if (this.hpMultiBiandaoChecker == null) {
            this.hpMultiBiandaoChecker = new HpMultiBiandaoChecker(((Integer) ((K3GlobalStepConfig) this.config).p200156.value).intValue() * 1000, ((Boolean) ((K3GlobalStepConfig) this.config).p200199.value).booleanValue());
        }
        boolean zCheck = this.hpMultiBiandaoChecker.check(eVar, examProcessor);
        if (zCheck) {
            t.h("MultiBiandao", "isMultiBiandao " + zCheck);
        }
        return !zCheck;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
