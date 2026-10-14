package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300118_Event extends d<K2GlobalConfig> {
    private final cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d houLiuChecker;
    private boolean isStoped;

    public K2_Global_300118_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.houLiuChecker = new cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.d();
        this.isStoped = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.HouLiu)) {
            return true;
        }
        if (examProcessor.s.f3128a) {
            this.isStoped = true;
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401124.value).booleanValue() ? true : examProcessor.v()) {
            if (this.isStoped) {
                double dA = this.houLiuChecker.a(eVar);
                if (dA > 30.0d) {
                    f.o("后溜大于30厘米：" + dA);
                    return false;
                }
            }
            if (eVar.d().c() && eVar.d().F.isForward()) {
                this.isStoped = false;
            }
        } else {
            this.houLiuChecker.b();
            this.isStoped = false;
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
