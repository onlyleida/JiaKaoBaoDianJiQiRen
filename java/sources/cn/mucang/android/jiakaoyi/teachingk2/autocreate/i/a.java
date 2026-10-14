package cn.mucang.android.jiakaoyi.teachingk2.autocreate.i;

import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.StepTeachModelActivity;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b f6193a;
    public cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b b;
    public cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b c;

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d
    public List<TeachModel> a(StepTeachModelActivity.b bVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f6193a.c(bVar));
        arrayList.addAll(this.b.c(bVar));
        arrayList.addAll(this.c.c(bVar));
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.d
    public List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b> b() {
        return Arrays.asList(this.f6193a, this.b, this.c);
    }
}
