package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_311114_Event extends d<K2ShiHuaLuMianConfig> {
    private boolean hasMoveCar;
    private final b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_ShiHuaLuMian_311114_Event(K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig, Deduct deduct) {
        super(k2ShiHuaLuMianConfig, deduct);
        this.timeoutCheck = new b(((Integer) ((K2ShiHuaLuMianConfig) this.config).p411107.value).intValue());
        this.hasMoveCar = true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((cn.mucang.android.jiakaoyi.examk2.collision.d) ((cn.mucang.android.jiakaoyi.examk2.b.e) bVar.f()).f3279a).f3695f) {
            if (!this.timeoutCheck.e() && this.hasMoveCar) {
                this.timeoutCheck.g();
            }
            if (this.timeoutCheck.d()) {
                this.timeoutCheck.b();
                this.hasMoveCar = false;
                return false;
            }
        } else {
            this.hasMoveCar = true;
            this.timeoutCheck.b();
        }
        return true;
    }
}
