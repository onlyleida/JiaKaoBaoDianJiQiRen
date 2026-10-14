package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_311116_Event extends d<K2ShiHuaLuMianConfig> {
    private boolean hasOpenFogLight;
    private boolean hasOpenLight;
    private boolean hasOpenWarningLight;

    public K2_ShiHuaLuMian_311116_Event(K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig, Deduct deduct) {
        super(k2ShiHuaLuMianConfig, deduct);
        this.hasOpenWarningLight = false;
        this.hasOpenFogLight = false;
        this.hasOpenLight = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((cn.mucang.android.jiakaoyi.examk2.collision.d) ((cn.mucang.android.jiakaoyi.examk2.b.e) bVar.f()).f3279a).u <= (((Integer) ((K2ShiHuaLuMianConfig) this.config).p411113.value).intValue() * 100) + 100) {
            setDoNotExecute(true);
            return true;
        }
        if (this.hasOpenWarningLight && !eVar.d().j(Light.WarningLight)) {
            this.hasOpenWarningLight = false;
            return false;
        }
        if (!this.hasOpenWarningLight && eVar.d().j(Light.WarningLight)) {
            this.hasOpenWarningLight = true;
        }
        if (this.hasOpenFogLight && !eVar.d().j(Light.FrontFogLight) && !eVar.d().j(Light.RearFogLight)) {
            this.hasOpenFogLight = false;
            return false;
        }
        if (!this.hasOpenFogLight && (eVar.d().j(Light.FrontFogLight) || eVar.d().j(Light.RearFogLight))) {
            this.hasOpenFogLight = true;
        }
        if (this.hasOpenLight && !eVar.d().j(Light.NearLight) && !eVar.d().j(Light.FarLight)) {
            this.hasOpenLight = false;
            return false;
        }
        if (!this.hasOpenLight && (eVar.d().j(Light.NearLight) || eVar.d().j(Light.FarLight))) {
            this.hasOpenLight = true;
        }
        return true;
    }
}
