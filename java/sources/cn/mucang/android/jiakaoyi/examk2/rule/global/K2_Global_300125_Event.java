package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300125_Event extends d<K2GlobalConfig> {
    private long deductTime;
    private long keyStartingEndTime;
    private KeyState lastKeyState;

    public K2_Global_300125_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.keyStartingEndTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2GlobalConfig) this.config).p401137.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        KeyState keyState = eVar.d().p;
        if (eVar.d().J) {
            keyState = KeyState.Start;
        }
        long j = examProcessor.i;
        if (j - this.deductTime < DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            this.lastKeyState = keyState;
            return true;
        }
        KeyState keyState2 = this.lastKeyState;
        KeyState keyState3 = KeyState.Start;
        if (keyState2 == keyState3 && keyState != keyState3) {
            this.keyStartingEndTime = j;
        }
        long j2 = this.keyStartingEndTime;
        if (j2 <= 0 || keyState != keyState3 || j - j2 >= DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            this.lastKeyState = keyState;
            return true;
        }
        this.lastKeyState = keyState;
        this.deductTime = j;
        return false;
    }
}
