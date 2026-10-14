package cn.mucang.android.jiakaoyi.signal.gearsensor.k;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e {
    public static List<Pos> a(List<Pos> list) {
        if (list == null || list.size() < 3) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.signal.gearsensor.k.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Double.compare(((Pos) obj).y, ((Pos) obj2).y);
            }
        });
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        linkedList.push(arrayList.get(0));
        linkedList.push(arrayList.get(1));
        linkedList2.push(arrayList.get(arrayList.size() - 1));
        linkedList2.push(arrayList.get(arrayList.size() - 2));
        for (int i = 2; i < arrayList.size(); i++) {
            for (int size = linkedList.size(); size >= 2 && !b((Pos) linkedList.get(1), (Pos) linkedList.get(0), (Pos) arrayList.get(i)); size--) {
                linkedList.pop();
            }
            linkedList.push(arrayList.get(i));
        }
        for (int size2 = arrayList.size() - 3; size2 >= 0; size2--) {
            for (int size3 = linkedList2.size(); size3 >= 2 && !b((Pos) linkedList2.get(1), (Pos) linkedList2.get(0), (Pos) arrayList.get(size2)); size3--) {
                linkedList2.pop();
            }
            linkedList2.push(arrayList.get(size2));
        }
        for (int size4 = linkedList.size() - 1; size4 > 0; size4--) {
            linkedList2.push(linkedList.get(size4));
        }
        return linkedList2;
    }

    public static boolean b(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos.x;
        double d4 = pos2.y;
        double d5 = pos.y;
        return ((d2 - d3) * (pos3.y - d5)) - ((pos3.x - d3) * (d4 - d5)) < 0.0d;
    }
}
