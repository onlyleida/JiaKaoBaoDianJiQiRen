package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class Judge100231Checker {
    private K3GlobalStepConfig config;
    private boolean lastEngineStartState = false;
    private long engineStartTime = 0;

    public Judge100231Checker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.config = k3GlobalStepConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean check(e eVar) {
        boolean z = eVar.d().f5265a > Math.max(((Integer) this.config.p200185.value).intValue(), 30);
        if (!this.lastEngineStartState && z) {
            this.engineStartTime = eVar.d().L;
        }
        if (this.engineStartTime == 0 || eVar.d().L - this.engineStartTime >= SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS || z) {
            this.lastEngineStartState = z;
            return true;
        }
        this.engineStartTime = 0L;
        this.lastEngineStartState = false;
        return false;
    }
}
