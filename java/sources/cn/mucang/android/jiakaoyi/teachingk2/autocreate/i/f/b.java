package cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<TraceItemModel> f6203a;
    public List<a> b;
    public final Step c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6205e;

    public b(Step step, int i, int i2) {
        this.c = step;
        this.f6204d = i;
        this.f6205e = i2;
    }

    public static Pos a(Pos pos, Pos pos2, boolean z) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos, pos2, 50.0d).rotate(pos, 0.0d, z ? -1.0d : 1.0d);
    }

    public static List<TraceItemModel> b(Pos pos, Pos pos2, double d2) {
        int iDistanceTo = ((int) (pos.distanceTo(pos2) / d2)) + 1;
        double dDistanceTo = pos.distanceTo(pos2) / ((double) iDistanceTo);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i <= iDistanceTo; i++) {
            arrayList.add(new TraceItemModel().set(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos, pos2, ((double) i) * dDistanceTo)));
        }
        return arrayList;
    }

    public static int d(double d2) {
        return d2 >= 0.0d ? 1 : -1;
    }

    public List<TeachModel> c(StepTeachModelActivity.b bVar) {
        ArrayList arrayList = new ArrayList();
        if (g.d(this.f6203a)) {
            TeachModel teachModel = new TeachModel();
            teachModel.parkingSpaceGroup = bVar.getC();
            teachModel.step = bVar.getF6763a().type;
            teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
            teachModel.programmeId = TeachModelEditor.f6857a.f();
            teachModel.subStep = this.f6204d;
            teachModel.stepDirection = bVar.getB();
            teachModel.variableList = new ArrayList();
            TraceVariable traceVariable = new TraceVariable(bVar.getF6763a().type, this.f6204d);
            teachModel.variableList.add(traceVariable);
            ArrayList arrayList2 = new ArrayList();
            teachModel.data = arrayList2;
            arrayList2.add(new VoiceModel("采集标准轨迹"));
            traceVariable.traces = this.f6203a;
            arrayList.add(teachModel);
        }
        if (g.d(this.b)) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().b(bVar.getC(), this.c, this.f6204d, this.f6205e));
            }
        }
        return arrayList;
    }
}
