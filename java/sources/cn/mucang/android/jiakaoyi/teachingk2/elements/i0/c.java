package cn.mucang.android.jiakaoyi.teachingk2.elements.i0;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public static List<Wheel> a(List<Integer> list) {
        if (g.b(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            Wheel wheel = Wheel.parse(it.next().intValue());
            if (wheel != Wheel.None) {
                arrayList.add(wheel);
            }
        }
        return arrayList;
    }
}
