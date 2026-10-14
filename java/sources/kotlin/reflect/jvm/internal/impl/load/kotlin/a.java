package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.x;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends AbstractBinaryClassAnnotationAndConstantLoader<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {
    private final z c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final NotFoundClasses f15195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.c f15196e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a, reason: collision with other inner class name */
    public static final class C0335a implements m.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f15197a = new HashMap<>();
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> f15198d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ o0 f15199e;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a$a, reason: collision with other inner class name */
        public static final class C0336a implements m.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final /* synthetic */ m.a f15200a;
            final /* synthetic */ m.a b;
            final /* synthetic */ C0335a c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.name.f f15201d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> f15202e;

            C0336a(m.a aVar, C0335a c0335a, kotlin.reflect.jvm.internal.impl.name.f fVar, ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> arrayList) {
                this.b = aVar;
                this.c = c0335a;
                this.f15201d = fVar;
                this.f15202e = arrayList;
                this.f15200a = aVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public void a(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b enumClassId, kotlin.reflect.jvm.internal.impl.name.f enumEntryName) {
                kotlin.jvm.internal.r.e(name, "name");
                kotlin.jvm.internal.r.e(enumClassId, "enumClassId");
                kotlin.jvm.internal.r.e(enumEntryName, "enumEntryName");
                this.f15200a.a(name, enumClassId, enumEntryName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public m.a b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b classId) {
                kotlin.jvm.internal.r.e(name, "name");
                kotlin.jvm.internal.r.e(classId, "classId");
                return this.f15200a.b(name, classId);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public void c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                kotlin.jvm.internal.r.e(name, "name");
                kotlin.jvm.internal.r.e(value, "value");
                this.f15200a.c(name, value);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public void d(kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj) {
                this.f15200a.d(fVar, obj);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public m.b e(kotlin.reflect.jvm.internal.impl.name.f name) {
                kotlin.jvm.internal.r.e(name, "name");
                return this.f15200a.e(name);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
            public void visitEnd() {
                this.b.visitEnd();
                this.c.f15197a.put(this.f15201d, new kotlin.reflect.jvm.internal.impl.resolve.constants.a((kotlin.reflect.jvm.internal.impl.descriptors.annotations.c) kotlin.collections.s.C0(this.f15202e)));
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a$b */
        public static final class b implements m.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ArrayList<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f15203a = new ArrayList<>();
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.name.f c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ a f15204d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d f15205e;

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a$b$a, reason: collision with other inner class name */
            public static final class C0337a implements m.a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final /* synthetic */ m.a f15206a;
                final /* synthetic */ m.a b;
                final /* synthetic */ b c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> f15207d;

                C0337a(m.a aVar, b bVar, ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> arrayList) {
                    this.b = aVar;
                    this.c = bVar;
                    this.f15207d = arrayList;
                    this.f15206a = aVar;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public void a(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b enumClassId, kotlin.reflect.jvm.internal.impl.name.f enumEntryName) {
                    kotlin.jvm.internal.r.e(name, "name");
                    kotlin.jvm.internal.r.e(enumClassId, "enumClassId");
                    kotlin.jvm.internal.r.e(enumEntryName, "enumEntryName");
                    this.f15206a.a(name, enumClassId, enumEntryName);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public m.a b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b classId) {
                    kotlin.jvm.internal.r.e(name, "name");
                    kotlin.jvm.internal.r.e(classId, "classId");
                    return this.f15206a.b(name, classId);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public void c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                    kotlin.jvm.internal.r.e(name, "name");
                    kotlin.jvm.internal.r.e(value, "value");
                    this.f15206a.c(name, value);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public void d(kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj) {
                    this.f15206a.d(fVar, obj);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public m.b e(kotlin.reflect.jvm.internal.impl.name.f name) {
                    kotlin.jvm.internal.r.e(name, "name");
                    return this.f15206a.e(name);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
                public void visitEnd() {
                    this.b.visitEnd();
                    this.c.f15203a.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.a((kotlin.reflect.jvm.internal.impl.descriptors.annotations.c) kotlin.collections.s.C0(this.f15207d)));
                }
            }

            b(kotlin.reflect.jvm.internal.impl.name.f fVar, a aVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
                this.c = fVar;
                this.f15204d = aVar;
                this.f15205e = dVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
            public m.a a(kotlin.reflect.jvm.internal.impl.name.b classId) {
                kotlin.jvm.internal.r.e(classId, "classId");
                ArrayList arrayList = new ArrayList();
                a aVar = this.f15204d;
                o0 NO_SOURCE = o0.f14970a;
                kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
                m.a aVarW = aVar.w(classId, NO_SOURCE, arrayList);
                kotlin.jvm.internal.r.c(aVarW);
                return new C0337a(aVarW, this, arrayList);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
            public void b(Object obj) {
                this.f15203a.add(C0335a.this.h(this.c, obj));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
            public void c(kotlin.reflect.jvm.internal.impl.name.b enumClassId, kotlin.reflect.jvm.internal.impl.name.f enumEntryName) {
                kotlin.jvm.internal.r.e(enumClassId, "enumClassId");
                kotlin.jvm.internal.r.e(enumEntryName, "enumEntryName");
                this.f15203a.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.i(enumClassId, enumEntryName));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
            public void d(kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                kotlin.jvm.internal.r.e(value, "value");
                this.f15203a.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.o(value));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.b
            public void visitEnd() {
                v0 v0VarB = kotlin.reflect.jvm.internal.impl.load.java.components.a.b(this.c, this.f15205e);
                if (v0VarB != null) {
                    HashMap map = C0335a.this.f15197a;
                    kotlin.reflect.jvm.internal.impl.name.f fVar = this.c;
                    ConstantValueFactory constantValueFactory = ConstantValueFactory.f15493a;
                    List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> listC = kotlin.reflect.jvm.internal.impl.utils.a.c(this.f15203a);
                    a0 type = v0VarB.getType();
                    kotlin.jvm.internal.r.d(type, "parameter.type");
                    map.put(fVar, constantValueFactory.b(listC, type));
                }
            }
        }

        C0335a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> list, o0 o0Var) {
            this.c = dVar;
            this.f15198d = list;
            this.f15199e = o0Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> h(kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj) {
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarC = ConstantValueFactory.f15493a.c(obj);
            return gVarC == null ? kotlin.reflect.jvm.internal.impl.resolve.constants.j.b.a(kotlin.jvm.internal.r.m("Unsupported annotation argument: ", fVar)) : gVarC;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void a(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b enumClassId, kotlin.reflect.jvm.internal.impl.name.f enumEntryName) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(enumClassId, "enumClassId");
            kotlin.jvm.internal.r.e(enumEntryName, "enumEntryName");
            this.f15197a.put(name, new kotlin.reflect.jvm.internal.impl.resolve.constants.i(enumClassId, enumEntryName));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.a b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.name.b classId) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(classId, "classId");
            ArrayList arrayList = new ArrayList();
            a aVar = a.this;
            o0 NO_SOURCE = o0.f14970a;
            kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
            m.a aVarW = aVar.w(classId, NO_SOURCE, arrayList);
            kotlin.jvm.internal.r.c(aVarW);
            return new C0336a(aVarW, this, name, arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
            kotlin.jvm.internal.r.e(name, "name");
            kotlin.jvm.internal.r.e(value, "value");
            this.f15197a.put(name, new kotlin.reflect.jvm.internal.impl.resolve.constants.o(value));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void d(kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj) {
            if (fVar != null) {
                this.f15197a.put(fVar, h(fVar, obj));
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public m.b e(kotlin.reflect.jvm.internal.impl.name.f name) {
            kotlin.jvm.internal.r.e(name, "name");
            return new b(name, a.this, this.c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m.a
        public void visitEnd() {
            this.f15198d.add(new kotlin.reflect.jvm.internal.impl.descriptors.annotations.d(this.c.n(), this.f15197a, this.f15199e));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(z module, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.storage.m storageManager, k kotlinClassFinder) {
        super(storageManager, kotlinClassFinder);
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(kotlinClassFinder, "kotlinClassFinder");
        this.c = module;
        this.f15195d = notFoundClasses;
        this.f15196e = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.c(module, notFoundClasses);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d G(kotlin.reflect.jvm.internal.impl.name.b bVar) {
        return FindClassInModuleKt.c(this.c, bVar, this.f15195d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> z(String desc, Object initializer) {
        kotlin.jvm.internal.r.e(desc, "desc");
        kotlin.jvm.internal.r.e(initializer, "initializer");
        if (StringsKt__StringsKt.G("ZBCS", desc, false, 2, null)) {
            int iIntValue = ((Integer) initializer).intValue();
            int iHashCode = desc.hashCode();
            if (iHashCode == 66) {
                if (desc.equals("B")) {
                    initializer = Byte.valueOf((byte) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 67) {
                if (desc.equals("C")) {
                    initializer = Character.valueOf((char) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 83) {
                if (desc.equals(ExifInterface.LATITUDE_SOUTH)) {
                    initializer = Short.valueOf((short) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 90 && desc.equals("Z")) {
                initializer = Boolean.valueOf(iIntValue != 0);
            }
            throw new AssertionError(desc);
        }
        return ConstantValueFactory.f15493a.c(initializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.c B(ProtoBuf$Annotation proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver) {
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        return this.f15196e.a(proto, nameResolver);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> D(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> constant) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> wVar;
        kotlin.jvm.internal.r.e(constant, "constant");
        if (constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.d) {
            wVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.u(((kotlin.reflect.jvm.internal.impl.resolve.constants.d) constant).b().byteValue());
        } else if (constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.s) {
            wVar = new x(((kotlin.reflect.jvm.internal.impl.resolve.constants.s) constant).b().shortValue());
        } else if (constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.l) {
            wVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.v(((kotlin.reflect.jvm.internal.impl.resolve.constants.l) constant).b().intValue());
        } else {
            if (!(constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.p)) {
                return constant;
            }
            wVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.w(((kotlin.reflect.jvm.internal.impl.resolve.constants.p) constant).b().longValue());
        }
        return wVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    protected m.a w(kotlin.reflect.jvm.internal.impl.name.b annotationClassId, o0 source, List<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> result) {
        kotlin.jvm.internal.r.e(annotationClassId, "annotationClassId");
        kotlin.jvm.internal.r.e(source, "source");
        kotlin.jvm.internal.r.e(result, "result");
        return new C0335a(G(annotationClassId), result, source);
    }
}
