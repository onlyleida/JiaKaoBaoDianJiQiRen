package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.s;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.KTypeBase;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0013\u0010#\u001a\u00020\u001b2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020'H\u0016J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u001bH\u0000¢\u0006\u0002\b*J\b\u0010+\u001a\u00020,H\u0016R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000f\u0010\fR\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0017X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006-"}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeImpl;", "Lkotlin/jvm/internal/KTypeBase;", "type", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "computeJavaType", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "arguments", "Lkotlin/reflect/KTypeProjection;", "getArguments", "arguments$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "classifier$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "getComputeJavaType$annotations", "()V", "isMarkedNullable", "", "()Z", "javaType", "getJavaType", "()Ljava/lang/reflect/Type;", "getType", "()Lorg/jetbrains/kotlin/types/KotlinType;", "convert", "equals", "other", "", "hashCode", "", "makeNullableAsSpecified", "nullable", "makeNullableAsSpecified$kotlin_reflection", "toString", "", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KTypeImpl implements KTypeBase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f14728e = {v.i(new PropertyReference1Impl(v.b(KTypeImpl.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), v.i(new PropertyReference1Impl(v.b(KTypeImpl.class), "arguments", "getArguments()Ljava/util/List;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.a<Type> f14729a;
    private final k.a b;
    private final k.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a0 f14730d;

    public KTypeImpl(a0 type, Function0<? extends Type> function0) {
        kotlin.jvm.internal.r.e(type, "type");
        this.f14730d = type;
        k.a<Type> aVarD = null;
        k.a<Type> aVar = (k.a) (!(function0 instanceof k.a) ? null : function0);
        if (aVar != null) {
            aVarD = aVar;
        } else if (function0 != null) {
            aVarD = k.d(function0);
        }
        this.f14729a = aVarD;
        this.b = k.d(new Function0<KClassifier>() { // from class: kotlin.reflect.jvm.internal.KTypeImpl$classifier$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KClassifier invoke() {
                KTypeImpl kTypeImpl = this.this$0;
                return kTypeImpl.f(kTypeImpl.getF14730d());
            }
        });
        this.c = k.d(new KTypeImpl$arguments$2(this, function0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KClassifier f(a0 a0Var) {
        a0 type;
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().c();
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            if (fVarC instanceof t0) {
                return new KTypeParameterImpl(null, (t0) fVarC);
            }
            if (!(fVarC instanceof s0)) {
                return null;
            }
            throw new NotImplementedError("An operation is not implemented: Type alias classifiers are not yet supported");
        }
        Class<?> clsP = q.p((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
        if (clsP == null) {
            return null;
        }
        if (!clsP.isArray()) {
            if (y0.m(a0Var)) {
                return new KClassImpl(clsP);
            }
            Class<?> clsD = ReflectClassUtilKt.d(clsP);
            if (clsD != null) {
                clsP = clsD;
            }
            return new KClassImpl(clsP);
        }
        kotlin.reflect.jvm.internal.impl.types.s0 s0Var = (kotlin.reflect.jvm.internal.impl.types.s0) s.E0(a0Var.H0());
        if (s0Var == null || (type = s0Var.getType()) == null) {
            return new KClassImpl(clsP);
        }
        kotlin.jvm.internal.r.d(type, "type.arguments.singleOrN…return KClassImpl(jClass)");
        KClassifier kClassifierF = f(type);
        if (kClassifierF != null) {
            return new KClassImpl(q.f(kotlin.jvm.a.b(kotlin.reflect.jvm.a.a(kClassifierF))));
        }
        throw new KotlinReflectionInternalError("Cannot determine classifier for array element type: " + this);
    }

    @Override // kotlin.jvm.internal.KTypeBase
    public Type b() {
        k.a<Type> aVar = this.f14729a;
        if (aVar != null) {
            return aVar.invoke();
        }
        return null;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: c */
    public KClassifier getF14650a() {
        return (KClassifier) this.b.b(this, f14728e[0]);
    }

    public boolean equals(Object other) {
        return (other instanceof KTypeImpl) && kotlin.jvm.internal.r.a(this.f14730d, ((KTypeImpl) other).f14730d);
    }

    public int hashCode() {
        return this.f14730d.hashCode();
    }

    @Override // kotlin.reflect.KType
    public List<KTypeProjection> i() {
        return (List) this.c.b(this, f14728e[1]);
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: j */
    public boolean getC() {
        return this.f14730d.J0();
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final a0 getF14730d() {
        return this.f14730d;
    }

    public String toString() {
        return ReflectionObjectRenderer.b.h(this.f14730d);
    }

    public /* synthetic */ KTypeImpl(a0 a0Var, Function0 function0, int i, kotlin.jvm.internal.o oVar) {
        this(a0Var, (i & 2) != 0 ? null : function0);
    }
}
