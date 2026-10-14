package cn.mucang.android.jiakaoyi.k3collect.j0.b;

import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g extends cn.mucang.android.jiakaoyi.k3collect.j0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<Pos> f3979d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<Pos> f3980e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Pos f3981f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Pos f3982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Pos f3983h;
    public Pos i;
    public Pos j;
    public Pos k;
    public Pos l;
    public Pos m;
    public int n;

    public g(LineStyle lineStyle, int i, Long l) {
        super(lineStyle, i, l);
    }

    public boolean a() {
        List<Pos> list;
        List<Pos> list2 = this.f3979d;
        return list2 != null && list2.size() > 0 && (list = this.f3980e) != null && list.size() > 0;
    }
}
