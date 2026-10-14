package cn.mucang.android.jiakaoyi.k3collect.j0.b;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h extends cn.mucang.android.jiakaoyi.k3collect.j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.pos.a f3984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<Pos> f3985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<Line> f3986f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<Line> f3987g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<Pos> f3988h;
    public double i;
    public int j;
    public int k;
    public int l;

    public h(LineStyle lineStyle, int i, Long l) {
        super(lineStyle, i, l);
        this.l = 4;
    }

    public boolean a() {
        SparseArray<Pos> sparseArray = this.f3985e;
        if (sparseArray == null || sparseArray.size() != this.l) {
            return false;
        }
        for (int i = 0; i < this.l; i++) {
            if (this.f3985e.valueAt(i) == null) {
                return false;
            }
        }
        return true;
    }
}
