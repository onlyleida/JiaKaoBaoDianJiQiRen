package cn.mucang.android.jiakaoyi.mapcollect.collect.b1;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface c {
    List<cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a<?>> a(String str);

    Step b(int i);

    int c(Step step);

    int d(SourceData sourceData);

    Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> e(String str, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar);

    t0 f(int i, PosCollectActivity posCollectActivity);

    String[] g();
}
