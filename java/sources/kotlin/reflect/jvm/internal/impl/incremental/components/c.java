package kotlin.reflect.jvm.internal.impl.incremental.components;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15003a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.c
        public boolean a() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.incremental.components.c
        public void b(String filePath, Position position, String scopeFqName, ScopeKind scopeKind, String name) {
            r.e(filePath, "filePath");
            r.e(position, "position");
            r.e(scopeFqName, "scopeFqName");
            r.e(scopeKind, "scopeKind");
            r.e(name, "name");
        }
    }

    boolean a();

    void b(String str, Position position, String str2, ScopeKind scopeKind, String str3);
}
