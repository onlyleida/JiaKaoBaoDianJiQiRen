package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6583a;
    public final int b;
    public final Step c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<TeachModel> f6585e = new ArrayList();

    public c(String str, int i, Step step) {
        this.f6583a = str;
        this.b = i;
        this.c = step;
    }

    public boolean a(TeachModel teachModel) {
        if (teachModel.subStep != this.b || teachModel.step != this.c.type) {
            return false;
        }
        if (teachModel.isTraceTeach()) {
            this.f6585e.add(0, teachModel);
            return true;
        }
        this.f6585e.add(teachModel);
        return true;
    }

    public List<Object> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        if (this.f6584d) {
            arrayList.addAll(this.f6585e);
        }
        return arrayList;
    }

    public boolean c(TeachModel teachModel) {
        if (teachModel.subStep == this.b && teachModel.step == this.c.type && this.f6585e.contains(teachModel)) {
            return this.f6585e.remove(teachModel);
        }
        return false;
    }
}
