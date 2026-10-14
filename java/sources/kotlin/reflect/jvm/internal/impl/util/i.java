package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i implements kotlin.reflect.jvm.internal.impl.util.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15744a;

    public static final class a extends i {
        private final int b;

        public a(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append("must have at least ");
            sb.append(i);
            sb.append(" value parameter");
            sb.append(i > 1 ? "s" : "");
            super(sb.toString(), null);
            this.b = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return functionDescriptor.f().size() >= this.b;
        }
    }

    public static final class b extends i {
        private final int b;

        public b(int i) {
            super("must have exactly " + i + " value parameters", null);
            this.b = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return functionDescriptor.f().size() == this.b;
        }
    }

    public static final class c extends i {
        public static final c b = new c();

        private c() {
            super("must have no value parameters", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return functionDescriptor.f().isEmpty();
        }
    }

    public static final class d extends i {
        public static final d b = new d();

        private d() {
            super("must have a single value parameter", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.b
        public boolean c(u functionDescriptor) {
            r.e(functionDescriptor, "functionDescriptor");
            return functionDescriptor.f().size() == 1;
        }
    }

    private i(String str) {
        this.f15744a = str;
    }

    public /* synthetic */ i(String str, o oVar) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String a() {
        return this.f15744a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String b(u uVar) {
        return kotlin.reflect.jvm.internal.impl.util.b.a.a(this, uVar);
    }
}
