package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.o.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/processor/AreaProcessor;", "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$ResourceProcessor;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V", "process", "", "file", "Ljava/io/File;", "examSiteId", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AreaProcessor implements ResourceManager.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeMu f7605a;

    public AreaProcessor(KeMu keMu) {
        r.e(keMu, "keMu");
        this.f7605a = keMu;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        r.e(file, "file");
        List<AreaModel> list = JSON.parseArray(g.b(file), AreaModel.class);
        a aVar = n.b().f7599a;
        r.d(list, "list");
        for (AreaModel areaModel : list) {
            areaModel.pointList = new ArrayList();
            List<Gps> list2 = areaModel.points;
            r.d(list2, "model.points");
            List<Pos> list3 = areaModel.pointList;
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                list3.add(aVar.a((Gps) it.next()));
            }
        }
        Map<KeMu, List<AreaModel>> map = n.b().m;
        r.d(map, "get().areaMap");
        map.put(this.f7605a, list);
    }
}
