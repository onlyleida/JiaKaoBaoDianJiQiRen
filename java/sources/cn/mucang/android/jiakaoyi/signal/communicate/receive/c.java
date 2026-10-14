package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class c extends m {
    public int b;
    public int c;

    public c(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.f5428a = true;
        byte bE = rVar.e();
        this.b = bE;
        if (bE == 3 || bE == 4 || bE == 6) {
            this.f5428a = rVar.e() == 0;
        } else {
            this.c = rVar.e();
        }
    }
}
