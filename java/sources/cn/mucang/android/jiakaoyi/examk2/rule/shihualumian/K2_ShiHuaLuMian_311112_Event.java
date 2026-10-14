package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_311112_Event extends d<K2ShiHuaLuMianConfig> {
    public K2_ShiHuaLuMian_311112_Event(K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig, Deduct deduct) {
        super(k2ShiHuaLuMianConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.e eVar2 = (cn.mucang.android.jiakaoyi.examk2.b.e) bVar.f();
        if (!((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).z) {
            return true;
        }
        setDoNotExecute(true);
        return ((cn.mucang.android.jiakaoyi.examk2.collision.d) eVar2.f3279a).F;
    }
}
