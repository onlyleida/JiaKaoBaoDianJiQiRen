package cn.mucang.android.jiakaoyi.hpmap.render.moto;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.l;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MotoChangDiRenderModel extends K2RenderModel {
    public List<List<Pos>> dashLines;
    public List<List<Pos>> solidLines;

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    public void createMapLayers(List<k> list, MapView mapView, boolean z, boolean z2) {
        int i = z ? -16711936 : -1;
        if (!g.b(this.solidLines)) {
            Iterator<List<Pos>> it = this.solidLines.iterator();
            while (it.hasNext()) {
                list.add(new l(mapView, new ArrayList(it.next()), 15.0f, i));
            }
        }
        if (g.b(this.dashLines)) {
            return;
        }
        Iterator<List<Pos>> it2 = this.dashLines.iterator();
        while (it2.hasNext()) {
            l lVar = new l(mapView, new ArrayList(it2.next()), 15.0f, i);
            lVar.j(80.0f, 80.0f);
            list.add(lVar);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<List<Pos>> getFenceList() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected Pos getMapNamePos() {
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel
    protected List<Pos> getProjectBgList() {
        return null;
    }
}
