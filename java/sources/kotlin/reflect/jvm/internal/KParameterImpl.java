package kotlin.reflect.jvm.internal;

import com.mobile.auth.gatewayauth.Constant;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B/\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\u0013\u0010)\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\b\u0010,\u001a\u00020\u0005H\u0016J\b\u0010-\u001a\u00020\"H\u0016R!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u0004\u0018\u00010\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006."}, d2 = {"Lkotlin/reflect/jvm/internal/KParameterImpl;", "Lkotlin/reflect/KParameter;", "callable", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "index", "", "kind", "Lkotlin/reflect/KParameter$Kind;", "computeDescriptor", "Lkotlin/Function0;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getCallable", "()Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;", "descriptor$delegate", "getIndex", "()I", "isOptional", "", "()Z", "isVararg", "getKind", "()Lkotlin/reflect/KParameter$Kind;", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "type", "Lkotlin/reflect/KType;", "getType", "()Lkotlin/reflect/KType;", "equals", "other", "", "hashCode", "toString", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KParameterImpl implements KParameter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f14712e = {v.i(new PropertyReference1Impl(v.b(KParameterImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), v.i(new PropertyReference1Impl(v.b(KParameterImpl.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.a f14713a;
    private final KCallableImpl<?> b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final KParameter.Kind f14714d;

    public KParameterImpl(KCallableImpl<?> callable, int i, KParameter.Kind kind, Function0<? extends g0> computeDescriptor) {
        kotlin.jvm.internal.r.e(callable, "callable");
        kotlin.jvm.internal.r.e(kind, "kind");
        kotlin.jvm.internal.r.e(computeDescriptor, "computeDescriptor");
        this.b = callable;
        this.c = i;
        this.f14714d = kind;
        this.f14713a = k.d(computeDescriptor);
        k.d(new Function0<List<? extends Annotation>>() { // from class: kotlin.reflect.jvm.internal.KParameterImpl$annotations$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Annotation> invoke() {
                return q.e(this.this$0.k());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g0 k() {
        return (g0) this.f14713a.b(this, f14712e[0]);
    }

    public boolean equals(Object other) {
        if (other instanceof KParameterImpl) {
            KParameterImpl kParameterImpl = (KParameterImpl) other;
            if (kotlin.jvm.internal.r.a(this.b, kParameterImpl.b) && getC() == kParameterImpl.getC()) {
                return true;
            }
        }
        return false;
    }

    public final KCallableImpl<?> f() {
        return this.b;
    }

    @Override // kotlin.reflect.KParameter
    /* JADX INFO: renamed from: g, reason: from getter */
    public KParameter.Kind getF14714d() {
        return this.f14714d;
    }

    @Override // kotlin.reflect.KParameter
    public String getName() {
        g0 g0VarK = k();
        if (!(g0VarK instanceof v0)) {
            g0VarK = null;
        }
        v0 v0Var = (v0) g0VarK;
        if (v0Var == null || v0Var.b().d0()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.f name = v0Var.getName();
        kotlin.jvm.internal.r.d(name, "valueParameter.name");
        if (name.h()) {
            return null;
        }
        return name.b();
    }

    @Override // kotlin.reflect.KParameter
    public KType getType() {
        a0 type = k().getType();
        kotlin.jvm.internal.r.d(type, "descriptor.type");
        return new KTypeImpl(type, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KParameterImpl$type$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Type invoke() {
                g0 g0VarK = this.this$0.k();
                if (!(g0VarK instanceof m0) || !kotlin.jvm.internal.r.a(q.i(this.this$0.f().w()), g0VarK) || this.this$0.f().w().g() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                    return this.this$0.f().q().a().get(this.this$0.getC());
                }
                kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = this.this$0.f().w().b();
                Objects.requireNonNull(kVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                Class<?> clsP = q.p((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB);
                if (clsP != null) {
                    return clsP;
                }
                throw new KotlinReflectionInternalError("Cannot determine receiver Java type of inherited declaration: " + g0VarK);
            }
        });
    }

    @Override // kotlin.reflect.KParameter
    public boolean h() {
        g0 g0VarK = k();
        return (g0VarK instanceof v0) && ((v0) g0VarK).t0() != null;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + Integer.valueOf(getC()).hashCode();
    }

    @Override // kotlin.reflect.KParameter
    public boolean l() {
        g0 g0VarK = k();
        if (!(g0VarK instanceof v0)) {
            g0VarK = null;
        }
        v0 v0Var = (v0) g0VarK;
        if (v0Var != null) {
            return DescriptorUtilsKt.a(v0Var);
        }
        return false;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public int getC() {
        return this.c;
    }

    public String toString() {
        return ReflectionObjectRenderer.b.f(this);
    }
}
