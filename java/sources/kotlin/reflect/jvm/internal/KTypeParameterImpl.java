package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.TypeParameterReference;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u000eH\u0016J\u0010\u0010\"\u001a\u0006\u0012\u0002\b\u00030#*\u00020$H\u0002J\u0010\u0010%\u001a\u0006\u0012\u0002\b\u00030&*\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006("}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "Lkotlin/reflect/KTypeParameter;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;", "isReified", "", "()Z", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "upperBounds", "", "Lkotlin/reflect/KType;", "getUpperBounds", "()Ljava/util/List;", "upperBounds$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "variance", "Lkotlin/reflect/KVariance;", "getVariance", "()Lkotlin/reflect/KVariance;", "equals", "other", "", "hashCode", "", "toString", "getContainerClass", "Ljava/lang/Class;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;", "toKClassImpl", "Lkotlin/reflect/jvm/internal/KClassImpl;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KTypeParameterImpl implements KTypeParameter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f14731d = {v.i(new PropertyReference1Impl(v.b(KTypeParameterImpl.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.a f14732a;
    private final KTypeParameterOwnerImpl b;
    private final t0 c;

    public KTypeParameterImpl(KTypeParameterOwnerImpl kTypeParameterOwnerImpl, t0 descriptor) {
        KClassImpl<?> kClassImplD;
        Object objY;
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        this.c = descriptor;
        this.f14732a = k.d(new Function0<List<? extends KTypeImpl>>() { // from class: kotlin.reflect.jvm.internal.KTypeParameterImpl$upperBounds$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends KTypeImpl> invoke() {
                List<a0> upperBounds = this.this$0.getC().getUpperBounds();
                kotlin.jvm.internal.r.d(upperBounds, "descriptor.upperBounds");
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(upperBounds, 10));
                Iterator<T> it = upperBounds.iterator();
                while (it.hasNext()) {
                    arrayList.add(new KTypeImpl((a0) it.next(), null, 2, null));
                }
                return arrayList;
            }
        });
        if (kTypeParameterOwnerImpl == null) {
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = getC().b();
            kotlin.jvm.internal.r.d(kVarB, "descriptor.containingDeclaration");
            if (kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                objY = d((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB);
            } else {
                if (!(kVarB instanceof CallableMemberDescriptor)) {
                    throw new KotlinReflectionInternalError("Unknown type parameter container: " + kVarB);
                }
                kotlin.reflect.jvm.internal.impl.descriptors.k kVarB2 = ((CallableMemberDescriptor) kVarB).b();
                kotlin.jvm.internal.r.d(kVarB2, "declaration.containingDeclaration");
                if (kVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                    kClassImplD = d((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB2);
                } else {
                    DeserializedMemberDescriptor deserializedMemberDescriptor = (DeserializedMemberDescriptor) (!(kVarB instanceof DeserializedMemberDescriptor) ? null : kVarB);
                    if (deserializedMemberDescriptor == null) {
                        throw new KotlinReflectionInternalError("Non-class callable descriptor must be deserialized: " + kVarB);
                    }
                    KClass kClassE = kotlin.jvm.a.e(b(deserializedMemberDescriptor));
                    Objects.requireNonNull(kClassE, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
                    kClassImplD = (KClassImpl) kClassE;
                }
                objY = kVarB.y(new CreateKCallableVisitor(kClassImplD), kotlin.v.f15822a);
            }
            kotlin.jvm.internal.r.d(objY, "when (val declaration = … $declaration\")\n        }");
            kTypeParameterOwnerImpl = (KTypeParameterOwnerImpl) objY;
        }
        this.b = kTypeParameterOwnerImpl;
    }

    private final Class<?> b(DeserializedMemberDescriptor deserializedMemberDescriptor) {
        Class<?> clsD;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVarI = deserializedMemberDescriptor.I();
        if (!(dVarI instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.g)) {
            dVarI = null;
        }
        kotlin.reflect.jvm.internal.impl.load.kotlin.g gVar = (kotlin.reflect.jvm.internal.impl.load.kotlin.g) dVarI;
        kotlin.reflect.jvm.internal.impl.load.kotlin.m mVarF = gVar != null ? gVar.f() : null;
        kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f fVar = (kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f) (mVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f ? mVarF : null);
        if (fVar != null && (clsD = fVar.d()) != null) {
            return clsD;
        }
        throw new KotlinReflectionInternalError("Container of deserialized member is not resolved: " + deserializedMemberDescriptor);
    }

    private final KClassImpl<?> d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Class<?> clsP = q.p(dVar);
        KClassImpl<?> kClassImpl = (KClassImpl) (clsP != null ? kotlin.jvm.a.e(clsP) : null);
        if (kClassImpl != null) {
            return kClassImpl;
        }
        throw new KotlinReflectionInternalError("Type parameter container is not resolved: " + dVar.b());
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public t0 getC() {
        return this.c;
    }

    public boolean equals(Object other) {
        if (other instanceof KTypeParameterImpl) {
            KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) other;
            if (kotlin.jvm.internal.r.a(this.b, kTypeParameterImpl.b) && kotlin.jvm.internal.r.a(getName(), kTypeParameterImpl.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KTypeParameter
    public String getName() {
        String strB = getC().getName().b();
        kotlin.jvm.internal.r.d(strB, "descriptor.name.asString()");
        return strB;
    }

    @Override // kotlin.reflect.KTypeParameter
    public List<KType> getUpperBounds() {
        return (List) this.f14732a.b(this, f14731d[0]);
    }

    @Override // kotlin.reflect.KTypeParameter
    public KVariance getVariance() {
        int i = h.f14772a[getC().getVariance().ordinal()];
        if (i == 1) {
            return KVariance.INVARIANT;
        }
        if (i == 2) {
            return KVariance.IN;
        }
        if (i == 3) {
            return KVariance.OUT;
        }
        throw new NoWhenBranchMatchedException();
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + getName().hashCode();
    }

    public String toString() {
        return TypeParameterReference.f14654a.a(this);
    }
}
