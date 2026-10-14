package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.n;
import cn.mucang.android.jiakaoyi.examk2.collision.i;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309106_Event extends d<K2ZhaiLuDiaoTouConfig> {
    private boolean isStop;
    private b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ZhaiLuDiaoTou_309106_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
        this.isStop = false;
        this.timeoutCheck = new b(((Integer) ((K2ZhaiLuDiaoTouConfig) this.config).p409111.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVar2;
        n nVar = (n) bVar.f();
        if (((i) nVar.f3279a).H && (bVar2 = this.timeoutCheck) != null) {
            bVar2.g();
            if (this.timeoutCheck.d() && !this.isStop) {
                setDoNotExecute(true);
                return false;
            }
            if (((i) nVar.f3279a).f3695f) {
                this.isStop = true;
                setDoNotExecute(true);
                this.timeoutCheck.b();
                this.timeoutCheck = null;
            }
        }
        return true;
    }
}
