package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.hpmap.a.a.j.b;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.KeMuAreaSwitcher;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.ExamStepListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper.d;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class w0 implements a0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f8669a;
    public final cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.a0 b = new cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.a0();

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        this.f8669a = new d();
        ExamStepListModel examStepListModel = new ExamStepListModel();
        ArrayList arrayList = new ArrayList();
        for (Step step : n.b().c.b) {
            ExamStepListModel.ExamStepItemModel examStepItemModel = new ExamStepListModel.ExamStepItemModel();
            examStepItemModel.stepName = step.getStepName();
            examStepItemModel.stepId = step.type;
            arrayList.add(examStepItemModel);
        }
        examStepListModel.itemList = arrayList;
        cn.mucang.android.jiakaoyi.unity.c.d.e(examStepListModel);
        this.b.i();
        this.f8669a.e(null);
        RobotTips.f7184a.r(1);
        w.r.setTraceType(1);
        w.r.posMapCode = ExamSiteUtil.i(ExamSiteUtil.e(0L), KeMu.K2);
        KeMuAreaSwitcher.d(KeMu.K3);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        b.d();
        this.b.h();
        this.f8669a.f();
        this.f8669a = null;
        KeMuAreaSwitcher.e();
    }
}
