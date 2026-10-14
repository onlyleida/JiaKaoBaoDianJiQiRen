package cn.mucang.android.jiakaoyi.k3collect.j0.b;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends cn.mucang.android.jiakaoyi.k3collect.j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseArray<Pos> f3969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Pos f3970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<Pos> f3971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<Pos> f3972g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3973h;
    public int i;
    public int j;
    public int k;
    public double l;
    public List<Line> m;
    public cn.mucang.android.jiakaoyi.signal.pos.c n;

    public e(LineStyle lineStyle, int i, Long l) {
        super(lineStyle, i, l);
    }

    public boolean a() {
        int i = this.f3973h;
        if (i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) {
            return this.f3970e != null;
        }
        return this.n != null;
    }
}
