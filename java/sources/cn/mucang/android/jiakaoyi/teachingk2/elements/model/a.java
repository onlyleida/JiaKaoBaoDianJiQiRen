package cn.mucang.android.jiakaoyi.teachingk2.elements.model;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.j;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static b a(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        b bVarG = bVar.g();
        if (bVarG != null) {
            return bVarG;
        }
        throw new RuntimeException("没有相应的坐标系");
    }

    public static b b(j jVar) {
        Pos posMeanWith = new Pos(jVar.i.get(0)).meanWith(jVar.j.get(0));
        List<Pos> list = jVar.i;
        Pos pos = new Pos(list.get(list.size() - 1));
        List<Pos> list2 = jVar.j;
        return new b(posMeanWith, pos.meanWith(list2.get(list2.size() - 1)), posMeanWith);
    }
}
