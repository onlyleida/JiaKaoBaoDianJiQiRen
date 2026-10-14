package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class e implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f8103a = 0;
    private Line b = null;
    private int c = 0;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        Pos pos3;
        if (this.b == null) {
            if (bVar instanceof c) {
                this.b = ((c) bVar).r;
            } else if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
                this.b = ((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar).q;
            } else if (bVar instanceof o) {
                this.b = ((o) bVar).n;
            }
            Line line = this.b;
            if (line != null && (pos3 = teachTypeData.pos) != null) {
                this.c = (int) a.k(pos3, line.start, line.end);
            }
        }
        if (this.c <= 0) {
            return;
        }
        Pos pos4 = eVar.c().rearAxlePoint;
        Line line2 = this.b;
        int iK = (int) a.k(pos4, line2.start, line2.end);
        Pos pos5 = eVar.c().rearAxlePoint;
        Line line3 = this.b;
        int i = (Math.abs(Math.max(iK, (int) a.k(pos5, line3.start, line3.end)) - this.c) >= teachTypeData.data1 || cn.mucang.android.jiakaoyi.hpmap.a.b.a.b(eVar.c(), this.b)) ? 2 : 1;
        if (i != this.f8103a) {
            teachTypeData.triggerState = i == 1 ? (byte) 1 : (byte) 2;
            c(teachTypeData);
        }
        this.f8103a = i;
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
