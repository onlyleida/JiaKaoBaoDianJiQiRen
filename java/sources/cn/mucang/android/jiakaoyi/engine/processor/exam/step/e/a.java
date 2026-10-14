package cn.mucang.android.jiakaoyi.engine.processor.exam.step.e;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements e {
    public static final int DEFAULT_VALUE = -999999;
    protected boolean noInited = true;

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public f handle(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (!this.noInited) {
            return null;
        }
        this.noInited = false;
        initArgs(eVar, examProcessor, bVar);
        return null;
    }

    protected void initArgs(cn.mucang.android.jiakaoyi.signal.c.e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
    }
}
