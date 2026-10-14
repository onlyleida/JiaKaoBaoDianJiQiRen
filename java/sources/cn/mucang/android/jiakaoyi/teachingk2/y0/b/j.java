package cn.mucang.android.jiakaoyi.teachingk2.y0.b;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes4.dex */
public class j extends cn.mucang.android.jiakaoyi.engine.processor.exam.step.d<SimpleTeachingConfig> {
    public j() {
        super(null);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (eVar.d().f5265a > 500) {
            boolean z = eVar.d().f5268f;
            Gear gear = eVar.d().m;
            boolean z2 = eVar.d().f5266d;
        }
        int i = eVar.d().f5265a;
    }
}
