package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public final class NotFoundClasses {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.m f14852a;
    private final z b;
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.c, b0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.f<a, d> f14853d;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.name.b f14854a;
        private final List<Integer> b;

        public a(kotlin.reflect.jvm.internal.impl.name.b classId, List<Integer> typeParametersCount) {
            kotlin.jvm.internal.r.e(classId, "classId");
            kotlin.jvm.internal.r.e(typeParametersCount, "typeParametersCount");
            this.f14854a = classId;
            this.b = typeParametersCount;
        }

        public final kotlin.reflect.jvm.internal.impl.name.b a() {
            return this.f14854a;
        }

        public final List<Integer> b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.r.a(this.f14854a, aVar.f14854a) && kotlin.jvm.internal.r.a(this.b, aVar.b);
        }

        public int hashCode() {
            return (this.f14854a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "ClassRequest(classId=" + this.f14854a + ", typeParametersCount=" + this.b + ')';
        }
    }

    public static final class b extends kotlin.reflect.jvm.internal.impl.descriptors.impl.f {
        private final boolean i;
        private final List<t0> j;
        private final kotlin.reflect.jvm.internal.impl.types.h k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.storage.m storageManager, k container, kotlin.reflect.jvm.internal.impl.name.f name, boolean z, int i) {
            super(storageManager, container, name, o0.f14970a, false);
            kotlin.jvm.internal.r.e(storageManager, "storageManager");
            kotlin.jvm.internal.r.e(container, "container");
            kotlin.jvm.internal.r.e(name, "name");
            this.i = z;
            IntRange intRangeJ = kotlin.ranges.f.j(0, i);
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(intRangeJ, 10));
            Iterator<Integer> it = intRangeJ.iterator();
            while (it.hasNext()) {
                int iE = ((IntIterator) it).e();
                arrayList.add(kotlin.reflect.jvm.internal.impl.descriptors.impl.g0.N0(this, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), false, Variance.INVARIANT, kotlin.reflect.jvm.internal.impl.name.f.g(kotlin.jvm.internal.r.m(ExifInterface.GPS_DIRECTION_TRUE, Integer.valueOf(iE))), iE, storageManager));
            }
            this.j = arrayList;
            this.k = new kotlin.reflect.jvm.internal.impl.types.h(this, TypeParameterUtilsKt.d(this), kotlin.collections.t0.a(DescriptorUtilsKt.l(this).k().i()), storageManager);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public c C() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean D0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
        public MemberScope.a k0() {
            return MemberScope.a.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
        /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.h i() {
            return this.k;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
        /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
        public MemberScope.a e0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            return MemberScope.a.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
        public boolean V() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean Y() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean b0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public ClassKind g() {
            return ClassKind.CLASS;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean g0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
        public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
            return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
        public s getVisibility() {
            s PUBLIC = r.f14975e;
            kotlin.jvm.internal.r.d(PUBLIC, "PUBLIC");
            return PUBLIC;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
        public boolean i0() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.f, kotlin.reflect.jvm.internal.impl.descriptors.w
        public boolean isExternal() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public boolean isInline() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public Collection<c> j() {
            return kotlin.collections.u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public d l0() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
        public List<t0> p() {
            return this.j;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
        public Modality q() {
            return Modality.FINAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public v<kotlin.reflect.jvm.internal.impl.types.f0> t() {
            return null;
        }

        public String toString() {
            return "class " + getName() + " (not found)";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public Collection<d> x() {
            return kotlin.collections.u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
        public boolean z() {
            return this.i;
        }
    }

    public NotFoundClasses(kotlin.reflect.jvm.internal.impl.storage.m storageManager, z module) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(module, "module");
        this.f14852a = storageManager;
        this.b = module;
        this.c = storageManager.i(new Function1<kotlin.reflect.jvm.internal.impl.name.c, b0>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$packageFragments$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final b0 invoke(kotlin.reflect.jvm.internal.impl.name.c fqName) {
                kotlin.jvm.internal.r.e(fqName, "fqName");
                return new kotlin.reflect.jvm.internal.impl.descriptors.impl.l(this.this$0.b, fqName);
            }
        });
        this.f14853d = storageManager.i(new Function1<a, d>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$classes$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final d invoke(NotFoundClasses.a dstr$classId$typeParametersCount) {
                kotlin.jvm.internal.r.e(dstr$classId$typeParametersCount, "$dstr$classId$typeParametersCount");
                kotlin.reflect.jvm.internal.impl.name.b bVarA = dstr$classId$typeParametersCount.a();
                List<Integer> listB = dstr$classId$typeParametersCount.b();
                if (bVarA.k()) {
                    throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("Unresolved local class: ", bVarA));
                }
                kotlin.reflect.jvm.internal.impl.name.b bVarG = bVarA.g();
                e eVarD = bVarG == null ? null : this.this$0.d(bVarG, CollectionsKt___CollectionsKt.U(listB, 1));
                if (eVarD == null) {
                    kotlin.reflect.jvm.internal.impl.storage.f fVar = this.this$0.c;
                    kotlin.reflect.jvm.internal.impl.name.c cVarH = bVarA.h();
                    kotlin.jvm.internal.r.d(cVarH, "classId.packageFqName");
                    eVarD = (e) fVar.invoke(cVarH);
                }
                e eVar = eVarD;
                boolean zL = bVarA.l();
                kotlin.reflect.jvm.internal.impl.storage.m mVar = this.this$0.f14852a;
                kotlin.reflect.jvm.internal.impl.name.f fVarJ = bVarA.j();
                kotlin.jvm.internal.r.d(fVarJ, "classId.shortClassName");
                Integer num = (Integer) kotlin.collections.s.e0(listB);
                return new NotFoundClasses.b(mVar, eVar, fVarJ, zL, num == null ? 0 : num.intValue());
            }
        });
    }

    public final d d(kotlin.reflect.jvm.internal.impl.name.b classId, List<Integer> typeParametersCount) {
        kotlin.jvm.internal.r.e(classId, "classId");
        kotlin.jvm.internal.r.e(typeParametersCount, "typeParametersCount");
        return this.f14853d.invoke(new a(classId, typeParametersCount));
    }
}
