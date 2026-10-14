package cn.mucang.android.jiakaoyi.examk2.rule.qidianquyu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.h;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QiDianQuYu_308100_Event extends d<K2QiDianQuYuConfig> {
    public K2_QiDianQuYu_308100_Event(K2QiDianQuYuConfig k2QiDianQuYuConfig, Deduct deduct) {
        super(k2QiDianQuYuConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        h hVar = (h) bVar.f();
        if (((QiDianChecker) hVar.f3279a).f3695f) {
            setDoNotExecute(true);
            if (!((QiDianChecker) hVar.f3279a).s) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
