package cn.mucang.android.jiakaoyi.exam.k3.teach.model;

/* JADX INFO: loaded from: classes2.dex */
public enum ActionState {
    Waiting(0),
    Starting(1),
    Finish(2),
    Error(3),
    NoFinish(4),
    Skip(5);

    public final int state;

    ActionState(int i) {
        this.state = i;
    }
}
