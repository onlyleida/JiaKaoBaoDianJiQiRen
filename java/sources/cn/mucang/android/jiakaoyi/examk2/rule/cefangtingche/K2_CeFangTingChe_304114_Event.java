package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304114_Event extends d<K2CeFangTingCheConfig> {
    public K2_CeFangTingChe_304114_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.collision.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a;
        if (bVar2.r == SubStep.Step2) {
            setDoNotExecute(true);
            if (bVar2.U) {
                setDoNotExecute(true);
                return false;
            }
            if (cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), bVar2.N)) {
                return false;
            }
        }
        return true;
    }
}
