package cn.mucang.android.jiakaoyi.teachingk2.res.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7591a;
    public String b;
    public List<Pos> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.signal.pos.a f7592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7594f;

    public a(String str, double d2, int i, List<Pos> list) {
        this.f7591a = i;
        if (i == 0) {
            this.f7591a = 2;
        }
        this.b = str;
        if (d2 != 0.0d) {
            Math.min(Math.max(d2, 20.0d), 40.0d);
        }
        this.c = list;
        this.f7593e = false;
        this.f7594f = 0L;
        if (list == null) {
            this.f7592d = new cn.mucang.android.jiakaoyi.signal.pos.a(0.0d, 0.0d, 0.0d, 0.0d);
        } else {
            this.f7592d = cn.mucang.android.jiakaoyi.hpmap.d.a.b(list);
        }
    }
}
