package cn.mucang.android.jky.usbcamera.detectside;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LinesProcessor {

    public enum SideLine {
        Empty,
        SolidLine,
        DottedLine
    }

    static {
        new ArrayList(200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(float f2, float f3) {
        return Float.valueOf(f2).compareTo(Float.valueOf(f3));
    }

    public static List<q> b(List<q> list) {
        ArrayList arrayList = null;
        if (list != null && list.size() >= 1) {
            ArrayList arrayList2 = new ArrayList(list.size());
            arrayList2.addAll(list);
            int size = arrayList2.size();
            double dCos = Math.cos(Math.toRadians(45.0d));
            for (int i = size - 1; i >= 0; i--) {
                if (Math.abs(Math.cos(((q) arrayList2.get(i)).f8888g)) > dCos) {
                    arrayList2.remove(i);
                }
            }
            if (arrayList2.size() < 1) {
                return null;
            }
            Collections.sort(arrayList2, new Comparator() { // from class: cn.mucang.android.jky.usbcamera.detectside.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return LinesProcessor.a(((q) obj).j, ((q) obj2).j);
                }
            });
            double dCos2 = Math.cos(Math.toRadians(5.0d));
            ArrayList arrayList3 = new ArrayList();
            while (arrayList2.size() > 0) {
                ArrayList arrayList4 = new ArrayList();
                q qVar = (q) arrayList2.remove(0);
                arrayList4.add(qVar);
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    q qVar2 = (q) arrayList2.get(size2);
                    if (Math.abs(q.e(qVar.j, qVar2.j)) >= dCos2) {
                        arrayList4.add(qVar2);
                        arrayList2.remove(size2);
                    }
                }
                if (arrayList4.size() > 0) {
                    Collections.sort(arrayList4, new Comparator() { // from class: cn.mucang.android.jky.usbcamera.detectside.b
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return LinesProcessor.d((q) obj, (q) obj2);
                        }
                    });
                }
                if (arrayList4.size() > 0) {
                    arrayList3.add(arrayList4);
                }
            }
            if (arrayList3.size() <= 0) {
                return null;
            }
            arrayList = new ArrayList();
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList.addAll((List) it.next());
            }
            if (arrayList.size() == 2) {
                q qVar3 = (q) arrayList.get(0);
                q qVar4 = (q) arrayList.get(1);
                if (Math.abs(qVar3.k - qVar4.k) > 45.0d) {
                    if (qVar3.k < qVar4.k) {
                        arrayList.remove(0);
                    } else {
                        arrayList.remove(1);
                    }
                }
            }
            if (arrayList.size() == 1) {
                float fB = r.f8891f;
                if (fB <= BitmapDescriptorFactory.HUE_RED) {
                    fB = p.b(15.0f);
                }
                q qVar5 = (q) arrayList.get(0);
                if (qVar5.q < fB || qVar5.p < fB) {
                    float f2 = qVar5.f8888g;
                    float f3 = qVar5.f8889h;
                    arrayList.add(new q(f2, f3 < BitmapDescriptorFactory.HUE_RED ? f3 - fB : f3 + fB));
                }
            }
            Collections.sort(arrayList, new Comparator() { // from class: cn.mucang.android.jky.usbcamera.detectside.d
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return LinesProcessor.e((q) obj, (q) obj2);
                }
            });
        }
        return arrayList;
    }

    static /* synthetic */ int d(q qVar, q qVar2) {
        return -a(qVar.k, qVar2.k);
    }

    static /* synthetic */ int e(q qVar, q qVar2) {
        return -a(qVar.k, qVar2.k);
    }
}
