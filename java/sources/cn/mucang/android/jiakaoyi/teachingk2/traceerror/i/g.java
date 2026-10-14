package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f5994a = null;
    private Pos b = null;

    public boolean a(Pos pos, Pos pos2, Pos pos3, double d2) {
        if (this.f5994a == null) {
            this.f5994a = new Pos();
            this.b = new Pos();
        }
        pos.vectorTo(pos2, this.f5994a);
        pos3.vectorTo(pos2, this.b);
        return Math.abs(this.f5994a.dot(this.b) / (this.b.model() + 1.0E-10d)) < d2 || pos3.vectorTo(pos2, this.f5994a).dot(pos2.vectorTo(pos, this.b)) > 0.0d;
    }
}
