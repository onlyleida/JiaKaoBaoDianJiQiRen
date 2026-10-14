package cn.mucang.android.jiakaoyi.exam.k3.creator;

/* JADX INFO: loaded from: classes2.dex */
public enum ExamStepState {
    Wait(0),
    Ready(1),
    Start(2),
    End(3),
    Deduct(4);

    public final int state;

    ExamStepState(int i) {
        this.state = i;
    }
}
