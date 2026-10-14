package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.mapcollect.collect.c1.d;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModelWrap;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.a;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements ResourceManager.c {
    private List<a> b(File file) throws Throwable {
        String strB = g.b(file);
        cn.mucang.android.jiakaoyi.signal.i.a aVar = n.b().f7599a;
        JSONArray array = JSON.parseArray(strB);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < array.size(); i++) {
            PolygonModelWrap polygonModelWrap = (PolygonModelWrap) array.getObject(i, PolygonModelWrap.class);
            PolygonModel polygon = polygonModelWrap.toPolygon();
            List arrayList2 = new ArrayList();
            Iterator<Gps> it = polygon.gpsData.iterator();
            while (it.hasNext()) {
                arrayList2.add(aVar.a(it.next()));
            }
            if (arrayList2.size() > 10) {
                arrayList2 = d.a(arrayList2, 40);
            }
            arrayList.add(new a(polygonModelWrap.id, polygonModelWrap.width, polygonModelWrap.fenceType, arrayList2));
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        n.b().j(b(file));
    }
}
