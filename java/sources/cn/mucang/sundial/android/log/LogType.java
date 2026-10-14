package cn.mucang.sundial.android.log;

/* JADX INFO: loaded from: classes5.dex */
public class LogType {
    public final String dirName;
    public final int interval;
    public final boolean realTimeUpload;
    public final int size;
    public final String suffix;
    public final int totalSize;
    public final int type;
    public final String typeName;
    public static final LogType Normal = new LogType(1, "通用", "normal", "txt", 300000, 2097152, 10485760, true);
    public static final LogType Com = new LogType(2, "通信连接", "com", "txt", 600000, 2097152, 10485760, true);
    public static final LogType GPS = new LogType(3, "定位", "gps", "txt", 600000, 2097152, 31457280, true);

    LogType(int i, String str, String str2, String str3, int i2, int i3, int i4, boolean z) {
        this.typeName = str;
        this.dirName = str2;
        this.interval = i2;
        this.size = i3;
        this.type = i;
        this.totalSize = i4;
        this.suffix = str3;
        this.realTimeUpload = z;
    }

    public static LogType[] values() {
        return new LogType[]{Normal, Com, GPS};
    }

    public String dir(String str) {
        return str + "/" + this.dirName;
    }
}
