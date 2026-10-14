package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModelWrap;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.m;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class j implements ResourceManager.c {
    private List<PolygonModel> b(File file) throws Throwable {
        ArrayList arrayList = new ArrayList();
        JSONArray array = JSON.parseArray(g.b(file));
        if (array == null) {
            return arrayList;
        }
        for (int i = 0; i < array.size(); i++) {
            arrayList.add(((PolygonModelWrap) array.getObject(i, PolygonModelWrap.class)).toPolygon());
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        n.b().f7603g = m.a(b(file));
    }
}
