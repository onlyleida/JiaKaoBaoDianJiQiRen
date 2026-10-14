package cn.mucang.android.jiakaoyi.examk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShiHuaLuMianConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShiHuaLuMian_311100_Event extends d<K2ShiHuaLuMianConfig> {
    private float speed;
    private long startTime;

    public K2_ShiHuaLuMian_311100_Event(K2ShiHuaLuMianConfig k2ShiHuaLuMianConfig, Deduct deduct) {
        super(k2ShiHuaLuMianConfig, deduct);
        this.speed = -1.0f;
        this.startTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.speed == -1.0f) {
            this.speed = eVar.d().b;
        }
        if (this.startTime == 0) {
            this.startTime = examProcessor.i;
        }
        if (examProcessor.i - this.startTime >= 1000) {
            if (eVar.d().b - this.speed > ((Integer) ((K2ShiHuaLuMianConfig) this.config).p411111.value).intValue()) {
                setDoNotExecute(true);
                return false;
            }
            this.startTime = examProcessor.i;
            this.speed = eVar.d().b;
        }
        return true;
    }
}
