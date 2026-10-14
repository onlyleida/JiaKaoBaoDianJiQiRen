package cn.mucang.android.jiakaoyi.examk2.rule.xiachejiancha;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.f;

/* JADX INFO: loaded from: classes2.dex */
public class K2_XiaCheJianCha_Step1 implements e {
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, b bVar) {
        if (eVar.d().j) {
            return null;
        }
        return new f();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        return true;
    }

    public String stepName() {
        return "下车检查";
    }
}
