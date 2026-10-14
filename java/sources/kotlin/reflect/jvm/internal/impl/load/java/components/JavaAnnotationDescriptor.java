package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Collection;
import java.util.Map;
import kotlin.collections.s;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public class JavaAnnotationDescriptor implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15031f = {v.i(new PropertyReference1Impl(v.b(JavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.c f15032a;
    private final o0 b;
    private final h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.b f15033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15034e;

    public JavaAnnotationDescriptor(final kotlin.reflect.jvm.internal.impl.load.java.lazy.e c, kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.b> collectionI;
        r.e(c, "c");
        r.e(fqName, "fqName");
        this.f15032a = fqName;
        kotlin.reflect.jvm.internal.impl.load.java.structure.b bVar = null;
        o0 NO_SOURCE = aVar == null ? null : c.a().t().a(aVar);
        if (NO_SOURCE == null) {
            NO_SOURCE = o0.f14970a;
            r.d(NO_SOURCE, "NO_SOURCE");
        }
        this.b = NO_SOURCE;
        this.c = c.e().c(new Function0<f0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor$type$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final f0 invoke() {
                f0 f0VarN = c.d().k().o(this.e()).n();
                r.d(f0VarN, "c.module.builtIns.getBui…qName(fqName).defaultType");
                return f0VarN;
            }
        });
        if (aVar != null && (collectionI = aVar.i()) != null) {
            bVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.b) s.d0(collectionI);
        }
        this.f15033d = bVar;
        boolean z = false;
        if (aVar != null && aVar.k()) {
            z = true;
        }
        this.f15034e = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<kotlin.reflect.jvm.internal.impl.name.f, g<?>> a() {
        return kotlin.collections.o0.h();
    }

    protected final kotlin.reflect.jvm.internal.impl.load.java.structure.b b() {
        return this.f15033d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f0 getType() {
        return (f0) l.a(this.c, this, f15031f[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return this.f15032a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.f
    public boolean k() {
        return this.f15034e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public o0 o() {
        return this.b;
    }
}
