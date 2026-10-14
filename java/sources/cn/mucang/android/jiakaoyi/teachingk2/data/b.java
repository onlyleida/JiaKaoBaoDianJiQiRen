package cn.mucang.android.jiakaoyi.teachingk2.data;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static List<TraceItemModel> a(List<TraceItemModel> list) {
        if (g.b(list)) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[list.size()];
        double[] dArr3 = new double[list.size()];
        double[] dArr4 = new double[list.size()];
        double[] dArr5 = new double[list.size()];
        double[] dArr6 = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            dArr[i] = list.get(i).x;
            dArr3[i] = list.get(i).y;
            dArr5[i] = list.get(i).z;
        }
        cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.b(dArr, dArr2);
        cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.b(dArr3, dArr4);
        cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.b(dArr5, dArr6);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(list.get(i2).copy().set(new Pos(dArr2[i2], dArr4[i2], dArr6[i2])));
        }
        cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.f(list, arrayList);
        cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d.d(list, arrayList);
        return arrayList;
    }
}
