package kotlin.reflect.jvm.internal.calls;

import com.google.common.net.HttpHeaders;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.o0;
import kotlin.collections.v;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002 !B?\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006¢\u0006\u0002\u0010\u000eJ\u001b\u0010\u001c\u001a\u0004\u0018\u00010\u00102\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0016¢\u0006\u0002\u0010\u001fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "jClass", "Ljava/lang/Class;", "parameterNames", "", "", "callMode", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "origin", "Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "methods", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/List;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;Ljava/util/List;)V", "defaultValues", "", "erasedParameterTypes", "member", "getMember", "()Ljava/lang/Void;", "parameterTypes", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "CallMode", HttpHeaders.ORIGIN, "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class AnnotationConstructorCaller implements Caller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Type> f14736a;
    private final List<Class<?>> b;
    private final List<Object> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f14737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f14738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CallMode f14739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<Method> f14740g;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$CallMode;", "", "(Ljava/lang/String;I)V", "CALL_BY_NAME", "POSITIONAL_CALL", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public enum CallMode {
        CALL_BY_NAME,
        POSITIONAL_CALL
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCaller$Origin;", "", "(Ljava/lang/String;I)V", "JAVA", "KOTLIN", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public enum Origin {
        JAVA,
        KOTLIN
    }

    public AnnotationConstructorCaller(Class<?> jClass, List<String> parameterNames, CallMode callMode, Origin origin, List<Method> methods) {
        r.e(jClass, "jClass");
        r.e(parameterNames, "parameterNames");
        r.e(callMode, "callMode");
        r.e(origin, "origin");
        r.e(methods, "methods");
        this.f14737d = jClass;
        this.f14738e = parameterNames;
        this.f14739f = callMode;
        this.f14740g = methods;
        ArrayList arrayList = new ArrayList(v.u(methods, 10));
        Iterator<T> it = methods.iterator();
        while (it.hasNext()) {
            arrayList.add(((Method) it.next()).getGenericReturnType());
        }
        this.f14736a = arrayList;
        List<Method> list = this.f14740g;
        ArrayList arrayList2 = new ArrayList(v.u(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            Class<?> it3 = ((Method) it2.next()).getReturnType();
            r.d(it3, "it");
            Class<?> clsF = ReflectClassUtilKt.f(it3);
            if (clsF != null) {
                it3 = clsF;
            }
            arrayList2.add(it3);
        }
        this.b = arrayList2;
        List<Method> list2 = this.f14740g;
        ArrayList arrayList3 = new ArrayList(v.u(list2, 10));
        Iterator<T> it4 = list2.iterator();
        while (it4.hasNext()) {
            arrayList3.add(((Method) it4.next()).getDefaultValue());
        }
        this.c = arrayList3;
        if (this.f14739f == CallMode.POSITIONAL_CALL && origin == Origin.JAVA && (!CollectionsKt___CollectionsKt.u0(this.f14738e, "value").isEmpty())) {
            throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
        }
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public List<Type> a() {
        return this.f14736a;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public /* bridge */ /* synthetic */ Member b() {
        return (Member) d();
    }

    public void c(Object[] args) {
        r.e(args, "args");
        Caller.a.a(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Object call(Object[] args) {
        r.e(args, "args");
        c(args);
        ArrayList arrayList = new ArrayList(args.length);
        int length = args.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj = args[i];
            int i3 = i2 + 1;
            Object objF = (obj == null && this.f14739f == CallMode.CALL_BY_NAME) ? this.c.get(i2) : AnnotationConstructorCallerKt.f(obj, this.b.get(i2));
            if (objF == null) {
                AnnotationConstructorCallerKt.a(i2, this.f14738e.get(i2), this.b.get(i2));
                throw null;
            }
            arrayList.add(objF);
            i++;
            i2 = i3;
        }
        return AnnotationConstructorCallerKt.c(this.f14737d, o0.q(CollectionsKt___CollectionsKt.T0(this.f14738e, arrayList)), this.f14740g);
    }

    public Void d() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: getReturnType */
    public Type getF14759a() {
        return this.f14737d;
    }

    public /* synthetic */ AnnotationConstructorCaller(Class cls, List list, CallMode callMode, Origin origin, List list2, int i, o oVar) {
        if ((i & 16) != 0) {
            list2 = new ArrayList(v.u(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                list2.add(cls.getDeclaredMethod((String) it.next(), new Class[0]));
            }
        }
        this(cls, list, callMode, origin, list2);
    }
}
