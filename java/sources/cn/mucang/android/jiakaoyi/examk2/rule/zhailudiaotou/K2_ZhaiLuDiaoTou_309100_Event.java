package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.n;
import cn.mucang.android.jiakaoyi.examk2.collision.i;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309100_Event extends d<K2ZhaiLuDiaoTouConfig> {
    boolean isCanDeduct;

    public K2_ZhaiLuDiaoTou_309100_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
        this.isCanDeduct = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2ZhaiLuDiaoTouConfig) this.config).p409109.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        return ((i) ((n) bVar.f()).f3279a).h(-1, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        n nVar = (n) bVar.f();
        if (this.isCanDeduct && ((i) nVar.f3279a).F) {
            this.isCanDeduct = false;
            return false;
        }
        if (!((i) nVar.f3279a).F) {
            this.isCanDeduct = true;
        }
        return true;
    }
}
