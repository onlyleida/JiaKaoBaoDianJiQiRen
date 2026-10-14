package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class i0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5425a;
    public final byte b;

    public i0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.f5425a = rVar.j();
        byte bE = rVar.e();
        this.b = bE;
        if (b()) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x23, " + c(bE));
    }

    private String c(byte b) {
        switch (b) {
            case 1:
                return "crc校验错误";
            case 2:
                return "包序号错误";
            case 3:
                return "OBD错误";
            case 4:
                return "包错误";
            case 5:
                return "超时";
            case 6:
                return "长度错误";
            case 7:
                return "命令类型错误";
            default:
                return "未知";
        }
    }

    public boolean a() {
        byte b = this.b;
        return b == 1 || b == 5 || b == 2 || b == 6;
    }

    public boolean b() {
        return this.b == 0;
    }
}
