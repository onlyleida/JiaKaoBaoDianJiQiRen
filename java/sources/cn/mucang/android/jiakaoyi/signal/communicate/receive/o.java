package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f5432a;

    public o(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        int iE = rVar.e();
        if (iE > 0) {
            this.f5432a = new int[iE];
            for (byte b = 0; b < iE; b = (byte) (b + 1)) {
                if (rVar.b()) {
                    this.f5432a[b] = rVar.l();
                }
            }
        }
    }
}
