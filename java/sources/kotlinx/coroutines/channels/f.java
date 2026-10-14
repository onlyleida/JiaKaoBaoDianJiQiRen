package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes6.dex */
public interface f<E> extends t<E>, p<E> {
    public static final a S = a.b;

    public static final class a {
        static final /* synthetic */ a b = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int f15883a = z.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private a() {
        }

        public final int a() {
            return f15883a;
        }
    }
}
