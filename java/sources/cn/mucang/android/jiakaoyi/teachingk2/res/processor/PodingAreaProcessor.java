package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
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
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.o.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/processor/PodingAreaProcessor;", "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$ResourceProcessor;", "()V", "process", "", "file", "Ljava/io/File;", "examSiteId", "", "transform", "", "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PodingAreaProcessor implements ResourceManager.c {
    private final List<AreaModel> b(File file) throws Throwable {
        String strB = g.b(file);
        t.a("PodingAreaProcessor", strB);
        a aVar = n.b().f7599a;
        JSONArray array = JSON.parseArray(strB);
        ArrayList arrayList = new ArrayList();
        int size = array.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                PolygonModel polygon = ((PolygonModelWrap) array.getObject(i, PolygonModelWrap.class)).toPolygon();
                ArrayList arrayList2 = new ArrayList();
                Iterator<Gps> it = polygon.gpsData.iterator();
                while (it.hasNext()) {
                    Pos posA = aVar.a(it.next());
                    r.d(posA, "converter.gpsToGauss(g)");
                    arrayList2.add(posA);
                }
                AreaModel areaModel = new AreaModel();
                areaModel.pointList = arrayList2;
                arrayList.add(areaModel);
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        r.e(file, "file");
        n.b().o(b(file));
    }
}
