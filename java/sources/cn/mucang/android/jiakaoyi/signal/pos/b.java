package cn.mucang.android.jiakaoyi.signal.pos;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pos f5819a;
    public final double b;
    public final a c;

    public b(Pos pos, double d2) {
        this.f5819a = pos;
        this.b = d2;
        double d3 = pos.x;
        double d4 = d3 - d2;
        double d5 = pos.y;
        double d6 = d5 - d2;
        double d7 = d3 + d2;
        double d8 = d5 + d2;
        this.c = new a(d4, d6, d7, d8);
        new c(new Pos(d4, d6), new Pos(d4, d8), new Pos(d7, d8), new Pos(d7, d6));
    }
}
