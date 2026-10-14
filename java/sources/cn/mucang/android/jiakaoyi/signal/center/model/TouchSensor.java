package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum TouchSensor {
    Seat(2),
    OutsideMirror(1),
    InsideMirror(0);

    public final int id;

    TouchSensor(int i) {
        this.id = i;
    }
}
