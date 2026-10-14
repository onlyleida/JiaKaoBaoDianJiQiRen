package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.t0;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class JvmBuiltInClassDescriptorFactory implements kotlin.reflect.jvm.internal.impl.descriptors.a1.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.f f14818g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.b f14819h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f14820a;
    private final Function1<z, k> b;
    private final h c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f14816e = {v.i(new PropertyReference1Impl(v.b(JvmBuiltInClassDescriptorFactory.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f14815d = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f14817f = kotlin.reflect.jvm.internal.impl.builtins.h.l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final kotlin.reflect.jvm.internal.impl.name.b a() {
            return JvmBuiltInClassDescriptorFactory.f14819h;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.name.d dVar = kotlin.reflect.jvm.internal.impl.builtins.h.a.f14806d;
        kotlin.reflect.jvm.internal.impl.name.f fVarI = dVar.i();
        r.d(fVarI, "cloneable.shortName()");
        f14818g = fVarI;
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(dVar.l());
        r.d(bVarM, "topLevel(StandardNames.FqNames.cloneable.toSafe())");
        f14819h = bVarM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JvmBuiltInClassDescriptorFactory(final m storageManager, z moduleDescriptor, Function1<? super z, ? extends k> computeContainingDeclaration) {
        r.e(storageManager, "storageManager");
        r.e(moduleDescriptor, "moduleDescriptor");
        r.e(computeContainingDeclaration, "computeContainingDeclaration");
        this.f14820a = moduleDescriptor;
        this.b = computeContainingDeclaration;
        this.c = storageManager.c(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.impl.g>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory$cloneable$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.impl.g invoke() {
                kotlin.reflect.jvm.internal.impl.descriptors.impl.g gVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.g((k) this.this$0.b.invoke(this.this$0.f14820a), JvmBuiltInClassDescriptorFactory.f14818g, Modality.ABSTRACT, ClassKind.INTERFACE, t.d(this.this$0.f14820a.k().i()), o0.f14970a, false, storageManager);
                gVar.G0(new a(storageManager, gVar), u0.b(), null);
                return gVar;
            }
        });
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.impl.g i() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.impl.g) l.a(this.c, this, f14816e[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
        r.e(packageFqName, "packageFqName");
        return r.a(packageFqName, f14817f) ? t0.a(i()) : u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public boolean b(kotlin.reflect.jvm.internal.impl.name.c packageFqName, kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(packageFqName, "packageFqName");
        r.e(name, "name");
        return r.a(name, f14818g) && r.a(packageFqName, f14817f);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.b
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(kotlin.reflect.jvm.internal.impl.name.b classId) {
        r.e(classId, "classId");
        if (r.a(classId, f14819h)) {
            return i();
        }
        return null;
    }

    public /* synthetic */ JvmBuiltInClassDescriptorFactory(m mVar, z zVar, Function1 function1, int i, o oVar) {
        this(mVar, zVar, (i & 4) != 0 ? new Function1<z, kotlin.reflect.jvm.internal.impl.builtins.a>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory.1
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.builtins.a invoke(z module) {
                r.e(module, "module");
                List<b0> listF0 = module.j0(JvmBuiltInClassDescriptorFactory.f14817f).f0();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listF0) {
                    if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.a) {
                        arrayList.add(obj);
                    }
                }
                return (kotlin.reflect.jvm.internal.impl.builtins.a) s.c0(arrayList);
            }
        } : function1);
    }
}
