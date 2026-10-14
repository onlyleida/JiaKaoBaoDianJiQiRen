package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.utils.f;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300128_Event extends d<K2GlobalConfig> {
    private boolean hasStop;

    public K2_Global_300128_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.hasStop = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return f.c();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (f.b()) {
            return true;
        }
        if (eVar.d().c()) {
            if (this.hasStop && eVar.d().m != Gear.GearBack && eVar.d().m.gear > Gear.Gear1.gear) {
                return false;
            }
            this.hasStop = false;
        }
        if (examProcessor.s.f3128a) {
            this.hasStop = true;
        }
        return true;
    }
}
