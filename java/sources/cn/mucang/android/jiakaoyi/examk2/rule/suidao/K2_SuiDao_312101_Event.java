package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312101_Event extends d<K2SuiDaoConfig> {
    public K2_SuiDao_312101_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2SuiDaoConfig) this.config).p412106.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((h) ((l) bVar.f()).f3279a).s) {
            setDoNotExecute(true);
            return false;
        }
        if (eVar.d().f5269g) {
            setDoNotExecute(true);
        }
        return true;
    }
}
