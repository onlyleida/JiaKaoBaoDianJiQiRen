package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Step f6580a;
    public final int b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<c> f6581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6582e;

    public b(Step step, int i) {
        this(step, i, "");
    }

    private boolean f() {
        Step step = this.f6580a;
        if (step == Step.K2_DaoCheRuKu && this.b == 1) {
            return true;
        }
        if (step == Step.B2_ZhiJiaoZhuanWan && this.b == 2) {
            return true;
        }
        return step == Step.K2_SQuXian && this.b == 1;
    }

    public void a(c cVar) {
        this.f6581d.add(cVar);
    }

    public boolean b(TeachModel teachModel) {
        if (teachModel.step != this.f6580a.type) {
            return false;
        }
        Iterator<c> it = this.f6581d.iterator();
        while (it.hasNext()) {
            if (it.next().a(teachModel)) {
                return true;
            }
        }
        return false;
    }

    public void c(Step step) {
        d(step, false);
    }

    public void d(Step step, boolean z) {
        Step step2 = Step.K2_DaoCheRuKu;
        if (step != step2) {
            Step step3 = Step.K2_CeFangTingChe;
            if (step != step3) {
                a(new c(step.zhStepName, 1, step));
                return;
            }
            a(new c("驶入项目", SubStep.Step1.ordinal(), step3));
            a(new c("倒入侧方", SubStep.Step2.ordinal(), step3));
            a(new c("驶出侧方", SubStep.Step3.ordinal(), step3));
            return;
        }
        c cVar = new c("驶入项目", SubStep.Step1.ordinal(), step2);
        cVar.f6584d = z;
        a(cVar);
        if (f()) {
            a(new c("左倒库", SubStep.Step2.ordinal(), step2));
            a(new c("右出库", SubStep.Step3.ordinal(), step2));
            a(new c("右倒库", SubStep.Step4.ordinal(), step2));
            a(new c("左出库", SubStep.Step5.ordinal(), step2));
            return;
        }
        a(new c("右倒库", SubStep.Step2.ordinal(), step2));
        a(new c("左出库", SubStep.Step3.ordinal(), step2));
        a(new c("左倒库", SubStep.Step4.ordinal(), step2));
        a(new c("右出库", SubStep.Step5.ordinal(), step2));
    }

    public List<Object> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        if (this.f6582e) {
            Iterator<c> it = this.f6581d.iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().b());
            }
        }
        return arrayList;
    }

    public boolean g(TeachModel teachModel) {
        if (teachModel.step != this.f6580a.type) {
            return false;
        }
        Iterator<c> it = this.f6581d.iterator();
        while (it.hasNext()) {
            if (it.next().c(teachModel)) {
                return true;
            }
        }
        return false;
    }

    public b(Step step, int i, String str) {
        this.f6580a = step;
        this.b = i;
        this.c = str;
        this.f6582e = false;
        this.f6581d = new ArrayList();
    }
}
