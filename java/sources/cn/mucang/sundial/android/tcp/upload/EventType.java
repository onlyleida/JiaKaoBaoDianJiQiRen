package cn.mucang.sundial.android.tcp.upload;

/* JADX INFO: loaded from: classes5.dex */
public enum EventType {
    PLATFORM_QUERY(0),
    STUDENT_SIGN_IN(17),
    STUDENT_SIGN_OUT(18),
    STUDENT_TRAINING(19),
    COACH_SIGN_IN(20),
    COACH_SIGN_OUT(21),
    COACH_TRAINING(22);

    int value;

    EventType(int i) {
        this.value = i;
    }

    public int valueOf() {
        return this.value;
    }
}
