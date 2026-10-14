package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialOperation;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.u;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00042\u00020\u0005B)\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fB5\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0012J&\u00102\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u000304032\n\u00105\u001a\u0006\u0012\u0002\b\u0003042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u00106\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u0010:\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0013\u0010;\u001a\u00020)2\b\u0010<\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010=\u001a\u00020\u0014H\u0016J\b\u0010>\u001a\u00020\tH\u0016R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R!\u0010!\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b\"\u0010\u001cR\u001b\u0010\r\u001a\u00020\u000e8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0014\u0010.\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010*R\u0014\u0010/\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u0010*R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"Lkotlin/reflect/jvm/internal/KFunctionImpl;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", "Lkotlin/reflect/KFunction;", "Lkotlin/jvm/internal/FunctionBase;", "Lkotlin/reflect/jvm/internal/FunctionWithAllInvokes;", TtmlNode.RUBY_CONTAINER, "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", Constant.PROTOCOL_WEBVIEW_NAME, "", SocialOperation.GAME_SIGNATURE, "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Ljava/lang/Object;)V", "arity", "", "getArity", "()I", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "defaultCaller$delegate", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "getName", "()Ljava/lang/String;", "createConstructorCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "member", "createInstanceMethodCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Ljava/lang/reflect/Method;", "createJvmStaticInObjectCaller", "createStaticMethodCaller", "equals", "other", "hashCode", "toString", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KFunctionImpl extends KCallableImpl<Object> implements FunctionBase<Object>, KFunction<Object>, FunctionWithAllInvokes {
    static final /* synthetic */ KProperty[] k = {v.i(new PropertyReference1Impl(v.b(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;")), v.i(new PropertyReference1Impl(v.b(KFunctionImpl.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;")), v.i(new PropertyReference1Impl(v.b(KFunctionImpl.class), "defaultCaller", "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k.a f14698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k.b f14699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final k.b f14700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final KDeclarationContainerImpl f14701h;
    private final String i;
    private final Object j;

    /* synthetic */ KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, u uVar, Object obj, int i, kotlin.jvm.internal.o oVar) {
        this(kDeclarationContainerImpl, str, str2, uVar, (i & 16) != 0 ? CallableReference.NO_RECEIVER : obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl<Constructor<?>> B(Constructor<?> constructor, u uVar) {
        if (kotlin.reflect.jvm.internal.impl.resolve.jvm.b.f(uVar)) {
            return v() ? new CallerImpl.a(constructor, F()) : new CallerImpl.b(constructor);
        }
        return v() ? new CallerImpl.c(constructor, F()) : new CallerImpl.e(constructor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.h C(Method method) {
        return v() ? new CallerImpl.h.a(method, F()) : new CallerImpl.h.d(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.h D(Method method) {
        return v() ? new CallerImpl.h.b(method) : new CallerImpl.h.e(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.h E(Method method) {
        return v() ? new CallerImpl.h.c(method, F()) : new CallerImpl.h.f(method);
    }

    private final Object F() {
        return kotlin.reflect.jvm.internal.calls.f.a(this.j, w());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public u w() {
        return (u) this.f14698e.b(this, k[0]);
    }

    public boolean equals(Object other) {
        KFunctionImpl kFunctionImplC = q.c(other);
        return kFunctionImplC != null && kotlin.jvm.internal.r.a(getF14701h(), kFunctionImplC.getF14701h()) && kotlin.jvm.internal.r.a(getF14721h(), kFunctionImplC.getF14721h()) && kotlin.jvm.internal.r.a(this.i, kFunctionImplC.i) && kotlin.jvm.internal.r.a(this.j, kFunctionImplC.j);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return kotlin.reflect.jvm.internal.calls.d.a(q());
    }

    @Override // kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName */
    public String getF14721h() {
        String strB = w().getName().b();
        kotlin.jvm.internal.r.d(strB, "descriptor.name.asString()");
        return strB;
    }

    public int hashCode() {
        return (((getF14701h().hashCode() * 31) + getF14721h().hashCode()) * 31) + this.i.hashCode();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return FunctionWithAllInvokes.a.a(this);
    }

    @Override // kotlin.reflect.KFunction
    public boolean isExternal() {
        return w().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInfix() {
        return w().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInline() {
        return w().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isOperator() {
        return w().isOperator();
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return w().isSuspend();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> q() {
        return (Caller) this.f14699f.b(this, k[1]);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    /* JADX INFO: renamed from: r, reason: from getter */
    public KDeclarationContainerImpl getF14701h() {
        return this.f14701h;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> s() {
        return (Caller) this.f14700g.b(this, k[2]);
    }

    public String toString() {
        return ReflectionObjectRenderer.b.d(w());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean v() {
        return !kotlin.jvm.internal.r.a(this.j, CallableReference.NO_RECEIVER);
    }

    private KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, final String str, String str2, u uVar, Object obj) {
        this.f14701h = kDeclarationContainerImpl;
        this.i = str2;
        this.j = obj;
        this.f14698e = k.c(uVar, new Function0<u>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$descriptor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final u invoke() {
                return this.this$0.getF14701h().p(str, this.this$0.i);
            }
        });
        this.f14699f = k.b(new Function0<Caller<? extends Member>>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$caller$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Caller<? extends Member> invoke() {
                Object objB;
                Caller callerD;
                JvmFunctionSignature jvmFunctionSignatureG = RuntimeTypeMapper.b.g(this.this$0.w());
                if (jvmFunctionSignatureG instanceof JvmFunctionSignature.b) {
                    if (this.this$0.u()) {
                        Class<?> clsD = this.this$0.getF14701h().d();
                        List<KParameter> parameters = this.this$0.getParameters();
                        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
                        Iterator<T> it = parameters.iterator();
                        while (it.hasNext()) {
                            String name = ((KParameter) it.next()).getName();
                            kotlin.jvm.internal.r.c(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(clsD, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    objB = this.this$0.getF14701h().m(((JvmFunctionSignature.b) jvmFunctionSignatureG).b());
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.c) {
                    JvmFunctionSignature.c cVar = (JvmFunctionSignature.c) jvmFunctionSignatureG;
                    objB = this.this$0.getF14701h().q(cVar.c(), cVar.b());
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.a) {
                    objB = ((JvmFunctionSignature.a) jvmFunctionSignatureG).getF14683a();
                } else {
                    if (!(jvmFunctionSignatureG instanceof JvmFunctionSignature.JavaConstructor)) {
                        if (!(jvmFunctionSignatureG instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        List<Method> listB = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureG).b();
                        Class<?> clsD2 = this.this$0.getF14701h().d();
                        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(listB, 10));
                        for (Method it2 : listB) {
                            kotlin.jvm.internal.r.d(it2, "it");
                            arrayList2.add(it2.getName());
                        }
                        return new AnnotationConstructorCaller(clsD2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, listB);
                    }
                    objB = ((JvmFunctionSignature.JavaConstructor) jvmFunctionSignatureG).b();
                }
                if (objB instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = this.this$0;
                    callerD = kFunctionImpl.B((Constructor) objB, kFunctionImpl.w());
                } else {
                    if (!(objB instanceof Method)) {
                        throw new KotlinReflectionInternalError("Could not compute caller for function: " + this.this$0.w() + " (member = " + objB + ')');
                    }
                    Method method = (Method) objB;
                    callerD = Modifier.isStatic(method.getModifiers()) ? this.this$0.w().getAnnotations().d(q.j()) != null ? this.this$0.D(method) : this.this$0.E(method) : this.this$0.C(method);
                }
                return kotlin.reflect.jvm.internal.calls.f.c(callerD, this.this$0.w(), false, 2, null);
            }
        });
        this.f14700g = k.b(new Function0<Caller<? extends Member>>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$defaultCaller$2
            {
                super(0);
            }

            /* JADX WARN: Code duplicated, block: B:35:0x012f  */
            @Override // kotlin.jvm.functions.Function0
            public final Caller<? extends Member> invoke() {
                GenericDeclaration genericDeclarationN;
                Caller callerE;
                JvmFunctionSignature jvmFunctionSignatureG = RuntimeTypeMapper.b.g(this.this$0.w());
                if (jvmFunctionSignatureG instanceof JvmFunctionSignature.c) {
                    KDeclarationContainerImpl f14701h = this.this$0.getF14701h();
                    JvmFunctionSignature.c cVar = (JvmFunctionSignature.c) jvmFunctionSignatureG;
                    String strC = cVar.c();
                    String strB = cVar.b();
                    Member memberB = this.this$0.q().b();
                    kotlin.jvm.internal.r.c(memberB);
                    genericDeclarationN = f14701h.o(strC, strB, !Modifier.isStatic(memberB.getModifiers()));
                } else if (jvmFunctionSignatureG instanceof JvmFunctionSignature.b) {
                    if (this.this$0.u()) {
                        Class<?> clsD = this.this$0.getF14701h().d();
                        List<KParameter> parameters = this.this$0.getParameters();
                        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
                        Iterator<T> it = parameters.iterator();
                        while (it.hasNext()) {
                            String name = ((KParameter) it.next()).getName();
                            kotlin.jvm.internal.r.c(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(clsD, arrayList, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    genericDeclarationN = this.this$0.getF14701h().n(((JvmFunctionSignature.b) jvmFunctionSignatureG).b());
                } else {
                    if (jvmFunctionSignatureG instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                        List<Method> listB = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureG).b();
                        Class<?> clsD2 = this.this$0.getF14701h().d();
                        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(listB, 10));
                        for (Method it2 : listB) {
                            kotlin.jvm.internal.r.d(it2, "it");
                            arrayList2.add(it2.getName());
                        }
                        return new AnnotationConstructorCaller(clsD2, arrayList2, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, listB);
                    }
                    genericDeclarationN = null;
                }
                if (genericDeclarationN instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = this.this$0;
                    callerE = kFunctionImpl.B((Constructor) genericDeclarationN, kFunctionImpl.w());
                } else if (!(genericDeclarationN instanceof Method)) {
                    callerE = null;
                } else if (this.this$0.w().getAnnotations().d(q.j()) != null) {
                    kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = this.this$0.w().b();
                    Objects.requireNonNull(kVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    if (((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB).Y()) {
                        callerE = this.this$0.E((Method) genericDeclarationN);
                    } else {
                        callerE = this.this$0.D((Method) genericDeclarationN);
                    }
                } else {
                    callerE = this.this$0.E((Method) genericDeclarationN);
                }
                if (callerE != null) {
                    return kotlin.reflect.jvm.internal.calls.f.b(callerE, this.this$0.w(), true);
                }
                return null;
            }
        });
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return FunctionWithAllInvokes.a.b(this, obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return FunctionWithAllInvokes.a.c(this, obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function3
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return FunctionWithAllInvokes.a.d(this, obj, obj2, obj3);
    }

    @Override // kotlin.jvm.functions.Function4
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return FunctionWithAllInvokes.a.e(this, obj, obj2, obj3, obj4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
    }

    @Override // kotlin.jvm.functions.Function5
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return FunctionWithAllInvokes.a.f(this, obj, obj2, obj3, obj4, obj5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public KFunctionImpl(KDeclarationContainerImpl container, u descriptor) {
        kotlin.jvm.internal.r.e(container, "container");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        String strB = descriptor.getName().b();
        kotlin.jvm.internal.r.d(strB, "descriptor.name.asString()");
        this(container, strB, RuntimeTypeMapper.b.g(descriptor).getF14685a(), descriptor, null, 16, null);
    }

    @Override // kotlin.jvm.functions.Function6
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return FunctionWithAllInvokes.a.g(this, obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.jvm.functions.Function7
    public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        return FunctionWithAllInvokes.a.h(this, obj, obj2, obj3, obj4, obj5, obj6, obj7);
    }
}
