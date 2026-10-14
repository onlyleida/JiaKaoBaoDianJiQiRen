package kotlinx.coroutines.internal;

import java.util.Iterator;
import java.util.List;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.d2;

/* JADX INFO: loaded from: classes6.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f16036a;
    public static final d2 b;

    static {
        r rVar = new r();
        f16036a = z.e("kotlinx.coroutines.fast.service.loader", true);
        b = rVar.a();
    }

    private r() {
    }

    private final d2 a() {
        Object next;
        d2 d2VarD;
        try {
            List<MainDispatcherFactory> listC = f16036a ? i.f16021a.c() : SequencesKt___SequencesKt.A(SequencesKt__SequencesKt.c(defpackage.a.b()));
            Iterator<T> it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((MainDispatcherFactory) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) next;
            return (mainDispatcherFactory == null || (d2VarD = s.d(mainDispatcherFactory, listC)) == null) ? s.b(null, null, 3, null) : d2VarD;
        } catch (Throwable th) {
            return s.b(th, null, 2, null);
        }
    }
}
