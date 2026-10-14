package cn.mucang.android.jiakaoyi.examk2.c.b;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.g.b f3286a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.g
    public boolean a(e eVar, ExamProcessor examProcessor) {
        Step step = Step.K2_ShiHuaLuMian;
        K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig = (K2ShiHuaLuMianConfig) examProcessor.r(step);
        if (k2ShiHuaLuMianConfig == null || ((Integer) k2ShiHuaLuMianConfig.p411117.value).intValue() != 1 || ((Integer) k2ShiHuaLuMianConfig.p411120.value).intValue() <= 0) {
            return true;
        }
        if (this.f3286a == null) {
            cn.mucang.android.jiakaoyi.engine.g.b bVar = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) k2ShiHuaLuMianConfig.p411120.value).intValue() * 1000);
            this.f3286a = bVar;
            bVar.g();
        }
        if (!this.f3286a.d()) {
            return false;
        }
        if (eVar.d().n) {
            examProcessor.f(step, new int[]{311105});
        }
        this.f3286a.b();
        this.f3286a = null;
        return true;
    }
}
