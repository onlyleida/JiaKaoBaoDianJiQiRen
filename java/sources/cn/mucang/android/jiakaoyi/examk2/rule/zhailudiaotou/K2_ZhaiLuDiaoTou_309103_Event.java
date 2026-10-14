package cn.mucang.android.jiakaoyi.examk2.rule.zhailudiaotou;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.n;
import cn.mucang.android.jiakaoyi.examk2.collision.i;
import cn.mucang.android.jiakaoyi.examk2.config.K2ZhaiLuDiaoTouConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ZhaiLuDiaoTou_309103_Event extends d<K2ZhaiLuDiaoTouConfig> {
    private boolean isOpenWarningLight;
    private b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ZhaiLuDiaoTou_309103_Event(K2ZhaiLuDiaoTouConfig k2ZhaiLuDiaoTouConfig, Deduct deduct) {
        super(k2ZhaiLuDiaoTouConfig, deduct);
        this.isOpenWarningLight = false;
        this.timeoutCheck = new b(((Integer) ((K2ZhaiLuDiaoTouConfig) this.config).p409111.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVar2;
        if (((i) ((n) bVar.f()).f3279a).H && (bVar2 = this.timeoutCheck) != null) {
            bVar2.g();
            if (this.timeoutCheck.d() && !this.isOpenWarningLight) {
                setDoNotExecute(true);
                return false;
            }
            if (eVar.d().j(Light.WarningLight)) {
                this.isOpenWarningLight = true;
                setDoNotExecute(true);
                this.timeoutCheck.b();
                this.timeoutCheck = null;
            }
        }
        return true;
    }
}
