package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f15172a;
    private final List<n> b;

    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public h(n nVar, List<n> parametersInfo) {
        r.e(parametersInfo, "parametersInfo");
        this.f15172a = nVar;
        this.b = parametersInfo;
    }

    public final List<n> a() {
        return this.b;
    }

    public final n b() {
        return this.f15172a;
    }

    public /* synthetic */ h(n nVar, List list, int i, kotlin.jvm.internal.o oVar) {
        this((i & 1) != 0 ? null : nVar, (i & 2) != 0 ? u.j() : list);
    }
}
