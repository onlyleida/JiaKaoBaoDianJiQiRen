package cn.mucang.android.jiakaoyi.k3collect.i0;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3945a = 0;
    private int b = 15;
    private List<Gps> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Gps> f3946d = new ArrayList();

    public List<Gps> a() {
        return this.c;
    }

    public List<Gps> b() {
        return this.f3946d;
    }

    public int c() {
        return this.f3945a;
    }

    public int d() {
        return this.b;
    }

    public void e(int i) {
        this.f3945a = i;
    }

    public void f(int i) {
        this.b = i;
    }
}
