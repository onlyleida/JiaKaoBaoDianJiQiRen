package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;

/* JADX INFO: loaded from: classes6.dex */
public interface f {

    public static final class a implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15736a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.f
        public boolean a(k what, k from) {
            r.e(what, "what");
            r.e(from, "from");
            return true;
        }
    }

    boolean a(k kVar, k kVar2);
}
