package cn.mucang.android.jiakaoyi.teachingk2.collect.render.data;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<b> f6588a = new ArrayList();
    public Map<String, Set<String>> b = new HashMap();

    private boolean i(TeachModel teachModel, b bVar) {
        return n0.g(teachModel.parkingSpaceGroup) ? teachModel.parkingSpaceGroup.equals(bVar.c) : n0.e(bVar.c);
    }

    public void a(b bVar) {
        this.f6588a.add(bVar);
    }

    public void b(TeachModel teachModel) {
        for (b bVar : this.f6588a) {
            if (bVar.b == teachModel.stepDirection && i(teachModel, bVar) && bVar.b(teachModel)) {
                return;
            }
        }
    }

    public void c(Step step, int i) {
        Set<String> set = this.b.get(step.type + "" + i);
        if (set == null) {
            return;
        }
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            b bVar = new b(step, i, it.next());
            bVar.c(step);
            a(bVar);
        }
    }

    public boolean d(int i, int i2, String str) {
        Set<String> set = this.b.get(i + "" + i2);
        if (set == null) {
            return true;
        }
        return !set.contains(str);
    }

    public void e() {
        this.f6588a.clear();
    }

    public List<Object> f() {
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = this.f6588a.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().e());
        }
        return arrayList;
    }

    public void g(List<TeachModel> list) {
        this.b.clear();
        for (TeachModel teachModel : list) {
            if (!n0.e(teachModel.parkingSpaceGroup)) {
                Set<String> hashSet = this.b.get(teachModel.step + "" + teachModel.stepDirection);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    this.b.put(teachModel.step + "" + teachModel.stepDirection, hashSet);
                }
                hashSet.add(teachModel.parkingSpaceGroup);
            }
        }
    }

    public List<TeachModel> h() {
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = this.f6588a.iterator();
        while (it.hasNext()) {
            Iterator<c> it2 = it.next().f6581d.iterator();
            while (it2.hasNext()) {
                arrayList.addAll(it2.next().f6585e);
            }
        }
        return arrayList;
    }

    public void j(TeachModel teachModel) {
        Iterator<b> it = this.f6588a.iterator();
        while (it.hasNext() && !it.next().g(teachModel)) {
        }
    }

    public void k(TeachModel teachModel) {
        Iterator<b> it = this.f6588a.iterator();
        while (it.hasNext()) {
            for (c cVar : it.next().f6581d) {
                for (int i = 0; i < cVar.f6585e.size(); i++) {
                    if (cVar.f6585e.get(i).teachModelId.equals(teachModel.teachModelId)) {
                        cVar.f6585e.set(i, teachModel);
                        return;
                    }
                }
            }
        }
    }
}
