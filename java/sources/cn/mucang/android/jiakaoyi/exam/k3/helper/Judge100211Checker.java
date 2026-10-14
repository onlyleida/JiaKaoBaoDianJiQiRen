package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class Judge100211Checker {
    private K3GlobalStepConfig config;
    private boolean hasDeduct;
    private long firstTime = -1;
    private State state = State.Step_NONE;
    private boolean hasInit = false;
    private boolean lastIsEngineStart = false;

    public enum State {
        Step_NONE,
        Step_1
    }

    public Judge100211Checker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.config = k3GlobalStepConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean check(e eVar) {
        boolean zF = eVar.d().f();
        if (!this.hasInit) {
            this.hasInit = true;
            this.lastIsEngineStart = zF;
            return true;
        }
        if (!this.lastIsEngineStart && zF) {
            this.hasDeduct = false;
            this.firstTime = -1L;
            this.state = State.Step_1;
        }
        if (!zF) {
            this.state = State.Step_NONE;
        }
        this.lastIsEngineStart = zF;
        if (this.state == State.Step_1 && !this.hasDeduct) {
            if (eVar.d().J || eVar.d().p == KeyState.Start) {
                if (this.firstTime == -1) {
                    this.firstTime = eVar.d().L;
                }
                if (eVar.d().L - this.firstTime > ((Integer) this.config.p200209.value).intValue() * 1000) {
                    this.hasDeduct = true;
                    return false;
                }
            } else {
                this.state = State.Step_NONE;
            }
        }
        return true;
    }
}
