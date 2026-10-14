package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModelWrap;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d implements ResourceManager.c {
    private List<AreaModel> b(File file) throws Throwable {
        String strB = g.b(file);
        a aVar = n.b().f7599a;
        JSONArray array = JSON.parseArray(strB);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < array.size(); i++) {
            PolygonModel polygon = ((PolygonModelWrap) array.getObject(i, PolygonModelWrap.class)).toPolygon();
            ArrayList arrayList2 = new ArrayList();
            Iterator<Gps> it = polygon.gpsData.iterator();
            while (it.hasNext()) {
                arrayList2.add(aVar.a(it.next()));
            }
            AreaModel areaModel = new AreaModel();
            areaModel.pointList = arrayList2;
            arrayList.add(areaModel);
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        n.b().k(b(file));
    }
}
