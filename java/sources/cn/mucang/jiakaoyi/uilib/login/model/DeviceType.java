package cn.mucang.jiakaoyi.uilib.login.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;", "", "type", "", "typeName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getType", "()I", "getTypeName", "()Ljava/lang/String;", "EMULATOR", "LUKAOYI", "ROBOT", "ROBOT_B2", "MOTO", "CHANGKAOYI_B2", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum DeviceType {
    EMULATOR(1, "模拟器"),
    LUKAOYI(2, "路考仪"),
    ROBOT(3, "机器人"),
    ROBOT_B2(4, "大车机器人"),
    MOTO(5, "摩托车"),
    CHANGKAOYI_B2(6, "大车场考仪");

    private final int type;
    private final String typeName;

    DeviceType(int i, String str) {
        this.type = i;
        this.typeName = str;
    }

    public final int getType() {
        return this.type;
    }

    public final String getTypeName() {
        return this.typeName;
    }
}
