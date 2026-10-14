package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.common.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KPackageImpl.Data;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001,B\u001d\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\b2\u0006\u0010#\u001a\u00020$H\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020&0\b2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0005H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012 \u000f*\b\u0018\u00010\u000eR\u00020\u00000\u000eR\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0018\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00038TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "jClass", "Ljava/lang/Class;", "usageModuleName", "", "(Ljava/lang/Class;Ljava/lang/String;)V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "kotlin.jvm.PlatformType", "getJClass", "()Ljava/lang/Class;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "methodOwner", "getMethodOwner", Constants.PARAM_SCOPE, "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "getUsageModuleName", "()Ljava/lang/String;", "equals", "", "other", "", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", Constant.PROTOCOL_WEBVIEW_NAME, "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "toString", "Data", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KPackageImpl extends KDeclarationContainerImpl {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k.b<Data> f14705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f14706e;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R%\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\t\u001a\u0004\b \u0010!¨\u0006#"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V", "kotlinClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "getKotlinClass", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;", "kotlinClass$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "members", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getMembers", "()Ljava/util/Collection;", "members$delegate", TtmlNode.TAG_METADATA, "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "getMetadata", "()Lkotlin/Triple;", "metadata$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "multifileFacade", "Ljava/lang/Class;", "getMultifileFacade", "()Ljava/lang/Class;", "multifileFacade$delegate", Constants.PARAM_SCOPE, "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "scope$delegate", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    final class Data extends KDeclarationContainerImpl.Data {
        static final /* synthetic */ KProperty[] i = {v.i(new PropertyReference1Impl(v.b(Data.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), v.i(new PropertyReference1Impl(v.b(Data.class), Constants.PARAM_SCOPE, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), v.i(new PropertyReference1Impl(v.b(Data.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), v.i(new PropertyReference1Impl(v.b(Data.class), TtmlNode.TAG_METADATA, "getMetadata()Lkotlin/Triple;")), v.i(new PropertyReference1Impl(v.b(Data.class), "members", "getMembers()Ljava/util/Collection;"))};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final k.a f14707d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k.a f14708e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final k.b f14709f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final k.b f14710g;

        public Data() {
            super();
            this.f14707d = k.d(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$kotlinClass$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f invoke() {
                    return kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f.c.a(KPackageImpl.this.d());
                }
            });
            this.f14708e = k.d(new Function0<MemberScope>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$scope$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final MemberScope invoke() {
                    kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f fVarC = this.this$0.c();
                    return fVarC != null ? this.this$0.a().c().a(fVarC) : MemberScope.a.b;
                }
            });
            this.f14709f = k.b(new Function0<Class<?>>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$multifileFacade$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Class<?> invoke() {
                    KotlinClassHeader kotlinClassHeaderB;
                    kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f fVarC = this.this$0.c();
                    String strE = (fVarC == null || (kotlinClassHeaderB = fVarC.b()) == null) ? null : kotlinClassHeaderB.e();
                    if (strE == null) {
                        return null;
                    }
                    if (strE.length() > 0) {
                        return KPackageImpl.this.d().getClassLoader().loadClass(t.w(strE, '/', '.', false, 4, null));
                    }
                    return null;
                }
            });
            this.f14710g = k.b(new Function0<Triple<? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ? extends ProtoBuf$Package, ? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e>>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$metadata$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Triple<? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ? extends ProtoBuf$Package, ? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> invoke() {
                    KotlinClassHeader kotlinClassHeaderB;
                    kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f fVarC = this.this$0.c();
                    if (fVarC == null || (kotlinClassHeaderB = fVarC.b()) == null) {
                        return null;
                    }
                    String[] strArrA = kotlinClassHeaderB.a();
                    String[] strArrG = kotlinClassHeaderB.g();
                    if (strArrA == null || strArrG == null) {
                        return null;
                    }
                    Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ProtoBuf$Package> pairM = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.m(strArrA, strArrG);
                    return new Triple<>(pairM.component1(), pairM.component2(), kotlinClassHeaderB.d());
                }
            });
            k.d(new Function0<Collection<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$Data$members$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends KCallableImpl<?>> invoke() {
                    KPackageImpl.Data data = this.this$0;
                    return KPackageImpl.this.v(data.f(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f c() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f) this.f14707d.b(this, i[0]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Triple<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> d() {
            return (Triple) this.f14710g.b(this, i[3]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Class<?> e() {
            return (Class) this.f14709f.b(this, i[2]);
        }

        public final MemberScope f() {
            return (MemberScope) this.f14708e.b(this, i[1]);
        }
    }

    public KPackageImpl(Class<?> jClass, String str) {
        kotlin.jvm.internal.r.e(jClass, "jClass");
        this.f14706e = jClass;
        k.b<Data> bVarB = k.b(new Function0<Data>() { // from class: kotlin.reflect.jvm.internal.KPackageImpl$data$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KPackageImpl.Data invoke() {
                return this.this$0.new Data();
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Data() }");
        this.f14705d = bVarB;
    }

    private final MemberScope E() {
        return this.f14705d.invoke().f();
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> d() {
        return this.f14706e;
    }

    public boolean equals(Object other) {
        return (other instanceof KPackageImpl) && kotlin.jvm.internal.r.a(d(), ((KPackageImpl) other).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> s() {
        return u.j();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.u> t(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        return E().b(name, NoLookupLocation.FROM_REFLECTION);
    }

    public String toString() {
        return "file class " + ReflectClassUtilKt.a(d()).b();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public j0 u(int i) {
        Triple<kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f, ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e> tripleD = this.f14705d.invoke().d();
        if (tripleD == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.jvm.a.f fVarComponent1 = tripleD.component1();
        ProtoBuf$Package protoBuf$PackageComponent2 = tripleD.component2();
        kotlin.reflect.jvm.internal.impl.metadata.jvm.a.e eVarComponent3 = tripleD.component3();
        GeneratedMessageLite.e<ProtoBuf$Package, List<ProtoBuf$Property>> eVar = JvmProtoBuf.n;
        kotlin.jvm.internal.r.d(eVar, "JvmProtoBuf.packageLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) kotlin.reflect.jvm.internal.impl.metadata.c.e.b(protoBuf$PackageComponent2, eVar, i);
        if (protoBuf$Property == null) {
            return null;
        }
        Class<?> clsD = d();
        ProtoBuf$TypeTable typeTable = protoBuf$PackageComponent2.getTypeTable();
        kotlin.jvm.internal.r.d(typeTable, "packageProto.typeTable");
        return (j0) q.h(clsD, protoBuf$Property, fVarComponent1, new kotlin.reflect.jvm.internal.impl.metadata.c.g(typeTable), eVarComponent3, KPackageImpl$getLocalProperty$1$1$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    protected Class<?> w() {
        Class<?> clsE = this.f14705d.invoke().e();
        return clsE != null ? clsE : d();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<j0> x(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        return E().c(name, NoLookupLocation.FROM_REFLECTION);
    }
}
