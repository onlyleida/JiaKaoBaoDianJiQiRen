package cn.mucang.android.jiakaoyi.mapcollect.collect.z0;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public interface a<T extends SourceData<T>, C extends u0<T>> {
    void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, C c, T t);

    String[] b();

    void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, C c, Gps gps);
}
