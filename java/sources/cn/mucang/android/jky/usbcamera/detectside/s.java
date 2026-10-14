package cn.mucang.android.jky.usbcamera.detectside;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList<List<q>> f8896a = new LinkedList<>();
    private List<Float> b = new ArrayList();
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8897d = 0;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f8898a;
        float b;

        private b() {
            this.f8898a = BitmapDescriptorFactory.HUE_RED;
            this.b = BitmapDescriptorFactory.HUE_RED;
        }
    }

    static /* synthetic */ int c(List list, List list2) {
        return list2.size() - list.size();
    }

    public synchronized void a() {
        this.f8897d++;
    }

    public synchronized float b() {
        if (this.c && this.f8896a.size() >= 8) {
            HashMap map = new HashMap();
            int size = this.f8896a.size();
            for (int i = 0; i < this.f8896a.size(); i++) {
                for (q qVar : this.f8896a.get((size - 1) - i)) {
                    String str = ((int) (qVar.i / 3.0f)) + "-" + ((int) (qVar.k / 3.0f));
                    List arrayList = (List) map.get(str);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        map.put(str, arrayList);
                    }
                    arrayList.add(qVar);
                }
            }
            Set<Map.Entry> setEntrySet = map.entrySet();
            ArrayList<List> arrayList2 = new ArrayList();
            for (Map.Entry entry : setEntrySet) {
                if (entry.getValue() != null && ((List) entry.getValue()).size() > 2) {
                    arrayList2.add(entry.getValue());
                }
            }
            if (arrayList2.size() == 0) {
                return 100.0f;
            }
            ArrayList<b> arrayList3 = new ArrayList();
            for (List<q> list : arrayList2) {
                b bVar = new b();
                for (q qVar2 : list) {
                    bVar.b += qVar2.q;
                    bVar.f8898a += qVar2.p;
                }
                bVar.f8898a /= list.size();
                bVar.b /= list.size();
                arrayList3.add(bVar);
            }
            float f2 = Float.MAX_VALUE;
            float f3 = Float.MAX_VALUE;
            for (b bVar2 : arrayList3) {
                float f4 = bVar2.f8898a;
                if (f4 < f3) {
                    f3 = f4;
                }
                float f5 = bVar2.b;
                if (f5 < f2) {
                    f2 = f5;
                }
            }
            this.b.add(Float.valueOf(Math.min(f2, f3)));
            if (this.b.size() <= 10) {
                return this.f8897d > 40 ? 100.0f : -1000.0f;
            }
            this.b.remove(0);
            HashMap map2 = new HashMap();
            Iterator<Float> it = this.b.iterator();
            while (it.hasNext()) {
                float fFloatValue = it.next().floatValue();
                String str2 = "key" + ((int) (fFloatValue / 2.0f));
                List arrayList4 = (List) map2.get(str2);
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList();
                    map2.put(str2, arrayList4);
                }
                arrayList4.add(Float.valueOf(fFloatValue));
            }
            ArrayList arrayList5 = new ArrayList(map2.values());
            Collections.sort(arrayList5, new Comparator() { // from class: cn.mucang.android.jky.usbcamera.detectside.e
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return s.c((List) obj, (List) obj2);
                }
            });
            List list2 = (List) arrayList5.get(0);
            float fFloatValue2 = BitmapDescriptorFactory.HUE_RED;
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                fFloatValue2 += ((Float) it2.next()).floatValue();
            }
            return (int) (fFloatValue2 / list2.size());
        }
        return -1000.0f;
    }

    public synchronized void d(List<q> list, long j) {
        this.c = true;
        if (cn.mucang.android.core.utils.g.d(list)) {
            this.f8896a.addFirst(list);
            if (this.f8896a.size() > 8) {
                this.f8896a.removeLast();
            }
        }
    }
}
