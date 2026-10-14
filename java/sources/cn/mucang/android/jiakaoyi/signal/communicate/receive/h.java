package cn.mucang.android.jiakaoyi.signal.communicate.receive;

/* JADX INFO: loaded from: classes3.dex */
public class h extends m {
    public float b;
    public float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5423e;

    public h(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.b = rVar.i();
        this.c = rVar.i();
        this.f5422d = rVar.i();
        this.f5423e = rVar.i();
    }

    public String toString() {
        return "ReceiveBt3dPosInfo{x=" + this.b + ", y=" + this.c + ", z=" + this.f5422d + ", yaw=" + this.f5423e + '}';
    }
}
