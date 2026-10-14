package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.q;

/* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0000\u0018\u0000*\f\b\u0000\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "caller", "isDefault", "", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V", "data", "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "member", "getMember", "()Ljava/lang/reflect/Member;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoxUnboxData", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class InlineClassAwareCaller<M extends Member> implements Caller<M> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f14757a;
    private final Caller<M> b;
    private final boolean c;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.calls.e$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003H\u0086\u0002J\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0086\u0002¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "", "argumentRange", "Lkotlin/ranges/IntRange;", "unbox", "", "Ljava/lang/reflect/Method;", "box", "(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getArgumentRange", "()Lkotlin/ranges/IntRange;", "getBox", "()Ljava/lang/reflect/Method;", "getUnbox", "()[Ljava/lang/reflect/Method;", "[Ljava/lang/reflect/Method;", "component1", "component2", "component3", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final IntRange f14758a;
        private final Method[] b;
        private final Method c;

        public a(IntRange argumentRange, Method[] unbox, Method method) {
            r.e(argumentRange, "argumentRange");
            r.e(unbox, "unbox");
            this.f14758a = argumentRange;
            this.b = unbox;
            this.c = method;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final IntRange getF14758a() {
            return this.f14758a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final Method[] getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final Method getC() {
            return this.c;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    /* JADX WARN: Multi-variable type inference failed */
    public InlineClassAwareCaller(CallableMemberDescriptor descriptor, Caller<? extends M> caller, boolean z) {
        a aVar;
        Class<?> clsI;
        r.e(descriptor, "descriptor");
        r.e(caller, "caller");
        this.b = caller;
        this.c = z;
        a0 returnType = descriptor.getReturnType();
        r.c(returnType);
        r.d(returnType, "descriptor.returnType!!");
        Class<?> clsI2 = f.i(returnType);
        Method methodD = clsI2 != null ? f.d(clsI2, descriptor) : null;
        if (kotlin.reflect.jvm.internal.impl.resolve.d.a(descriptor)) {
            aVar = new a(IntRange.f14586f.a(), new Method[0], methodD);
        } else {
            int i = -1;
            if (!(caller instanceof CallerImpl.h.c)) {
                if (descriptor instanceof j) {
                    if (!(caller instanceof BoundCaller)) {
                        i = 0;
                    }
                } else if (descriptor.K() == null || (caller instanceof BoundCaller)) {
                    i = 0;
                } else {
                    k kVarB = descriptor.b();
                    r.d(kVarB, "descriptor.containingDeclaration");
                    if (kotlin.reflect.jvm.internal.impl.resolve.d.b(kVarB)) {
                        i = 0;
                    } else {
                        i = 1;
                    }
                }
            }
            int i2 = (z ? 2 : 0) + (((descriptor instanceof u) && ((u) descriptor).isSuspend()) ? 1 : 0);
            ArrayList arrayList = new ArrayList();
            m0 m0VarO = descriptor.O();
            a0 type = m0VarO != null ? m0VarO.getType() : null;
            if (type != null) {
                arrayList.add(type);
            } else if (descriptor instanceof j) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarA0 = ((j) descriptor).a0();
                r.d(dVarA0, "descriptor.constructedClass");
                if (dVarA0.z()) {
                    k kVarB2 = dVarA0.b();
                    Objects.requireNonNull(kVarB2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB2).n());
                }
            } else {
                k kVarB3 = descriptor.b();
                r.d(kVarB3, "descriptor.containingDeclaration");
                if ((kVarB3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && kotlin.reflect.jvm.internal.impl.resolve.d.b(kVarB3)) {
                    arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB3).n());
                }
            }
            List<v0> listF = descriptor.f();
            r.d(listF, "descriptor.valueParameters");
            Iterator<T> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(((v0) it.next()).getType());
            }
            int size = arrayList.size() + i + i2;
            if (d.a(this) != size) {
                throw new KotlinReflectionInternalError("Inconsistent number of parameters in the descriptor and Java reflection object: " + d.a(this) + " != " + size + "\nCalling: " + descriptor + "\nParameter types: " + a() + ")\nDefault: " + this.c);
            }
            IntRange intRangeJ = kotlin.ranges.f.j(Math.max(i, 0), arrayList.size() + i);
            Method[] methodArr = new Method[size];
            for (int i3 = 0; i3 < size; i3++) {
                methodArr[i3] = (!intRangeJ.m(i3) || (clsI = f.i((a0) arrayList.get(i3 - i))) == null) ? null : f.f(clsI, descriptor);
            }
            aVar = new a(intRangeJ, methodArr, methodD);
        }
        this.f14757a = aVar;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public List<Type> a() {
        return this.b.a();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public M b() {
        return (M) this.b.b();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Object call(Object[] args) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke;
        r.e(args, "args");
        a aVar = this.f14757a;
        IntRange f14758a = aVar.getF14758a();
        Method[] b = aVar.getB();
        Method c = aVar.getC();
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        r.d(objArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        Objects.requireNonNull(objArrCopyOf, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int f14582a = f14758a.getF14582a();
        int b2 = f14758a.getB();
        if (f14582a <= b2) {
            while (true) {
                Method method = b[f14582a];
                Object objG = args[f14582a];
                if (method != null) {
                    if (objG != null) {
                        objG = method.invoke(objG, new Object[0]);
                    } else {
                        Class<?> returnType = method.getReturnType();
                        r.d(returnType, "method.returnType");
                        objG = q.g(returnType);
                    }
                }
                objArrCopyOf[f14582a] = objG;
                if (f14582a == b2) {
                    break;
                }
                f14582a++;
            }
        }
        Object objCall = this.b.call(objArrCopyOf);
        return (c == null || (objInvoke = c.invoke(null, objCall)) == null) ? objCall : objInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: getReturnType */
    public Type getF14759a() {
        return this.b.getF14759a();
    }
}
