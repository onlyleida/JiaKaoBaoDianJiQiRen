package cn.mucang.android.jiakaoyi.teachingk2.elements;

import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7020a;
    public final Set<String> b;
    public final List<TeachModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Integer, List<TeachModel>> f7021d = new HashMap();

    public f0(int i, Set<String> set, List<TeachModel> list) {
        this.f7020a = i;
        this.b = set;
        this.c = list;
    }
}
