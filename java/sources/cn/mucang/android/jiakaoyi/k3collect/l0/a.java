package cn.mucang.android.jiakaoyi.k3collect.l0;

import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.signal.i.b;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static List<Gps> a(List<Gps> list, b bVar) {
        List<cn.mucang.android.jiakaoyi.signal.utils.j.b> listB = b(list, bVar);
        cn.mucang.android.jiakaoyi.signal.utils.j.a.c(listB, Double.valueOf(1.5d));
        ArrayList arrayList = new ArrayList();
        for (cn.mucang.android.jiakaoyi.signal.utils.j.b bVar2 : listB) {
            if (bVar2.f5838a) {
                arrayList.add(bVar2.b);
            }
        }
        return arrayList;
    }

    public static List<cn.mucang.android.jiakaoyi.signal.utils.j.b> b(List<Gps> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (Gps gps : list) {
            arrayList.add(new cn.mucang.android.jiakaoyi.signal.utils.j.b(gps, bVar.a(gps)));
        }
        return arrayList;
    }

    public static List<Gps> c(List<Gps> list, b bVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<Gps> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(bVar.a(it.next()));
        }
        List<Pos> listC = d.c(arrayList, 35.0d);
        ArrayList arrayList2 = new ArrayList();
        Iterator<Pos> it2 = listC.iterator();
        while (it2.hasNext()) {
            arrayList2.add(bVar.b(it2.next()));
        }
        return arrayList2;
    }
}
