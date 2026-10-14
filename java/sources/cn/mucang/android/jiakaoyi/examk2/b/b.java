package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;

/* JADX INFO: loaded from: classes2.dex */
public class b extends g<K2DaoCheRuKuConfig, cn.mucang.android.jiakaoyi.hpmap.a.a.g.c, DaoKuChecker> {
    private boolean b;

    public b(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, DaoKuChecker daoKuChecker) {
        super(k2DaoCheRuKuConfig, daoKuChecker);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.examk2.b.g, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        long jIntValue = ((Integer) ((K2DaoCheRuKuConfig) this.config).p402107.value).intValue() * 1000;
        if (!((Boolean) ((K2DaoCheRuKuConfig) this.config).p402117.value).booleanValue() || this.b) {
            return;
        }
        C c = this.f3279a;
        if (((DaoKuChecker) c).t0 != 0) {
            long j = (((DaoKuChecker) c).t0 + jIntValue) - examProcessor.i;
            if (j <= 10000) {
                examProcessor.H(String.format(k0.a(R.string.daoku_countdown), Long.valueOf(j / 1000)), TtsGrade.SpecialVoice);
                this.b = true;
            }
        }
    }
}
