package cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.o;

import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.o;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static final b b;
    public static final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f5536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f5537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f5538f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<Cmd> f5539a = new LinkedList();

    static {
        b bVar = new b();
        bVar.b(o.b());
        b = bVar;
        c = new b();
        b bVar2 = new b();
        bVar2.b(o.e());
        f5536d = bVar2;
        b bVar3 = new b();
        bVar3.b(o.c());
        f5537e = bVar3;
        new b().b(o.d());
        b bVar4 = new b();
        bVar4.b(o.a());
        f5538f = bVar4;
    }

    public boolean a(Cmd cmd) {
        return this.f5539a.contains(cmd);
    }

    public b b(List<Cmd> list) {
        this.f5539a = list;
        return this;
    }
}
