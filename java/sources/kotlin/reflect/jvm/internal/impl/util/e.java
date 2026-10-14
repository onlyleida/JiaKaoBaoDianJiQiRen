package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e implements kotlin.reflect.jvm.internal.impl.util.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15735a;

    public static final class a extends e {
        public static final a b = new a();

        private a() {
            super("must be a member function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return functionDescriptor.K() != null;
        }
    }

    public static final class b extends e {
        public static final b b = new b();

        private b() {
            super("must be a member or an extension function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.K() == null && functionDescriptor.O() == null) ? false : true;
        }
    }

    private e(String str) {
        this.f15735a = str;
    }

    public /* synthetic */ e(String str, o oVar) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String a() {
        return this.f15735a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String b(u uVar) {
        return kotlin.reflect.jvm.internal.impl.util.b.a.a(this, uVar);
    }
}
