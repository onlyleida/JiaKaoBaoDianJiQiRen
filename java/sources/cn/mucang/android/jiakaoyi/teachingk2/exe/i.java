package cn.mucang.android.jiakaoyi.teachingk2.exe;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<cn.mucang.android.jiakaoyi.hpmap.a.a.b, List<Pos>> f7116a = new HashMap();

    i() {
    }

    public void a(LineTipModel lineTipModel, SparseArray<Pos> sparseArray, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        List<Pos> arrayList = this.f7116a.get(bVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            boolean z = sparseArray.get(4).vectorTo(sparseArray.get(3)).cross(sparseArray.get(3).vectorTo(sparseArray.get(6))) > 0.0d;
            Pos posC = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar).c(new Pos(lineTipModel.center));
            double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) ((z ? 1 : -1) * lineTipModel.degree)) + Math.toDegrees(sparseArray.get(4).angleTo(sparseArray.get(3)))));
            Pos posTranslate = new Pos(posC).translate(Math.cos(Math.toRadians(dC)) * 100.0d, Math.sin(Math.toRadians(dC)) * 100.0d);
            arrayList.add(posC);
            arrayList.add(posTranslate);
            this.f7116a.put(bVar, arrayList);
        }
        lineTipModel.lines = arrayList;
    }
}
