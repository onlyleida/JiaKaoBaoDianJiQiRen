package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2XiaCheJianChaConfig;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class m extends cn.mucang.android.jiakaoyi.engine.processor.exam.step.d<K2XiaCheJianChaConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3284a;
    public Gear b;
    public boolean c;

    public m(K2XiaCheJianChaConfig k2XiaCheJianChaConfig) {
        super(k2XiaCheJianChaConfig);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (eVar.d().f5265a > 500) {
            this.f3284a = eVar.d().f5268f;
            this.b = eVar.d().m;
            this.c = eVar.d().f5266d;
        }
        int i = eVar.d().f5265a;
    }
}
