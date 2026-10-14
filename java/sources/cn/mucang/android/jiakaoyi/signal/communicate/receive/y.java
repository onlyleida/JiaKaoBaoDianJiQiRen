package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class y extends m {
    public y(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        if (cn.mucang.android.jiakaoyi.signal.com.p.b()) {
            rVar.o();
            this.f5428a = rVar.o() == 0;
        } else {
            this.f5428a = true;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.f("响应OTA请求升级 0x81指令");
    }
}
