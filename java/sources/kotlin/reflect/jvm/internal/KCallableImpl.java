package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.collections.y;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J%\u00106\u001a\u00028\u00002\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0016¢\u0006\u0002\u0010:J#\u0010;\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0002¢\u0006\u0002\u0010=J#\u0010>\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0016¢\u0006\u0002\u0010=J3\u0010?\u001a\u00028\u00002\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<2\f\u0010@\u001a\b\u0012\u0002\b\u0003\u0018\u00010AH\u0000¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020,H\u0002J\n\u0010F\u001a\u0004\u0018\u00010GH\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\b \t*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\n\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\f \t*\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u000e0\u000e0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010 \t*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0017R\u0012\u0010\u001e\u001a\u00020\u001fX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010$R\u0014\u0010%\u001a\u00020#8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0012\u0010&\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$R\u0014\u0010'\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010$R\u0014\u0010(\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0013R\u0014\u0010+\u001a\u00020,8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0013R\u0016\u00102\u001a\u0004\u0018\u0001038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00105¨\u0006H"}, d2 = {"Lkotlin/reflect/jvm/internal/KCallableImpl;", "R", "Lkotlin/reflect/KCallable;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "()V", "_annotations", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "", "", "kotlin.jvm.PlatformType", "_parameters", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "_returnType", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "_typeParameters", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "annotations", "getAnnotations", "()Ljava/util/List;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;", "isAbstract", "", "()Z", "isAnnotationConstructor", "isBound", "isFinal", "isOpen", "parameters", "getParameters", "returnType", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "call", "args", "", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "callAnnotationConstructor", "", "(Ljava/util/Map;)Ljava/lang/Object;", "callBy", "callDefaultMethod", "continuationArgument", "Lkotlin/coroutines/Continuation;", "callDefaultMethod$kotlin_reflection", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "defaultEmptyArray", "type", "extractContinuationArgument", "Ljava/lang/reflect/Type;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public abstract class KCallableImpl<R> implements KCallable<R>, KTypeParameterOwnerImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.a<List<Annotation>> f14686a;
    private final k.a<ArrayList<KParameter>> b;
    private final k.a<KTypeImpl> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k.a<List<KTypeParameterImpl>> f14687d;

    public KCallableImpl() {
        k.a<List<Annotation>> aVarD = k.d(new Function0<List<? extends Annotation>>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_annotations$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Annotation> invoke() {
                return q.e(this.this$0.w());
            }
        });
        kotlin.jvm.internal.r.d(aVarD, "ReflectProperties.lazySo…or.computeAnnotations() }");
        this.f14686a = aVarD;
        k.a<ArrayList<KParameter>> aVarD2 = k.d(new Function0<ArrayList<KParameter>>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1

            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
            public static final class a<T> implements Comparator {
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return kotlin.x.b.c(((KParameter) t).getName(), ((KParameter) t2).getName());
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<KParameter> invoke() {
                int i;
                final CallableMemberDescriptor callableMemberDescriptorW = this.this$0.w();
                ArrayList<KParameter> arrayList = new ArrayList<>();
                final int i2 = 0;
                if (this.this$0.v()) {
                    i = 0;
                } else {
                    final m0 m0VarI = q.i(callableMemberDescriptorW);
                    if (m0VarI != null) {
                        arrayList.add(new KParameterImpl(this.this$0, 0, KParameter.Kind.INSTANCE, new Function0<g0>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.1
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final g0 invoke() {
                                return m0VarI;
                            }
                        }));
                        i = 1;
                    } else {
                        i = 0;
                    }
                    final m0 m0VarO = callableMemberDescriptorW.O();
                    if (m0VarO != null) {
                        arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.EXTENSION_RECEIVER, new Function0<g0>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.2
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final g0 invoke() {
                                return m0VarO;
                            }
                        }));
                        i++;
                    }
                }
                List<v0> listF = callableMemberDescriptorW.f();
                kotlin.jvm.internal.r.d(listF, "descriptor.valueParameters");
                int size = listF.size();
                while (i2 < size) {
                    arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.VALUE, new Function0<g0>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final g0 invoke() {
                            v0 v0Var = callableMemberDescriptorW.f().get(i2);
                            kotlin.jvm.internal.r.d(v0Var, "descriptor.valueParameters[i]");
                            return v0Var;
                        }
                    }));
                    i2++;
                    i++;
                }
                if (this.this$0.u() && (callableMemberDescriptorW instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.a) && arrayList.size() > 1) {
                    y.A(arrayList, new a());
                }
                arrayList.trimToSize();
                return arrayList;
            }
        });
        kotlin.jvm.internal.r.d(aVarD2, "ReflectProperties.lazySo…ze()\n        result\n    }");
        this.b = aVarD2;
        k.a<KTypeImpl> aVarD3 = k.d(new Function0<KTypeImpl>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_returnType$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KTypeImpl invoke() {
                a0 returnType = this.this$0.w().getReturnType();
                kotlin.jvm.internal.r.c(returnType);
                kotlin.jvm.internal.r.d(returnType, "descriptor.returnType!!");
                return new KTypeImpl(returnType, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_returnType$1.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Type invoke() {
                        Type typeP = KCallableImpl$_returnType$1.this.this$0.p();
                        return typeP != null ? typeP : KCallableImpl$_returnType$1.this.this$0.q().getF14759a();
                    }
                });
            }
        });
        kotlin.jvm.internal.r.d(aVarD3, "ReflectProperties.lazySo…eturnType\n        }\n    }");
        this.c = aVarD3;
        k.a<List<KTypeParameterImpl>> aVarD4 = k.d(new Function0<List<? extends KTypeParameterImpl>>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_typeParameters$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends KTypeParameterImpl> invoke() {
                List<t0> typeParameters = this.this$0.w().getTypeParameters();
                kotlin.jvm.internal.r.d(typeParameters, "descriptor.typeParameters");
                ArrayList arrayList = new ArrayList(v.u(typeParameters, 10));
                for (t0 descriptor : typeParameters) {
                    KCallableImpl kCallableImpl = this.this$0;
                    kotlin.jvm.internal.r.d(descriptor, "descriptor");
                    arrayList.add(new KTypeParameterImpl(kCallableImpl, descriptor));
                }
                return arrayList;
            }
        });
        kotlin.jvm.internal.r.d(aVarD4, "ReflectProperties.lazySo…this, descriptor) }\n    }");
        this.f14687d = aVarD4;
    }

    private final R f(Map<KParameter, ? extends Object> map) throws IllegalCallableAccessException {
        Object objO;
        List<KParameter> parameters = getParameters();
        ArrayList arrayList = new ArrayList(v.u(parameters, 10));
        for (KParameter kParameter : parameters) {
            if (map.containsKey(kParameter)) {
                objO = map.get(kParameter);
                if (objO == null) {
                    throw new IllegalArgumentException("Annotation argument value cannot be null (" + kParameter + ')');
                }
            } else if (kParameter.l()) {
                objO = null;
            } else {
                if (!kParameter.h()) {
                    throw new IllegalArgumentException("No argument provided for a required parameter: " + kParameter);
                }
                objO = o(kParameter.getType());
            }
            arrayList.add(objO);
        }
        Caller<?> callerS = s();
        if (callerS == null) {
            throw new KotlinReflectionInternalError("This callable does not support a default call: " + w());
        }
        try {
            Object[] array = arrayList.toArray(new Object[0]);
            if (array != null) {
                return (R) callerS.call(array);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (IllegalAccessException e2) {
            throw new IllegalCallableAccessException(e2);
        }
    }

    private final Object o(KType kType) {
        Class clsB = kotlin.jvm.a.b(kotlin.reflect.jvm.a.b(kType));
        if (clsB.isArray()) {
            Object objNewInstance = Array.newInstance(clsB.getComponentType(), 0);
            kotlin.jvm.internal.r.d(objNewInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return objNewInstance;
        }
        throw new KotlinReflectionInternalError("Cannot instantiate the default empty array of type " + clsB.getSimpleName() + ", because it is not an array type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Type p() {
        Type[] lowerBounds;
        CallableMemberDescriptor callableMemberDescriptorT = w();
        if (!(callableMemberDescriptorT instanceof u)) {
            callableMemberDescriptorT = null;
        }
        u uVar = (u) callableMemberDescriptorT;
        if (uVar == null || !uVar.isSuspend()) {
            return null;
        }
        Object objQ0 = s.q0(q().a());
        if (!(objQ0 instanceof ParameterizedType)) {
            objQ0 = null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) objQ0;
        if (!kotlin.jvm.internal.r.a(parameterizedType != null ? parameterizedType.getRawType() : null, Continuation.class)) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        kotlin.jvm.internal.r.d(actualTypeArguments, "continuationType.actualTypeArguments");
        Object objU = kotlin.collections.k.U(actualTypeArguments);
        if (!(objU instanceof WildcardType)) {
            objU = null;
        }
        WildcardType wildcardType = (WildcardType) objU;
        if (wildcardType == null || (lowerBounds = wildcardType.getLowerBounds()) == null) {
            return null;
        }
        return (Type) kotlin.collections.k.u(lowerBounds);
    }

    @Override // kotlin.reflect.KCallable
    public R call(Object... args) throws IllegalCallableAccessException {
        kotlin.jvm.internal.r.e(args, "args");
        try {
            return (R) q().call(args);
        } catch (IllegalAccessException e2) {
            throw new IllegalCallableAccessException(e2);
        }
    }

    @Override // kotlin.reflect.KCallable
    public R callBy(Map<KParameter, ? extends Object> args) {
        kotlin.jvm.internal.r.e(args, "args");
        return u() ? f(args) : m(args, null);
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        List<Annotation> listInvoke = this.f14686a.invoke();
        kotlin.jvm.internal.r.d(listInvoke, "_annotations()");
        return listInvoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        ArrayList<KParameter> arrayListInvoke = this.b.invoke();
        kotlin.jvm.internal.r.d(arrayListInvoke, "_parameters()");
        return arrayListInvoke;
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        KTypeImpl kTypeImplInvoke = this.c.invoke();
        kotlin.jvm.internal.r.d(kTypeImplInvoke, "_returnType()");
        return kTypeImplInvoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<KTypeParameter> getTypeParameters() {
        List<KTypeParameterImpl> listInvoke = this.f14687d.invoke();
        kotlin.jvm.internal.r.d(listInvoke, "_typeParameters()");
        return listInvoke;
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s visibility = w().getVisibility();
        kotlin.jvm.internal.r.d(visibility, "descriptor.visibility");
        return q.q(visibility);
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return w().q() == Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return w().q() == Modality.FINAL;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return w().q() == Modality.OPEN;
    }

    public final R m(Map<KParameter, ? extends Object> args, Continuation<?> continuation) throws IllegalCallableAccessException {
        kotlin.jvm.internal.r.e(args, "args");
        List<KParameter> parameters = getParameters();
        ArrayList arrayList = new ArrayList(parameters.size());
        ArrayList arrayList2 = new ArrayList(1);
        Iterator<KParameter> it = parameters.iterator();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                if (continuation != null) {
                    arrayList.add(continuation);
                }
                if (!z) {
                    Object[] array = arrayList.toArray(new Object[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    return call(Arrays.copyOf(array, array.length));
                }
                arrayList2.add(Integer.valueOf(i2));
                Caller<?> callerS = s();
                if (callerS == null) {
                    throw new KotlinReflectionInternalError("This callable does not support a default call: " + w());
                }
                arrayList.addAll(arrayList2);
                arrayList.add(null);
                try {
                    Object[] array2 = arrayList.toArray(new Object[0]);
                    if (array2 != null) {
                        return (R) callerS.call(array2);
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                } catch (IllegalAccessException e2) {
                    throw new IllegalCallableAccessException(e2);
                }
            }
            KParameter next = it.next();
            if (i != 0 && i % 32 == 0) {
                arrayList2.add(Integer.valueOf(i2));
                i2 = 0;
            }
            if (args.containsKey(next)) {
                arrayList.add(args.get(next));
            } else if (next.l()) {
                arrayList.add(q.k(next.getType()) ? null : q.g(kotlin.reflect.jvm.b.a(next.getType())));
                i2 = (1 << (i % 32)) | i2;
                z = true;
            } else {
                if (!next.h()) {
                    throw new IllegalArgumentException("No argument provided for a required parameter: " + next);
                }
                arrayList.add(o(next.getType()));
            }
            if (next.g() == KParameter.Kind.VALUE) {
                i++;
            }
        }
    }

    public abstract Caller<?> q();

    /* JADX INFO: renamed from: r */
    public abstract KDeclarationContainerImpl getF14701h();

    public abstract Caller<?> s();

    /* JADX INFO: renamed from: t */
    public abstract CallableMemberDescriptor w();

    protected final boolean u() {
        return kotlin.jvm.internal.r.a(getF14721h(), "<init>") && getF14701h().d().isAnnotation();
    }

    public abstract boolean v();
}
