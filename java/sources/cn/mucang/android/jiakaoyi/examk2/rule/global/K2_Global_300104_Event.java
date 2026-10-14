package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300104_Event extends d<K2GlobalConfig> {
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_Global_300104_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2GlobalConfig) this.config).p401112.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (!eVar.d().F.isForward() || (!(eVar.d().m == Gear.GearN || eVar.d().k) || eVar.d().b <= ((Integer) ((K2GlobalConfig) this.config).p401136.value).intValue() + CarModel.Y)) {
            this.timeoutCheck.b();
        } else {
            this.timeoutCheck.g();
            if (this.timeoutCheck.d()) {
                this.timeoutCheck.b();
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
