package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.collections.u;
import kotlin.collections.v0;
import kotlin.collections.y;
import kotlin.collections.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.protobuf.n;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class DeserializedMemberScope extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f15565f = {v.i(new PropertyReference1Impl(v.b(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), v.i(new PropertyReference1Impl(v.b(DeserializedMemberScope.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.i b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f15566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.i f15567e;

    /* JADX INFO: Access modifiers changed from: private */
    final class NoReorderImplementation implements a {
        static final /* synthetic */ KProperty<Object>[] o = {v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "allProperties", "getAllProperties()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), v.i(new PropertyReference1Impl(v.b(NoReorderImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<ProtoBuf$Function> f15568a;
        private final List<ProtoBuf$Property> b;
        private final List<ProtoBuf$TypeAlias> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15569d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15570e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15571f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15572g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15573h;
        private final kotlin.reflect.jvm.internal.impl.storage.h i;
        private final kotlin.reflect.jvm.internal.impl.storage.h j;
        private final kotlin.reflect.jvm.internal.impl.storage.h k;
        private final kotlin.reflect.jvm.internal.impl.storage.h l;
        private final kotlin.reflect.jvm.internal.impl.storage.h m;
        final /* synthetic */ DeserializedMemberScope n;

        public NoReorderImplementation(final DeserializedMemberScope this$0, List<ProtoBuf$Function> functionList, List<ProtoBuf$Property> propertyList, List<ProtoBuf$TypeAlias> typeAliasList) {
            r.e(this$0, "this$0");
            r.e(functionList, "functionList");
            r.e(propertyList, "propertyList");
            r.e(typeAliasList, "typeAliasList");
            this.n = this$0;
            this.f15568a = functionList;
            this.b = propertyList;
            this.c = this$0.q().c().g().c() ? typeAliasList : u.j();
            this.f15569d = this$0.q().h().c(new Function0<List<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$declaredFunctions$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends n0> invoke() {
                    return this.this$0.v();
                }
            });
            this.f15570e = this$0.q().h().c(new Function0<List<? extends j0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$declaredProperties$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends j0> invoke() {
                    return this.this$0.y();
                }
            });
            this.f15571f = this$0.q().h().c(new Function0<List<? extends s0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$allTypeAliases$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends s0> invoke() {
                    return this.this$0.z();
                }
            });
            this.f15572g = this$0.q().h().c(new Function0<List<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$allFunctions$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends n0> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.D(), this.this$0.t());
                }
            });
            this.f15573h = this$0.q().h().c(new Function0<List<? extends j0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$allProperties$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends j0> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.E(), this.this$0.u());
                }
            });
            this.i = this$0.q().h().c(new Function0<Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends s0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$typeAliasesByName$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends s0> invoke() {
                    List listC = this.this$0.C();
                    LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(kotlin.collections.n0.d(kotlin.collections.v.u(listC, 10)), 16));
                    for (Object obj : listC) {
                        kotlin.reflect.jvm.internal.impl.name.f name = ((s0) obj).getName();
                        r.d(name, "it.name");
                        linkedHashMap.put(name, obj);
                    }
                    return linkedHashMap;
                }
            });
            this.j = this$0.q().h().c(new Function0<Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends List<? extends n0>>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$functionsByName$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends List<? extends n0>> invoke() {
                    List listA = this.this$0.A();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj : listA) {
                        kotlin.reflect.jvm.internal.impl.name.f name = ((n0) obj).getName();
                        r.d(name, "it.name");
                        Object arrayList = linkedHashMap.get(name);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            linkedHashMap.put(name, arrayList);
                        }
                        ((List) arrayList).add(obj);
                    }
                    return linkedHashMap;
                }
            });
            this.k = this$0.q().h().c(new Function0<Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends List<? extends j0>>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$propertiesByName$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends List<? extends j0>> invoke() {
                    List listB = this.this$0.B();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Object obj : listB) {
                        kotlin.reflect.jvm.internal.impl.name.f name = ((j0) obj).getName();
                        r.d(name, "it.name");
                        Object arrayList = linkedHashMap.get(name);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            linkedHashMap.put(name, arrayList);
                        }
                        ((List) arrayList).add(obj);
                    }
                    return linkedHashMap;
                }
            });
            this.l = this$0.q().h().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$functionNames$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    DeserializedMemberScope.NoReorderImplementation noReorderImplementation = this.this$0;
                    List list = noReorderImplementation.f15568a;
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    DeserializedMemberScope deserializedMemberScope = noReorderImplementation.n;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(q.b(deserializedMemberScope.b.g(), ((ProtoBuf$Function) ((n) it.next())).getName()));
                    }
                    return v0.h(linkedHashSet, this$0.u());
                }
            });
            this.m = this$0.q().h().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$variableNames$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    DeserializedMemberScope.NoReorderImplementation noReorderImplementation = this.this$0;
                    List list = noReorderImplementation.b;
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    DeserializedMemberScope deserializedMemberScope = noReorderImplementation.n;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(q.b(deserializedMemberScope.b.g(), ((ProtoBuf$Property) ((n) it.next())).getName()));
                    }
                    return v0.h(linkedHashSet, this$0.v());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<n0> A() {
            return (List) l.a(this.f15572g, this, o[3]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<j0> B() {
            return (List) l.a(this.f15573h, this, o[4]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<s0> C() {
            return (List) l.a(this.f15571f, this, o[2]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<n0> D() {
            return (List) l.a(this.f15569d, this, o[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<j0> E() {
            return (List) l.a(this.f15570e, this, o[1]);
        }

        private final Map<kotlin.reflect.jvm.internal.impl.name.f, Collection<n0>> F() {
            return (Map) l.a(this.j, this, o[6]);
        }

        private final Map<kotlin.reflect.jvm.internal.impl.name.f, Collection<j0>> G() {
            return (Map) l.a(this.k, this, o[7]);
        }

        private final Map<kotlin.reflect.jvm.internal.impl.name.f, s0> H() {
            return (Map) l.a(this.i, this, o[5]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<n0> t() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setU = this.n.u();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = setU.iterator();
            while (it.hasNext()) {
                z.B(arrayList, w((kotlin.reflect.jvm.internal.impl.name.f) it.next()));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<j0> u() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setV = this.n.v();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = setV.iterator();
            while (it.hasNext()) {
                z.B(arrayList, x((kotlin.reflect.jvm.internal.impl.name.f) it.next()));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<n0> v() {
            List<ProtoBuf$Function> list = this.f15568a;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                n0 n0VarN = deserializedMemberScope.b.f().n((ProtoBuf$Function) ((n) it.next()));
                if (!deserializedMemberScope.y(n0VarN)) {
                    n0VarN = null;
                }
                if (n0VarN != null) {
                    arrayList.add(n0VarN);
                }
            }
            return arrayList;
        }

        private final List<n0> w(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            List<n0> listD = D();
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : listD) {
                if (r.a(((k) obj).getName(), fVar)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.l(fVar, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        private final List<j0> x(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            List<j0> listE = E();
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            for (Object obj : listE) {
                if (r.a(((k) obj).getName(), fVar)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.m(fVar, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<j0> y() {
            List<ProtoBuf$Property> list = this.b;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                j0 j0VarP = deserializedMemberScope.b.f().p((ProtoBuf$Property) ((n) it.next()));
                if (j0VarP != null) {
                    arrayList.add(j0VarP);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<s0> z() {
            List<ProtoBuf$TypeAlias> list = this.c;
            DeserializedMemberScope deserializedMemberScope = this.n;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                s0 s0VarQ = deserializedMemberScope.b.f().q((ProtoBuf$TypeAlias) ((n) it.next()));
                if (s0VarQ != null) {
                    arrayList.add(s0VarQ);
                }
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            return (Set) l.a(this.l, this, o[8]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Collection<n0> collection;
            r.e(name, "name");
            r.e(location, "location");
            return (a().contains(name) && (collection = F().get(name)) != null) ? collection : u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Collection<j0> collection;
            r.e(name, "name");
            r.e(location, "location");
            return (d().contains(name) && (collection = G().get(name)) != null) ? collection : u.j();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            return (Set) l.a(this.m, this, o[9]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            List<ProtoBuf$TypeAlias> list = this.c;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope = this.n;
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(q.b(deserializedMemberScope.b.g(), ((ProtoBuf$TypeAlias) ((n) it.next())).getName()));
            }
            return linkedHashSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public void f(Collection<k> result, kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(result, "result");
            r.e(kindFilter, "kindFilter");
            r.e(nameFilter, "nameFilter");
            r.e(location, "location");
            if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.i())) {
                for (Object obj : B()) {
                    kotlin.reflect.jvm.internal.impl.name.f name = ((j0) obj).getName();
                    r.d(name, "it.name");
                    if (nameFilter.invoke(name).booleanValue()) {
                        result.add(obj);
                    }
                }
            }
            if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.d())) {
                for (Object obj2 : A()) {
                    kotlin.reflect.jvm.internal.impl.name.f name2 = ((n0) obj2).getName();
                    r.d(name2, "it.name");
                    if (nameFilter.invoke(name2).booleanValue()) {
                        result.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public s0 g(kotlin.reflect.jvm.internal.impl.name.f name) {
            r.e(name, "name");
            return H().get(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class OptimizedImplementation implements a {
        static final /* synthetic */ KProperty<Object>[] j = {v.i(new PropertyReference1Impl(v.b(OptimizedImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), v.i(new PropertyReference1Impl(v.b(OptimizedImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> f15574a;
        private final Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> b;
        private final Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<n0>> f15575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<j0>> f15576e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.name.f, s0> f15577f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15578g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h f15579h;
        final /* synthetic */ DeserializedMemberScope i;

        public OptimizedImplementation(DeserializedMemberScope this$0, List<ProtoBuf$Function> functionList, List<ProtoBuf$Property> propertyList, List<ProtoBuf$TypeAlias> typeAliasList) throws IOException {
            Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> mapH;
            r.e(this$0, "this$0");
            r.e(functionList, "functionList");
            r.e(propertyList, "propertyList");
            r.e(typeAliasList, "typeAliasList");
            this.i = this$0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : functionList) {
                kotlin.reflect.jvm.internal.impl.name.f fVarB = q.b(this$0.b.g(), ((ProtoBuf$Function) ((n) obj)).getName());
                Object arrayList = linkedHashMap.get(fVarB);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(fVarB, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.f15574a = p(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope = this.i;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj2 : propertyList) {
                kotlin.reflect.jvm.internal.impl.name.f fVarB2 = q.b(deserializedMemberScope.b.g(), ((ProtoBuf$Property) ((n) obj2)).getName());
                Object arrayList2 = linkedHashMap2.get(fVarB2);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(fVarB2, arrayList2);
                }
                ((List) arrayList2).add(obj2);
            }
            this.b = p(linkedHashMap2);
            if (this.i.q().c().g().c()) {
                DeserializedMemberScope deserializedMemberScope2 = this.i;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj3 : typeAliasList) {
                    kotlin.reflect.jvm.internal.impl.name.f fVarB3 = q.b(deserializedMemberScope2.b.g(), ((ProtoBuf$TypeAlias) ((n) obj3)).getName());
                    Object arrayList3 = linkedHashMap3.get(fVarB3);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                        linkedHashMap3.put(fVarB3, arrayList3);
                    }
                    ((List) arrayList3).add(obj3);
                }
                mapH = p(linkedHashMap3);
            } else {
                mapH = o0.h();
            }
            this.c = mapH;
            this.f15575d = this.i.q().h().i(new Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functions$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Collection<n0> invoke(kotlin.reflect.jvm.internal.impl.name.f it) {
                    r.e(it, "it");
                    return this.this$0.m(it);
                }
            });
            this.f15576e = this.i.q().h().i(new Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends j0>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$properties$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Collection<j0> invoke(kotlin.reflect.jvm.internal.impl.name.f it) {
                    r.e(it, "it");
                    return this.this$0.n(it);
                }
            });
            this.f15577f = this.i.q().h().g(new Function1<kotlin.reflect.jvm.internal.impl.name.f, s0>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$typeAliasByName$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final s0 invoke(kotlin.reflect.jvm.internal.impl.name.f it) {
                    r.e(it, "it");
                    return this.this$0.o(it);
                }
            });
            m mVarH = this.i.q().h();
            final DeserializedMemberScope deserializedMemberScope3 = this.i;
            this.f15578g = mVarH.c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$functionNames$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    return v0.h(this.this$0.f15574a.keySet(), deserializedMemberScope3.u());
                }
            });
            m mVarH2 = this.i.q().h();
            final DeserializedMemberScope deserializedMemberScope4 = this.i;
            this.f15579h = mVarH2.c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$variableNames$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                    return v0.h(this.this$0.b.keySet(), deserializedMemberScope4.v());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<n0> m(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> map = this.f15574a;
            p<ProtoBuf$Function> PARSER = ProtoBuf$Function.PARSER;
            r.d(PARSER, "PARSER");
            DeserializedMemberScope deserializedMemberScope = this.i;
            byte[] bArr = map.get(fVar);
            List<ProtoBuf$Function> listA = bArr == null ? null : SequencesKt___SequencesKt.A(SequencesKt__SequencesKt.i(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(PARSER, new ByteArrayInputStream(bArr), this.i)));
            if (listA == null) {
                listA = u.j();
            }
            ArrayList arrayList = new ArrayList(listA.size());
            for (ProtoBuf$Function it : listA) {
                MemberDeserializer memberDeserializerF = deserializedMemberScope.q().f();
                r.d(it, "it");
                n0 n0VarN = memberDeserializerF.n(it);
                if (!deserializedMemberScope.y(n0VarN)) {
                    n0VarN = null;
                }
                if (n0VarN != null) {
                    arrayList.add(n0VarN);
                }
            }
            deserializedMemberScope.l(fVar, arrayList);
            return kotlin.reflect.jvm.internal.impl.utils.a.c(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<j0> n(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> map = this.b;
            p<ProtoBuf$Property> PARSER = ProtoBuf$Property.PARSER;
            r.d(PARSER, "PARSER");
            DeserializedMemberScope deserializedMemberScope = this.i;
            byte[] bArr = map.get(fVar);
            List<ProtoBuf$Property> listA = bArr == null ? null : SequencesKt___SequencesKt.A(SequencesKt__SequencesKt.i(new DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1(PARSER, new ByteArrayInputStream(bArr), this.i)));
            if (listA == null) {
                listA = u.j();
            }
            ArrayList arrayList = new ArrayList(listA.size());
            for (ProtoBuf$Property it : listA) {
                MemberDeserializer memberDeserializerF = deserializedMemberScope.q().f();
                r.d(it, "it");
                j0 j0VarP = memberDeserializerF.p(it);
                if (j0VarP != null) {
                    arrayList.add(j0VarP);
                }
            }
            deserializedMemberScope.m(fVar, arrayList);
            return kotlin.reflect.jvm.internal.impl.utils.a.c(arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final s0 o(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            ProtoBuf$TypeAlias delimitedFrom;
            byte[] bArr = this.c.get(fVar);
            if (bArr == null || (delimitedFrom = ProtoBuf$TypeAlias.parseDelimitedFrom(new ByteArrayInputStream(bArr), this.i.q().c().j())) == null) {
                return null;
            }
            return this.i.q().f().q(delimitedFrom);
        }

        private final Map<kotlin.reflect.jvm.internal.impl.name.f, byte[]> p(Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends Collection<? extends kotlin.reflect.jvm.internal.impl.protobuf.a>> map) throws IOException {
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.n0.d(map.size()));
            Iterator<T> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(iterable, 10));
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    ((kotlin.reflect.jvm.internal.impl.protobuf.a) it2.next()).writeDelimitedTo(byteArrayOutputStream);
                    arrayList.add(kotlin.v.f15822a);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            return (Set) l.a(this.f15578g, this, j[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(name, "name");
            r.e(location, "location");
            return !a().contains(name) ? u.j() : this.f15575d.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(name, "name");
            r.e(location, "location");
            return !d().contains(name) ? u.j() : this.f15576e.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            return (Set) l.a(this.f15579h, this, j[1]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            return this.c.keySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public void f(Collection<k> result, kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            r.e(result, "result");
            r.e(kindFilter, "kindFilter");
            r.e(nameFilter, "nameFilter");
            r.e(location, "location");
            if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.i())) {
                Set<kotlin.reflect.jvm.internal.impl.name.f> setD = d();
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.name.f fVar : setD) {
                    if (nameFilter.invoke(fVar).booleanValue()) {
                        arrayList.addAll(c(fVar, location));
                    }
                }
                kotlin.reflect.jvm.internal.impl.resolve.e INSTANCE = kotlin.reflect.jvm.internal.impl.resolve.e.f15507a;
                r.d(INSTANCE, "INSTANCE");
                y.A(arrayList, INSTANCE);
                result.addAll(arrayList);
            }
            if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.d())) {
                Set<kotlin.reflect.jvm.internal.impl.name.f> setA = a();
                ArrayList arrayList2 = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.name.f fVar2 : setA) {
                    if (nameFilter.invoke(fVar2).booleanValue()) {
                        arrayList2.addAll(b(fVar2, location));
                    }
                }
                kotlin.reflect.jvm.internal.impl.resolve.e INSTANCE2 = kotlin.reflect.jvm.internal.impl.resolve.e.f15507a;
                r.d(INSTANCE2, "INSTANCE");
                y.A(arrayList2, INSTANCE2);
                result.addAll(arrayList2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.a
        public s0 g(kotlin.reflect.jvm.internal.impl.name.f name) {
            r.e(name, "name");
            return this.f15577f.invoke(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface a {
        Set<kotlin.reflect.jvm.internal.impl.name.f> a();

        Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

        Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

        Set<kotlin.reflect.jvm.internal.impl.name.f> d();

        Set<kotlin.reflect.jvm.internal.impl.name.f> e();

        void f(Collection<k> collection, kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

        s0 g(kotlin.reflect.jvm.internal.impl.name.f fVar);
    }

    protected DeserializedMemberScope(kotlin.reflect.jvm.internal.impl.serialization.deserialization.i c, List<ProtoBuf$Function> functionList, List<ProtoBuf$Property> propertyList, List<ProtoBuf$TypeAlias> typeAliasList, final Function0<? extends Collection<kotlin.reflect.jvm.internal.impl.name.f>> classNames) {
        r.e(c, "c");
        r.e(functionList, "functionList");
        r.e(propertyList, "propertyList");
        r.e(typeAliasList, "typeAliasList");
        r.e(classNames, "classNames");
        this.b = c;
        this.c = o(functionList, propertyList, typeAliasList);
        this.f15566d = c.h().c(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$classNames$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                return CollectionsKt___CollectionsKt.Q0(classNames.invoke());
            }
        });
        this.f15567e = c.h().e(new Function0<Set<? extends kotlin.reflect.jvm.internal.impl.name.f>>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$classifierNamesLazy$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends kotlin.reflect.jvm.internal.impl.name.f> invoke() {
                Set<kotlin.reflect.jvm.internal.impl.name.f> setT = this.this$0.t();
                if (setT == null) {
                    return null;
                }
                return v0.h(v0.h(this.this$0.r(), this.this$0.c.e()), setT);
            }
        });
    }

    private final a o(List<ProtoBuf$Function> list, List<ProtoBuf$Property> list2, List<ProtoBuf$TypeAlias> list3) {
        return this.b.c().g().a() ? new NoReorderImplementation(this, list, list2, list3) : new OptimizedImplementation(this, list, list2, list3);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d p(kotlin.reflect.jvm.internal.impl.name.f fVar) {
        return this.b.c().b(n(fVar));
    }

    private final Set<kotlin.reflect.jvm.internal.impl.name.f> s() {
        return (Set) l.b(this.f15567e, this, f15565f[1]);
    }

    private final s0 w(kotlin.reflect.jvm.internal.impl.name.f fVar) {
        return this.c.g(fVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
        return this.c.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<n0> b(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return this.c.b(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return this.c.c(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
        return this.c.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
        return s();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        if (x(name)) {
            return p(name);
        }
        if (this.c.e().contains(name)) {
            return w(name);
        }
        return null;
    }

    protected abstract void j(Collection<k> collection, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1);

    protected final Collection<k> k(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        r.e(location, "location");
        ArrayList arrayList = new ArrayList(0);
        kotlin.reflect.jvm.internal.impl.resolve.scopes.d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c;
        if (kindFilter.a(aVar.g())) {
            j(arrayList, nameFilter);
        }
        this.c.f(arrayList, kindFilter, nameFilter, location);
        if (kindFilter.a(aVar.c())) {
            for (kotlin.reflect.jvm.internal.impl.name.f fVar : r()) {
                if (nameFilter.invoke(fVar).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, p(fVar));
                }
            }
        }
        if (kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.h())) {
            for (kotlin.reflect.jvm.internal.impl.name.f fVar2 : this.c.e()) {
                if (nameFilter.invoke(fVar2).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, this.c.g(fVar2));
                }
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.c(arrayList);
    }

    protected void l(kotlin.reflect.jvm.internal.impl.name.f name, List<n0> functions) {
        r.e(name, "name");
        r.e(functions, "functions");
    }

    protected void m(kotlin.reflect.jvm.internal.impl.name.f name, List<j0> descriptors) {
        r.e(name, "name");
        r.e(descriptors, "descriptors");
    }

    protected abstract kotlin.reflect.jvm.internal.impl.name.b n(kotlin.reflect.jvm.internal.impl.name.f fVar);

    protected final kotlin.reflect.jvm.internal.impl.serialization.deserialization.i q() {
        return this.b;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.name.f> r() {
        return (Set) l.a(this.f15566d, this, f15565f[0]);
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> t();

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> u();

    protected abstract Set<kotlin.reflect.jvm.internal.impl.name.f> v();

    protected boolean x(kotlin.reflect.jvm.internal.impl.name.f name) {
        r.e(name, "name");
        return r().contains(name);
    }

    protected boolean y(n0 function) {
        r.e(function, "function");
        return true;
    }
}
