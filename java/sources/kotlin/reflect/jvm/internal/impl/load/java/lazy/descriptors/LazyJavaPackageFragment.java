package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.w;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.l;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.load.kotlin.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.s;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaPackageFragment extends w {
    static final /* synthetic */ KProperty<Object>[] m = {v.i(new PropertyReference1Impl(v.b(LazyJavaPackageFragment.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), v.i(new PropertyReference1Impl(v.b(LazyJavaPackageFragment.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final u f15093g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e f15094h;
    private final h i;
    private final JvmPackageScope j;
    private final h<List<kotlin.reflect.jvm.internal.impl.name.c>> k;
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageFragment(e outerContext, u jPackage) {
        super(outerContext.d(), jPackage.e());
        r.e(outerContext, "outerContext");
        r.e(jPackage, "jPackage");
        this.f15093g = jPackage;
        e eVarD = ContextKt.d(outerContext, this, null, 0, 6, null);
        this.f15094h = eVarD;
        this.i = eVarD.e().c(new Function0<Map<String, ? extends m>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$binaryClasses$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<String, ? extends m> invoke() {
                s sVarO = this.this$0.f15094h.a().o();
                String strB = this.this$0.e().b();
                r.d(strB, "fqName.asString()");
                List<String> listA = sVarO.a(strB);
                LazyJavaPackageFragment lazyJavaPackageFragment = this.this$0;
                ArrayList arrayList = new ArrayList();
                for (String str : listA) {
                    kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.resolve.jvm.d.d(str).e());
                    r.d(bVarM, "topLevel(JvmClassName.by…velClassMaybeWithDollars)");
                    m mVarB = l.b(lazyJavaPackageFragment.f15094h.a().j(), bVarM);
                    Pair pairA = mVarB == null ? null : kotlin.l.a(str, mVarB);
                    if (pairA != null) {
                        arrayList.add(pairA);
                    }
                }
                return o0.q(arrayList);
            }
        });
        this.j = new JvmPackageScope(eVarD, jPackage, this);
        this.k = eVarD.e().b(new Function0<List<? extends kotlin.reflect.jvm.internal.impl.name.c>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.name.c> invoke() {
                Collection<u> collectionU = this.this$0.f15093g.u();
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionU, 10));
                Iterator<T> it = collectionU.iterator();
                while (it.hasNext()) {
                    arrayList.add(((u) it.next()).e());
                }
                return arrayList;
            }
        }, kotlin.collections.u.j());
        this.l = eVarD.a().i().b() ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b() : kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(eVarD, jPackage);
        eVarD.e().c(new Function0<HashMap<kotlin.reflect.jvm.internal.impl.resolve.jvm.d, kotlin.reflect.jvm.internal.impl.resolve.jvm.d>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$partToFacade$2

            public /* synthetic */ class a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f15095a;

                static {
                    int[] iArr = new int[KotlinClassHeader.Kind.values().length];
                    iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 1;
                    iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 2;
                    f15095a = iArr;
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<kotlin.reflect.jvm.internal.impl.resolve.jvm.d, kotlin.reflect.jvm.internal.impl.resolve.jvm.d> invoke() {
                HashMap<kotlin.reflect.jvm.internal.impl.resolve.jvm.d, kotlin.reflect.jvm.internal.impl.resolve.jvm.d> map = new HashMap<>();
                for (Map.Entry<String, m> entry : this.this$0.I0().entrySet()) {
                    String key = entry.getKey();
                    m value = entry.getValue();
                    kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVarD = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.d(key);
                    r.d(dVarD, "byInternalName(partInternalName)");
                    KotlinClassHeader kotlinClassHeaderB = value.b();
                    int i = a.f15095a[kotlinClassHeaderB.c().ordinal()];
                    if (i == 1) {
                        String strE = kotlinClassHeaderB.e();
                        if (strE != null) {
                            kotlin.reflect.jvm.internal.impl.resolve.jvm.d dVarD2 = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.d(strE);
                            r.d(dVarD2, "byInternalName(header.mu…: continue@kotlinClasses)");
                            map.put(dVarD, dVarD2);
                        }
                    } else if (i == 2) {
                        map.put(dVarD, dVarD);
                    }
                }
                return map;
            }
        });
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d H0(g jClass) {
        r.e(jClass, "jClass");
        return this.j.j().O(jClass);
    }

    public final Map<String, m> I0() {
        return (Map) kotlin.reflect.jvm.internal.impl.storage.l.a(this.i, this, m[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public JvmPackageScope m() {
        return this.j;
    }

    public final List<kotlin.reflect.jvm.internal.impl.name.c> K0() {
        return this.k.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.w, kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.n
    public kotlin.reflect.jvm.internal.impl.descriptors.o0 o() {
        return new n(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.w, kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        return "Lazy Java package fragment: " + e() + " of module " + this.f15094h.a().m();
    }
}
