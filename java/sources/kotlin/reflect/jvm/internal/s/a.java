package kotlin.reflect.jvm.internal.s;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.u;
import kotlin.reflect.jvm.internal.impl.load.java.r;
import kotlin.reflect.jvm.internal.impl.name.b;
import kotlin.reflect.jvm.internal.impl.name.c;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15772a = new a();
    private static final Set<b> b;

    static {
        List listM = u.m(r.f15137a, r.f15142h, r.i, r.c, r.f15138d, r.f15140f);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listM.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(b.m((c) it.next()));
        }
        b = linkedHashSet;
    }

    private a() {
    }

    public final Set<b> a() {
        return b;
    }
}
