package cn.mucang.android.jiakaoyi.hpmap.view.t;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<Long, Boolean> f3773a = new HashMap<>();
    private final HashMap<Long, Boolean> b = new HashMap<>();

    public void a() {
        this.f3773a.clear();
        this.b.clear();
    }

    public boolean b(Pos pos, Pos pos2, c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(cVar, pos, pos2);
    }

    public boolean c(Pos pos, c cVar) {
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar, pos);
    }

    public boolean d(List<Pos> list, c cVar) {
        if (g.b(list)) {
            return false;
        }
        if (list.size() == 1) {
            return c(list.get(0), cVar);
        }
        if (list.size() == 2) {
            return b(list.get(0), list.get(1), cVar);
        }
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            i++;
            if (b(pos, list.get(i), cVar)) {
                return true;
            }
        }
        return b(list.get(0), list.get(list.size() - 1), cVar);
    }
}
