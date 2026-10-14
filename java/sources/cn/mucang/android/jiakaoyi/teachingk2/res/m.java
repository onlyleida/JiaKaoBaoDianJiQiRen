package cn.mucang.android.jiakaoyi.teachingk2.res;

import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class m {
    public static List<cn.mucang.android.jiakaoyi.teachingk2.res.model.b> a(List<PolygonModel> list) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PolygonModel> it = list.iterator();
        while (it.hasNext()) {
            cn.mucang.android.jiakaoyi.teachingk2.res.model.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.res.model.b(it.next(), n.b().f7599a);
            if (bVar.d()) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }
}
