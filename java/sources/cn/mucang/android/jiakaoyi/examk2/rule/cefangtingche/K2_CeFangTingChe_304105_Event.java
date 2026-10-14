package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304105_Event extends d<K2CeFangTingCheConfig> {
    public K2_CeFangTingChe_304105_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((a) bVar.f()).f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.b) c).o0 != 0 && examProcessor.i - ((cn.mucang.android.jiakaoyi.examk2.collision.b) c).o0 > ((Integer) ((K2CeFangTingCheConfig) this.config).p406107.value).intValue() * 1000) {
            if (bVar.j() && !((Boolean) ((K2CeFangTingCheConfig) this.config).p406146.value).booleanValue()) {
                setDoNotExecute(true);
                return false;
            }
            if (!bVar.j() && ((Boolean) ((K2CeFangTingCheConfig) this.config).p406146.value).booleanValue()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
