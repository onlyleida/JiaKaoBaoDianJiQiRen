package cn.mucang.android.jiakaoyi.teachingk2.v0.b;

import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.v0.f.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class b extends a {
    public b() {
        super(FirstPracticeStep.DaoKu_Left);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.v0.b.a
    protected cn.mucang.android.jiakaoyi.teachingk2.v0.a<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.jiakaoyi.teachingk2.v0.f.c(this.f8684d, this.f8685e, this.f8687g));
        SubStep subStep = SubStep.Step3;
        f fVar = new f(subStep);
        SubStep subStep2 = SubStep.Step4;
        return new cn.mucang.android.jiakaoyi.teachingk2.v0.a<>(fVar, new cn.mucang.android.jiakaoyi.teachingk2.v0.f.b(subStep2), arrayList, new cn.mucang.android.jiakaoyi.teachingk2.v0.f.a(), subStep, subStep2, this.f8686f);
    }
}
