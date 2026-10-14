package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class OpenCloseDoorChecker {
    public State state = State.Init;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.helper.OpenCloseDoorChecker$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State = iArr;
            try {
                iArr[State.Error.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State[State.Finish.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State[State.Init.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State[State.WaitOpen.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State[State.WaitClose.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum State {
        Init,
        WaitOpen,
        WaitClose,
        Finish,
        Error
    }

    public void check(e eVar) {
        int i = AnonymousClass1.$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$helper$OpenCloseDoorChecker$State[this.state.ordinal()];
        if (i == 3) {
            if (eVar.d().j) {
                this.state = State.WaitOpen;
                return;
            } else {
                this.state = State.Error;
                return;
            }
        }
        if (i == 4) {
            if (eVar.d().j) {
                return;
            }
            this.state = State.WaitClose;
        } else if (i == 5 && eVar.d().j) {
            this.state = State.Finish;
        }
    }
}
