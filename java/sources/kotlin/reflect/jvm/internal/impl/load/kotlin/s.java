package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface s {

    public static final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15237a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.s
        public List<String> a(String packageFqName) {
            kotlin.jvm.internal.r.e(packageFqName, "packageFqName");
            return kotlin.collections.u.j();
        }
    }

    List<String> a(String str);
}
