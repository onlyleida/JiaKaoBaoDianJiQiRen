package cn.mucang.android.jiakaoyi.engine.trace.storage;

/* JADX INFO: loaded from: classes2.dex */
public enum DataType {
    Site(1, "地图"),
    Car(2, "车身位置"),
    Signal(3, "信号"),
    Step(4, "步骤"),
    Exam(5, "特殊数据"),
    Error(6, "错误"),
    Deduct(7, "扣分"),
    CarData(12, "车身数据"),
    Behavior(13, "练车行为"),
    ExtraInfo(10, "其他信息");

    public final int typeId;
    private final String typeName;

    DataType(int i, String str) {
        this.typeId = i;
        this.typeName = str;
    }
}
