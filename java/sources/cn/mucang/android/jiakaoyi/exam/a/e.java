package cn.mucang.android.jiakaoyi.exam.a;

import android.location.Location;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static boolean a(Location location, List<Location> list, float f2) {
        List<Location> arrayList;
        List<Location> listSubList;
        if (list.size() > 2) {
            arrayList = list.subList(0, (list.size() / 3) + 1);
            listSubList = list.subList((list.size() * 2) / 3, list.size());
        } else {
            if (list.size() <= 1) {
                return false;
            }
            arrayList = new ArrayList<>();
            arrayList.add(list.get(0));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(list.get(1));
            listSubList = arrayList2;
        }
        Location locationB = cn.mucang.android.jiakaoyi.engine.k.b.b(arrayList);
        Location locationB2 = cn.mucang.android.jiakaoyi.engine.k.b.b(listSubList);
        double dA = cn.mucang.android.jiakaoyi.engine.k.b.a(locationB2.getLongitude() - locationB.getLongitude(), locationB2.getLatitude() - locationB.getLatitude(), location.getLongitude() - locationB2.getLongitude(), location.getLatitude() - locationB2.getLatitude());
        return ((double) location.distanceTo(locationB2)) * Math.sqrt((1.0d - (dA * dA)) + 1.0E-100d) > ((double) f2);
    }
}
