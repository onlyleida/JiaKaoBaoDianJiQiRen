package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8096a = false;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if (this.f8096a) {
            return;
        }
        int i = eVar.d().m.gear;
        if (traceItemModel.distanceSquare(pos) < 10000.0d) {
            if (i == teachTypeData.data1) {
                this.f8096a = true;
                teachTypeData.triggerState = (byte) 1;
                c(teachTypeData);
            } else {
                if (i == teachTypeData.data2 || i == Gear.GearN.gear || i == Gear.Invalid.gear) {
                    return;
                }
                b(k0.a(R.string.teachingk2_gear_wrong));
                this.f8096a = true;
                teachTypeData.triggerState = (byte) 2;
                c(teachTypeData);
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
    }
}
