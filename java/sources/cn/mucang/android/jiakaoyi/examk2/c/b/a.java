package cn.mucang.android.jiakaoyi.examk2.c.b;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.g;
import cn.mucang.android.jiakaoyi.examk2.collision.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.engine.g.b f3285a;
    private final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b b;

    public a(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        this.b = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.g
    public boolean a(e eVar, ExamProcessor examProcessor) {
        cn.mucang.android.jiakaoyi.examk2.b.e eVar2 = (cn.mucang.android.jiakaoyi.examk2.b.e) this.b.f();
        Step step = Step.K2_ShiHuaLuMian;
        K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig = (K2ShiHuaLuMianConfig) examProcessor.r(step);
        if (k2ShiHuaLuMianConfig == null || ((Integer) k2ShiHuaLuMianConfig.p411117.value).intValue() != 1 || ((Integer) k2ShiHuaLuMianConfig.p411120.value).intValue() <= 0) {
            return true;
        }
        if (this.f3285a == null) {
            cn.mucang.android.jiakaoyi.engine.g.b bVar = new cn.mucang.android.jiakaoyi.engine.g.b(((Integer) k2ShiHuaLuMianConfig.p411120.value).intValue() * 1000);
            this.f3285a = bVar;
            bVar.g();
        }
        if (!this.f3285a.d()) {
            return false;
        }
        this.f3285a.b();
        this.f3285a = null;
        boolean z = ((d) eVar2.f3279a).F && (eVar.d().j(Light.FarLight) || eVar.d().j(Light.NearLight));
        if (!z && ((d) eVar2.f3279a).D && eVar.d().j(Light.WarningLight)) {
            z = true;
        }
        if (!z && ((d) eVar2.f3279a).E && (eVar.d().j(Light.FrontFogLight) || eVar.d().j(Light.RearFogLight))) {
            z = true;
        }
        if (z) {
            examProcessor.f(step, new int[]{311104});
        }
        return true;
    }
}
