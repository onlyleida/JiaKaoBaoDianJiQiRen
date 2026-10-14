package com.loc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cs {
    private dw b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<dx> f12705a = new ArrayList();
    private ArrayList<dx> c = new ArrayList<>();

    private static List<dx> a(List<dx> list) {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            dx dxVar = list.get(i);
            map.put(Integer.valueOf(dxVar.c), dxVar);
        }
        arrayList.addAll(map.values());
        return arrayList;
    }

    private boolean a(dw dwVar) {
        float f2 = dwVar.f12740g;
        float f3 = 10.0f;
        if (f2 > 10.0f) {
            f3 = 200.0f;
        } else if (f2 > 2.0f) {
            f3 = 50.0f;
        }
        return dwVar.a(this.b) > ((double) f3);
    }

    private static boolean a(dw dwVar, long j, long j2) {
        return j > 0 && j2 - j < ((long) ((dwVar.f12740g > 10.0f ? 1 : (dwVar.f12740g == 10.0f ? 0 : -1)) >= 0 ? 2000 : 3500));
    }

    private static boolean a(List<dx> list, List<dx> list2) {
        if (list != null && list2 != null) {
            int size = list.size();
            int size2 = list2.size();
            int i = size + size2;
            if (size <= size2) {
                list2 = list;
                list = list2;
            }
            HashMap map = new HashMap(list.size());
            Iterator<dx> it = list.iterator();
            while (it.hasNext()) {
                map.put(Long.valueOf(it.next().f12742a), 1);
            }
            Iterator<dx> it2 = list2.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                if (((Integer) map.get(Long.valueOf(it2.next().f12742a))) != null) {
                    i2++;
                }
            }
            if (((double) i2) * 2.0d >= ((double) i) * 0.5d) {
                return true;
            }
        }
        return false;
    }

    private List<dx> b(List<dx> list) {
        Collections.sort(list, new Comparator<dx>() { // from class: com.loc.cs.1
            private static int a(dx dxVar, dx dxVar2) {
                return dxVar2.c - dxVar.c;
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(dx dxVar, dx dxVar2) {
                return a(dxVar, dxVar2);
            }
        });
        return list;
    }

    private void b(List<dx> list, List<dx> list2) {
        list.clear();
        if (list2 != null) {
            List<dx> listB = b(a(list2));
            int size = listB.size();
            if (size > 40) {
                size = 40;
            }
            for (int i = 0; i < size; i++) {
                list.add(listB.get(i));
            }
        }
    }

    private boolean b(dw dwVar, List<dx> list, boolean z, long j, long j2) {
        if (!z || !a(dwVar, j, j2) || list == null || list.size() <= 0) {
            return false;
        }
        if (this.b == null) {
            return true;
        }
        boolean zA = a(dwVar);
        return !zA ? !a(list, this.f12705a) : zA;
    }

    final List<dx> a(dw dwVar, List<dx> list, boolean z, long j, long j2) {
        if (!b(dwVar, list, z, j, j2)) {
            return null;
        }
        b(this.c, list);
        this.f12705a.clear();
        this.f12705a.addAll(list);
        this.b = dwVar;
        return this.c;
    }
}
