package cn.mucang.android.jiakaoyi.signal.center.model;

/* JADX INFO: loaded from: classes3.dex */
public enum BackGearType {
    RightDown("右下方倒挡", 1),
    LeftUpper("左上方倒挡", 2);

    public final String desc;
    public final int type;

    BackGearType(String str, int i) {
        this.desc = str;
        this.type = i;
    }
}
