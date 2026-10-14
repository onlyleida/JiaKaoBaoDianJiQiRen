package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class j0 extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5426a;
    public int b;

    public j0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        rVar.o();
        this.f5426a = rVar.o();
        this.b = rVar.o();
        if (a()) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("消息0x28, " + b(this.b));
    }

    public boolean a() {
        return this.b == 0;
    }

    public String b(int i) {
        if (i == 1) {
            return "升级参数不对";
        }
        if (i == 2) {
            return "crc校验错误";
        }
        if (i != 3) {
            return i != 4 ? "无效参数" : "子模块升级完成无回应";
        }
        return "子模块无回应";
    }
}
