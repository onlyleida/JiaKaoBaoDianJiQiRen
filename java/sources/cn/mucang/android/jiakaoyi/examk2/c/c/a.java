package cn.mucang.android.jiakaoyi.examk2.c.c;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.g;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f3287a;
    private final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b b;

    public a(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.b = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.g
    public boolean a(e eVar, ExamProcessor examProcessor) {
        l lVar = (l) this.b.f();
        Step step = Step.K2_SuiDao;
        K2SuiDaoConfig k2SuiDaoConfig = (K2SuiDaoConfig) examProcessor.r(step);
        if (k2SuiDaoConfig != null) {
            C c = lVar.f3279a;
            if (((h) c).z != null && ((h) c).z.booleanValue() && ((((Integer) k2SuiDaoConfig.p412118.value).intValue() == 1 || (((Integer) k2SuiDaoConfig.p412118.value).intValue() == 2 && ((Integer) k2SuiDaoConfig.p412110.value).intValue() == 0)) && ((Integer) k2SuiDaoConfig.p412117.value).intValue() > 0)) {
                if (this.f3287a == null) {
                    b bVar = new b(((Integer) k2SuiDaoConfig.p412117.value).intValue() * 1000);
                    this.f3287a = bVar;
                    bVar.g();
                }
                if (!this.f3287a.d()) {
                    return false;
                }
                this.f3287a.b();
                this.f3287a = null;
                if (eVar.d().j(Light.FarLight) || eVar.d().j(Light.NearLight)) {
                    examProcessor.f(step, new int[]{312102});
                }
                return true;
            }
        }
        return true;
    }
}
