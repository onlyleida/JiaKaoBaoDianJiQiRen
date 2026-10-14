package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c;

import cn.mucang.android.jiakaoyi.hpmap.a.a.b;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import java.util.List;

/* JADX INFO: compiled from: TraceCorrectTrigger.java */
/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c {
    public static boolean a(d _this) {
        return d.g().f();
    }

    public static void b(d _this, e eVar, TraceItemModel traceItemModel, List list, Pos pos, Pos pos2, TeachTypeData teachTypeData, b bVar, TeachModel teachModel, List list2) {
        if (_this.enable()) {
            _this.d(eVar, traceItemModel, bVar, teachModel, list2);
        }
    }
}
