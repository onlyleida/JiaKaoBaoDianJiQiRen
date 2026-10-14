package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_311104_Event extends d<K2ShiHuaLuMianConfig> {
    private boolean isNearEndLine;

    public K2_ShiHuaLuMian_311104_Event(K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig, Deduct deduct) {
        super(k2ShiHuaLuMianConfig, deduct);
        this.isNearEndLine = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.e eVar2 = (cn.mucang.android.jiakaoyi.examk2.b.e) bVar.f();
        if (!this.isNearEndLine && ((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).u <= ((Integer) ((K2ShiHuaLuMianConfig) this.config).p411113.value).intValue() * 100) {
            this.isNearEndLine = true;
        }
        if (this.isNearEndLine && ((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).p() && ((Integer) ((K2ShiHuaLuMianConfig) this.config).p411117.value).intValue() != 1) {
            CarModel carModelD = eVar.d();
            if (((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).D && carModelD.j(Light.WarningLight)) {
                setDoNotExecute(true);
                return false;
            }
            if (((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).E && (carModelD.j(Light.FrontFogLight) || carModelD.j(Light.RearFogLight))) {
                setDoNotExecute(true);
                return false;
            }
            if (((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).F && (carModelD.j(Light.NearLight) || carModelD.j(Light.FarLight))) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
