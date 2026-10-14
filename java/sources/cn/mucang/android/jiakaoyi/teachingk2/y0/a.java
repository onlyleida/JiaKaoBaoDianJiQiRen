package cn.mucang.android.jiakaoyi.teachingk2.y0;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes4.dex */
public class a<BC extends b, C extends cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b<BC, SimpleTeachingConfig>> extends d<SimpleTeachingConfig> implements cn.mucang.android.jiakaoyi.engine.processor.exam.step.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C f8776a;

    public a(C c) {
        super(null);
        this.f8776a = c;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.a
    public DeductExtraData a() {
        return this.f8776a.i();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        this.f8776a.a(eVar, bVar, examProcessor);
    }
}
