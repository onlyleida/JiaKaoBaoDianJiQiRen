package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8099a = false;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if (this.f8099a) {
            return;
        }
        if (eVar.d().l) {
            this.f8099a = true;
            teachTypeData.triggerState = (byte) 1;
            c(teachTypeData);
        } else if (pos.x - traceItemModel.x > 400.0d) {
            b(k0.a(R.string.teachingk2_no_honk));
            this.f8099a = true;
            teachTypeData.triggerState = (byte) 2;
            c(teachTypeData);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        a.a(this, teachTypeData);
    }
}
