package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.collections.v0;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public final class DeserializedClassDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a implements k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ProtoBuf$Class f15555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.metadata.c.a f15556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final o0 f15557h;
    private final kotlin.reflect.jvm.internal.impl.name.b i;
    private final Modality j;
    private final s k;
    private final ClassKind l;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.i m;
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.f n;
    private final DeserializedClassTypeConstructor o;
    private final ScopesHolderForClass<DeserializedClassMemberScope> p;
    private final EnumEntryClassDescriptors q;
    private final k r;
    private final kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.descriptors.c> s;
    private final kotlin.reflect.jvm.internal.impl.storage.h<Collection<kotlin.reflect.jvm.internal.impl.descriptors.c>> t;
    private final kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.descriptors.d> u;
    private final kotlin.reflect.jvm.internal.impl.storage.h<Collection<kotlin.reflect.jvm.internal.impl.descriptors.d>> v;
    private final kotlin.reflect.jvm.internal.impl.storage.i<v<f0>> w;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a x;
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e y;

    /* JADX INFO: Access modifiers changed from: private */
    final class DeserializedClassMemberScope extends DeserializedMemberScope {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.types.checker.g f15558g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h<Collection<k>> f15559h;
        private final kotlin.reflect.jvm.internal.impl.storage.h<Collection<a0>> i;
        final /* synthetic */ DeserializedClassDescriptor j;

        public static final class a extends kotlin.reflect.jvm.internal.impl.resolve.f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List<D> f15560a;

            a(List<D> list) {
                this.f15560a = list;
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // kotlin.reflect.jvm.internal.impl.resolve.g
            public void a(CallableMemberDescriptor fakeOverride) {
                r.e(fakeOverride, "fakeOverride");
                OverridingUtil.L(fakeOverride, null);
                this.f15560a.add((D) fakeOverride);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.f
            protected void e(CallableMemberDescriptor fromSuper, CallableMemberDescriptor fromCurrent) {
                r.e(fromSuper, "fromSuper");
                r.e(fromCurrent, "fromCurrent");
            }
        }

        public DeserializedClassMemberScope(DeserializedClassDescriptor this$0, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            r.e(this$0, "this$0");
            r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.j = this$0;
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.i iVarU0 = this$0.U0();
            List<ProtoBuf$Function> functionList = this$0.V0().getFunctionList();
            r.d(functionList, "classProto.functionList");
            List<ProtoBuf$Property> propertyList = this$0.V0().getPropertyList();
            r.d(propertyList, "classProto.propertyList");
            List<ProtoBuf$TypeAlias> typeAliasList = this$0.V0().getTypeAliasList();
            r.d(typeAliasList, "classProto.typeAliasList");
            List<Integer> nestedClassNameList = this$0.V0().getNestedClassNameList();
            r.d(nestedClassNameList, "classProto.nestedClassNameList");
            kotlin.reflect.jvm.internal.impl.metadata.c.c cVarG = this$0.U0().g();
            final ArrayList arrayList = new ArrayList(kotlin.collections.v.u(nestedClassNameList, 10));
            Iterator<T> it = nestedClassNameList.iterator();
            while (it.hasNext()) {
                arrayList.add(q.b(cVarG, ((Number) it.next()).intValue()));
            }
            super(iVarU0, functionList, propertyList, typeAliasList, new Function0<List<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    return arrayList;
                }
            });
            this.f15558g = kotlinTypeRefiner;
            this.f15559h = q().h().c(new Function0<Collection<? extends k>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$allDescriptors$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends k> invoke() {
                    return this.this$0.k(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.o, MemberScope.f15518a.a(), NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                }
            });
            this.i = q().h().c(new Function0<Collection<? extends a0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends a0> invoke() {
                    return this.this$0.f15558g.f(this.this$0.C());
                }
            });
        }

        private final <D extends CallableMemberDescriptor> void B(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<? extends D> collection, List<D> list) {
            q().c().m().a().w(fVar, collection, new ArrayList(list), C(), new a(list));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DeserializedClassDescriptor C() {
            return this.j;
        }

        public void D(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(name, "name");
            r.e(location, "location");
            kotlin.reflect.jvm.internal.s.b.a.a(q().c().o(), location, C(), name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(name, "name");
            r.e(location, "location");
            D(name, location);
            return super.b(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(name, "name");
            r.e(location, "location");
            D(name, location);
            return super.c(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarF;
            r.e(name, "name");
            r.e(location, "location");
            D(name, location);
            EnumEntryClassDescriptors enumEntryClassDescriptors = C().q;
            return (enumEntryClassDescriptors == null || (dVarF = enumEntryClassDescriptors.f(name)) == null) ? super.f(name, location) : dVarF;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public Collection<k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
            r.e(kindFilter, "kindFilter");
            r.e(nameFilter, "nameFilter");
            return this.f15559h.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void j(Collection<k> result, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
            r.e(result, "result");
            r.e(nameFilter, "nameFilter");
            EnumEntryClassDescriptors enumEntryClassDescriptors = C().q;
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionD = enumEntryClassDescriptors == null ? null : enumEntryClassDescriptors.d();
            if (collectionD == null) {
                collectionD = u.j();
            }
            result.addAll(collectionD);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void l(kotlin.reflect.jvm.internal.impl.name.f name, List<n0> functions) {
            r.e(name, "name");
            r.e(functions, "functions");
            ArrayList arrayList = new ArrayList();
            Iterator<a0> it = this.i.invoke().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().m().b(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            functions.addAll(q().c().c().a(name, this.j));
            B(name, arrayList, functions);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void m(kotlin.reflect.jvm.internal.impl.name.f name, List<j0> descriptors) {
            r.e(name, "name");
            r.e(descriptors, "descriptors");
            ArrayList arrayList = new ArrayList();
            Iterator<a0> it = this.i.invoke().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().m().c(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            B(name, arrayList, descriptors);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected kotlin.reflect.jvm.internal.impl.name.b n(kotlin.reflect.jvm.internal.impl.name.f name) {
            r.e(name, "name");
            kotlin.reflect.jvm.internal.impl.name.b bVarD = this.j.i.d(name);
            r.d(bVarD, "classId.createNestedClassId(name)");
            return bVarD;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected Set<kotlin.reflect.jvm.internal.impl.name.f> t() {
            List<a0> listA = C().o.a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                Set<kotlin.reflect.jvm.internal.impl.name.f> setE = ((a0) it.next()).m().e();
                if (setE == null) {
                    return null;
                }
                z.B(linkedHashSet, setE);
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected Set<kotlin.reflect.jvm.internal.impl.name.f> u() {
            List<a0> listA = C().o.a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                z.B(linkedHashSet, ((a0) it.next()).m().a());
            }
            linkedHashSet.addAll(q().c().c().e(this.j));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected Set<kotlin.reflect.jvm.internal.impl.name.f> v() {
            List<a0> listA = C().o.a();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                z.B(linkedHashSet, ((a0) it.next()).m().d());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected boolean y(n0 function) {
            r.e(function, "function");
            return q().c().s().b(this.j, function);
        }
    }

    private final class DeserializedClassTypeConstructor extends kotlin.reflect.jvm.internal.impl.types.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h<List<t0>> f15561d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ DeserializedClassDescriptor f15562e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeserializedClassTypeConstructor(final DeserializedClassDescriptor this$0) {
            super(this$0.U0().h());
            r.e(this$0, "this$0");
            this.f15562e = this$0;
            this.f15561d = this$0.U0().h().c(new Function0<List<? extends t0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassTypeConstructor$parameters$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends t0> invoke() {
                    return TypeParameterUtilsKt.d(this$0);
                }
            });
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<t0> getParameters() {
            return this.f15561d.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<a0> j() {
            kotlin.reflect.jvm.internal.impl.name.c cVarB;
            List<ProtoBuf$Type> listL = kotlin.reflect.jvm.internal.impl.metadata.c.f.l(this.f15562e.V0(), this.f15562e.U0().j());
            DeserializedClassDescriptor deserializedClassDescriptor = this.f15562e;
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listL, 10));
            Iterator<T> it = listL.iterator();
            while (it.hasNext()) {
                arrayList.add(deserializedClassDescriptor.U0().i().q((ProtoBuf$Type) it.next()));
            }
            List listX0 = CollectionsKt___CollectionsKt.x0(arrayList, this.f15562e.U0().c().c().d(this.f15562e));
            ArrayList<NotFoundClasses.b> arrayList2 = new ArrayList();
            Iterator it2 = listX0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = ((a0) it2.next()).I0().u();
                NotFoundClasses.b bVar = fVarU instanceof NotFoundClasses.b ? (NotFoundClasses.b) fVarU : null;
                if (bVar != null) {
                    arrayList2.add(bVar);
                }
            }
            if (!arrayList2.isEmpty()) {
                l lVarI = this.f15562e.U0().c().i();
                DeserializedClassDescriptor deserializedClassDescriptor2 = this.f15562e;
                ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(arrayList2, 10));
                for (NotFoundClasses.b bVar2 : arrayList2) {
                    kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(bVar2);
                    String strB = (bVarH == null || (cVarB = bVarH.b()) == null) ? null : cVarB.b();
                    if (strB == null) {
                        strB = bVar2.getName().b();
                    }
                    arrayList3.add(strB);
                }
                lVarI.b(deserializedClassDescriptor2, arrayList3);
            }
            return CollectionsKt___CollectionsKt.M0(listX0);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected r0 o() {
            return r0.a.f14979a;
        }

        public String toString() {
            String string = this.f15562e.getName().toString();
            r.d(string, "name.toString()");
            return string;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public DeserializedClassDescriptor u() {
            return this.f15562e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class EnumEntryClassDescriptors {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<kotlin.reflect.jvm.internal.impl.name.f, ProtoBuf$EnumEntry> f15563a;
        private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.descriptors.d> b;
        private final kotlin.reflect.jvm.internal.impl.storage.h<Set<kotlin.reflect.jvm.internal.impl.name.f>> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DeserializedClassDescriptor f15564d;

        public EnumEntryClassDescriptors(DeserializedClassDescriptor this$0) {
            r.e(this$0, "this$0");
            this.f15564d = this$0;
            List<ProtoBuf$EnumEntry> enumEntryList = this$0.V0().getEnumEntryList();
            r.d(enumEntryList, "classProto.enumEntryList");
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(kotlin.collections.n0.d(kotlin.collections.v.u(enumEntryList, 10)), 16));
            for (Object obj : enumEntryList) {
                linkedHashMap.put(q.b(this$0.U0().g(), ((ProtoBuf$EnumEntry) obj).getName()), obj);
            }
            this.f15563a = linkedHashMap;
            m mVarH = this.f15564d.U0().h();
            final DeserializedClassDescriptor deserializedClassDescriptor = this.f15564d;
            this.b = mVarH.g(new Function1<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$enumEntryByName$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(kotlin.reflect.jvm.internal.impl.name.f name) {
                    r.e(name, "name");
                    final ProtoBuf$EnumEntry protoBuf$EnumEntry = (ProtoBuf$EnumEntry) this.this$0.f15563a.get(name);
                    if (protoBuf$EnumEntry == null) {
                        return null;
                    }
                    final DeserializedClassDescriptor deserializedClassDescriptor2 = deserializedClassDescriptor;
                    return kotlin.reflect.jvm.internal.impl.descriptors.impl.m.H0(deserializedClassDescriptor2.U0().h(), deserializedClassDescriptor2, name, this.this$0.c, new a(deserializedClassDescriptor2.U0().h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$enumEntryByName$1$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                            return CollectionsKt___CollectionsKt.M0(deserializedClassDescriptor2.U0().c().d().d(deserializedClassDescriptor2.Z0(), protoBuf$EnumEntry));
                        }
                    }), o0.f14970a);
                }
            });
            this.c = this.f15564d.U0().h().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$enumMemberNames$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    return this.this$0.e();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            HashSet hashSet = new HashSet();
            Iterator<a0> it = this.f15564d.i().a().iterator();
            while (it.hasNext()) {
                for (k kVar : kotlin.reflect.jvm.internal.impl.resolve.scopes.h.a.a(it.next().m(), null, null, 3, null)) {
                    if ((kVar instanceof n0) || (kVar instanceof j0)) {
                        hashSet.add(kVar.getName());
                    }
                }
            }
            List<ProtoBuf$Function> functionList = this.f15564d.V0().getFunctionList();
            r.d(functionList, "classProto.functionList");
            DeserializedClassDescriptor deserializedClassDescriptor = this.f15564d;
            Iterator<T> it2 = functionList.iterator();
            while (it2.hasNext()) {
                hashSet.add(q.b(deserializedClassDescriptor.U0().g(), ((ProtoBuf$Function) it2.next()).getName()));
            }
            List<ProtoBuf$Property> propertyList = this.f15564d.V0().getPropertyList();
            r.d(propertyList, "classProto.propertyList");
            DeserializedClassDescriptor deserializedClassDescriptor2 = this.f15564d;
            Iterator<T> it3 = propertyList.iterator();
            while (it3.hasNext()) {
                hashSet.add(q.b(deserializedClassDescriptor2.U0().g(), ((ProtoBuf$Property) it3.next()).getName()));
            }
            return v0.h(hashSet, hashSet);
        }

        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> d() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setKeySet = this.f15563a.keySet();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = f((kotlin.reflect.jvm.internal.impl.name.f) it.next());
                if (dVarF != null) {
                    arrayList.add(dVarF);
                }
            }
            return arrayList;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d f(kotlin.reflect.jvm.internal.impl.name.f name) {
            r.e(name, "name");
            return this.b.invoke(name);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.i outerContext, ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, o0 sourceElement) {
        super(outerContext.h(), q.a(nameResolver, classProto.getFqName()).j());
        r.e(outerContext, "outerContext");
        r.e(classProto, "classProto");
        r.e(nameResolver, "nameResolver");
        r.e(metadataVersion, "metadataVersion");
        r.e(sourceElement, "sourceElement");
        this.f15555f = classProto;
        this.f15556g = metadataVersion;
        this.f15557h = sourceElement;
        this.i = q.a(nameResolver, classProto.getFqName());
        t tVar = t.f15615a;
        this.j = tVar.b(kotlin.reflect.jvm.internal.impl.metadata.c.b.f15335e.d(classProto.getFlags()));
        this.k = kotlin.reflect.jvm.internal.impl.serialization.deserialization.u.a(tVar, kotlin.reflect.jvm.internal.impl.metadata.c.b.f15334d.d(classProto.getFlags()));
        ClassKind classKindA = tVar.a(kotlin.reflect.jvm.internal.impl.metadata.c.b.f15336f.d(classProto.getFlags()));
        this.l = classKindA;
        List<ProtoBuf$TypeParameter> typeParameterList = classProto.getTypeParameterList();
        r.d(typeParameterList, "classProto.typeParameterList");
        ProtoBuf$TypeTable typeTable = classProto.getTypeTable();
        r.d(typeTable, "classProto.typeTable");
        kotlin.reflect.jvm.internal.impl.metadata.c.g gVar = new kotlin.reflect.jvm.internal.impl.metadata.c.g(typeTable);
        kotlin.reflect.jvm.internal.impl.metadata.c.i.a aVar = kotlin.reflect.jvm.internal.impl.metadata.c.i.b;
        ProtoBuf$VersionRequirementTable versionRequirementTable = classProto.getVersionRequirementTable();
        r.d(versionRequirementTable, "classProto.versionRequirementTable");
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.i iVarA = outerContext.a(this, typeParameterList, nameResolver, gVar, aVar.a(versionRequirementTable), metadataVersion);
        this.m = iVarA;
        ClassKind classKind = ClassKind.ENUM_CLASS;
        this.n = classKindA == classKind ? new StaticScopeForKotlinEnum(iVarA.h(), this) : MemberScope.a.b;
        this.o = new DeserializedClassTypeConstructor(this);
        this.p = ScopesHolderForClass.f14856e.a(this, iVarA.h(), iVarA.c().m().c(), new DeserializedClassDescriptor$memberScopeHolder$1(this));
        this.q = classKindA == classKind ? new EnumEntryClassDescriptors(this) : null;
        k kVarE = outerContext.e();
        this.r = kVarE;
        this.s = iVarA.h().e(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.c>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$primaryConstructor$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.c invoke() {
                return this.this$0.R0();
            }
        });
        this.t = iVarA.h().c(new Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$constructors$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
                return this.this$0.P0();
            }
        });
        this.u = iVarA.h().e(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$companionObjectDescriptor$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
                return this.this$0.O0();
            }
        });
        this.v = iVarA.h().c(new Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.d>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$sealedSubclasses$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.d> invoke() {
                return this.this$0.T0();
            }
        });
        this.w = iVarA.h().e(new Function0<v<f0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$inlineClassRepresentation$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v<f0> invoke() {
                return this.this$0.Q0();
            }
        });
        kotlin.reflect.jvm.internal.impl.metadata.c.c cVarG = iVarA.g();
        kotlin.reflect.jvm.internal.impl.metadata.c.g gVarJ = iVarA.j();
        DeserializedClassDescriptor deserializedClassDescriptor = kVarE instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) kVarE : null;
        this.x = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a(classProto, cVarG, gVarJ, sourceElement, deserializedClassDescriptor != null ? deserializedClassDescriptor.x : null);
        this.y = !kotlin.reflect.jvm.internal.impl.metadata.c.b.c.d(classProto.getFlags()).booleanValue() ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b() : new i(iVarA.h(), new Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$annotations$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> invoke() {
                return CollectionsKt___CollectionsKt.M0(this.this$0.U0().c().d().b(this.this$0.Z0()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d O0() {
        if (!this.f15555f.hasCompanionObjectName()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = W0().f(q.b(this.m.g(), this.f15555f.getCompanionObjectName()), NoLookupLocation.FROM_DESERIALIZATION);
        if (fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> P0() {
        return CollectionsKt___CollectionsKt.x0(CollectionsKt___CollectionsKt.x0(S0(), u.n(C())), this.m.c().c().c(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v<f0> Q0() {
        kotlin.reflect.jvm.internal.impl.name.f name;
        Object obj = null;
        if (!kotlin.reflect.jvm.internal.impl.resolve.d.b(this)) {
            return null;
        }
        if (this.f15555f.hasInlineClassUnderlyingPropertyName()) {
            name = q.b(this.m.g(), this.f15555f.getInlineClassUnderlyingPropertyName());
        } else {
            if (this.f15556g.c(1, 5, 1)) {
                throw new IllegalStateException(r.m("Inline class has no underlying property name in metadata: ", this).toString());
            }
            kotlin.reflect.jvm.internal.impl.descriptors.c cVarC = C();
            if (cVarC == null) {
                throw new IllegalStateException(r.m("Inline class has no primary constructor: ", this).toString());
            }
            List<kotlin.reflect.jvm.internal.impl.descriptors.v0> listF = cVarC.f();
            r.d(listF, "constructor.valueParameters");
            name = ((kotlin.reflect.jvm.internal.impl.descriptors.v0) kotlin.collections.s.c0(listF)).getName();
            r.d(name, "{\n                // Bef…irst().name\n            }");
        }
        ProtoBuf$Type protoBuf$TypeF = kotlin.reflect.jvm.internal.impl.metadata.c.f.f(this.f15555f, this.m.j());
        f0 f0VarO = protoBuf$TypeF == null ? null : TypeDeserializer.o(this.m.i(), protoBuf$TypeF, false, 2, null);
        if (f0VarO == null) {
            Iterator<T> it = W0().c(name, NoLookupLocation.FROM_DESERIALIZATION).iterator();
            Object obj2 = null;
            boolean z = false;
            while (true) {
                if (!it.hasNext()) {
                    if (!z) {
                        break;
                    }
                    obj = obj2;
                    break;
                }
                Object next = it.next();
                if (((j0) next).O() == null) {
                    if (z) {
                        break;
                    }
                    obj2 = next;
                    z = true;
                }
            }
            j0 j0Var = (j0) obj;
            if (j0Var == null) {
                throw new IllegalStateException(r.m("Inline class has no underlying property: ", this).toString());
            }
            f0VarO = (f0) j0Var.getType();
        }
        return new v<>(name, f0VarO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.c R0() {
        Object next;
        if (this.l.isSingleton()) {
            kotlin.reflect.jvm.internal.impl.descriptors.impl.e eVarI = kotlin.reflect.jvm.internal.impl.resolve.b.i(this, o0.f14970a);
            eVarI.c1(n());
            return eVarI;
        }
        List<ProtoBuf$Constructor> constructorList = this.f15555f.getConstructorList();
        r.d(constructorList, "classProto.constructorList");
        Iterator<T> it = constructorList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(!kotlin.reflect.jvm.internal.impl.metadata.c.b.m.d(((ProtoBuf$Constructor) next).getFlags()).booleanValue()));
        ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) next;
        if (protoBuf$Constructor == null) {
            return null;
        }
        return U0().f().m(protoBuf$Constructor, true);
    }

    private final List<kotlin.reflect.jvm.internal.impl.descriptors.c> S0() {
        List<ProtoBuf$Constructor> constructorList = this.f15555f.getConstructorList();
        r.d(constructorList, "classProto.constructorList");
        ArrayList<ProtoBuf$Constructor> arrayList = new ArrayList();
        for (Object obj : constructorList) {
            Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.m.d(((ProtoBuf$Constructor) obj).getFlags());
            r.d(boolD, "IS_SECONDARY.get(it.flags)");
            if (boolD.booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
        for (ProtoBuf$Constructor it : arrayList) {
            MemberDeserializer memberDeserializerF = U0().f();
            r.d(it, "it");
            arrayList2.add(memberDeserializerF.m(it, false));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> T0() {
        if (this.j != Modality.SEALED) {
            return u.j();
        }
        List<Integer> fqNames = this.f15555f.getSealedSubclassFqNameList();
        r.d(fqNames, "fqNames");
        if (!(!fqNames.isEmpty())) {
            return kotlin.reflect.jvm.internal.impl.resolve.a.f15489a.a(this, false);
        }
        ArrayList arrayList = new ArrayList();
        for (Integer index : fqNames) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVarC = U0().c();
            kotlin.reflect.jvm.internal.impl.metadata.c.c cVarG = U0().g();
            r.d(index, "index");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = gVarC.b(q.a(cVarG, index.intValue()));
            if (dVarB != null) {
                arrayList.add(dVarB);
            }
        }
        return arrayList;
    }

    private final DeserializedClassMemberScope W0() {
        return (DeserializedClassMemberScope) this.p.c(this.m.c().m().c());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return this.s.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15338h.d(this.f15555f.getFlags());
        r.d(boolD, "IS_DATA.get(classProto.flags)");
        return boolD.booleanValue();
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.i U0() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    public final ProtoBuf$Class V0() {
        return this.f15555f;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.c.a X0() {
        return this.f15556g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean Y() {
        return kotlin.reflect.jvm.internal.impl.metadata.c.b.f15336f.d(this.f15555f.getFlags()) == ProtoBuf$Class.Kind.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.f k0() {
        return this.n;
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.s.a Z0() {
        return this.x;
    }

    public final boolean a1(kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(name, "name");
        return W0().r().contains(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public k b() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean b0() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.l.d(this.f15555f.getFlags());
        r.d(boolD, "IS_FUN_INTERFACE.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    protected MemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.p.c(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.k.d(this.f15555f.getFlags());
        r.d(boolD, "IS_INLINE_CLASS.get(classProto.flags)");
        return boolD.booleanValue() && this.f15556g.c(1, 4, 2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public s getVisibility() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.j.d(this.f15555f.getFlags());
        r.d(boolD, "IS_EXPECT_CLASS.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.i.d(this.f15555f.getFlags());
        r.d(boolD, "IS_EXTERNAL_CLASS.get(classProto.flags)");
        return boolD.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.k.d(this.f15555f.getFlags());
        r.d(boolD, "IS_INLINE_CLASS.get(classProto.flags)");
        return boolD.booleanValue() && this.f15556g.e(1, 4, 1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        return this.t.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return this.u.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        return this.f15557h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        return this.m.i().k();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public v<f0> t() {
        return this.w.invoke();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("deserialized ");
        sb.append(i0() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        return this.v.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        Boolean boolD = kotlin.reflect.jvm.internal.impl.metadata.c.b.f15337g.d(this.f15555f.getFlags());
        r.d(boolD, "IS_INNER.get(classProto.flags)");
        return boolD.booleanValue();
    }
}
