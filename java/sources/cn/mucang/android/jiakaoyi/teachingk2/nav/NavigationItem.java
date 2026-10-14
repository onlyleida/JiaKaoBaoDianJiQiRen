package cn.mucang.android.jiakaoyi.teachingk2.nav;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;", "Ljava/io/Serializable;", "()V", "s", "", "getS", "()D", "setS", "(D)V", "theta", "getTheta", "setTheta", "x", "getX", "setX", "y", "getY", "setY", "distanceTo", "pos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "toPos", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationItem implements Serializable {
    private double s;
    private double theta;
    private double x;
    private double y;

    public final double distanceTo(Pos pos) {
        r.e(pos, "pos");
        double d2 = this.x - pos.x;
        double d3 = this.y - pos.y;
        return (d2 * d2) + (d3 * d3);
    }

    public final double getS() {
        return this.s;
    }

    public final double getTheta() {
        return this.theta;
    }

    public final double getX() {
        return this.x;
    }

    public final double getY() {
        return this.y;
    }

    public final void setS(double d2) {
        this.s = d2;
    }

    public final void setTheta(double d2) {
        this.theta = d2;
    }

    public final void setX(double d2) {
        this.x = d2;
    }

    public final void setY(double d2) {
        this.y = d2;
    }

    public final Pos toPos() {
        return new Pos(this.x, this.y);
    }
}
