package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class c0 extends m {
    public final byte b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5413e;

    public c0(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        byte bE = rVar.e();
        this.b = bE;
        boolean z = false;
        if (!cn.mucang.android.jiakaoyi.signal.com.s.b(bE)) {
            int iA = cn.mucang.android.jiakaoyi.signal.com.s.a(bE);
            if (iA == 1) {
                this.c = rVar.o();
            } else if (iA == 2) {
                this.c = rVar.l();
            }
            this.f5428a = this.c > 0;
            return;
        }
        this.f5412d = rVar.l();
        int iL = rVar.l();
        this.f5413e = iL;
        if (this.f5412d >= 0 && iL >= 0) {
            z = true;
        }
        this.f5428a = z;
    }
}
