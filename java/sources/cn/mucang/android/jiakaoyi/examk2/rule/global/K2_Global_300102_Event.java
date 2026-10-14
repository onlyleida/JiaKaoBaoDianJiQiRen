package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300102_Event extends d<K2GlobalConfig> {
    private boolean isDeduct;

    public K2_Global_300102_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.isDeduct = true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        if (this.isDeduct && eVar.d().m != Gear.GearBack && eVar.d().m.gear > Gear.Gear1.gear) {
            this.isDeduct = false;
            return false;
        }
        if (eVar.d().m != Gear.GearBack && eVar.d().m.gear < Gear.Gear2.gear) {
            this.isDeduct = true;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
