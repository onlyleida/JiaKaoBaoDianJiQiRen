package kotlin.reflect.jvm.internal;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.tencent.open.SocialOperation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\n\b \u0018\u0000 <2\u00020\u0001:\u0003<=>B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\f\u001a\u00020\r2\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u0012\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010$\u001a\u00020%H&J\"\u0010&\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0004J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u001a\u0010-\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010/\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J$\u00100\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020%H\u0002JE\u00103\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0002\u00108J(\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015*\u0006\u0012\u0002\b\u00030\t2\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.H\u0002J=\u0010:\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0002\u0010;R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006?"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "()V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "methodOwner", "Ljava/lang/Class;", "getMethodOwner", "()Ljava/lang/Class;", "addParametersAndMasks", "", SpeechUtility.TAG_RESOURCE_RESULT, "", SocialConstants.PARAM_APP_DESC, "", "isConstructor", "", "findConstructorBySignature", "Ljava/lang/reflect/Constructor;", "findDefaultConstructor", "findDefaultMethod", "Ljava/lang/reflect/Method;", Constant.PROTOCOL_WEBVIEW_NAME, "isMember", "findFunctionDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", SocialOperation.GAME_SIGNATURE, "findMethodBySignature", "findPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "index", "", "getMembers", "Lkotlin/reflect/jvm/internal/KCallableImpl;", Constants.PARAM_SCOPE, "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "belonginess", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "getProperties", "loadParameterTypes", "", "loadReturnType", "parseType", "begin", TtmlNode.END, "lookupMethod", "parameterTypes", "", "returnType", "isStaticDefault", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;", "tryGetConstructor", "tryGetMethod", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;", "Companion", "Data", "MemberBelonginess", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public abstract class KDeclarationContainerImpl implements ClassBasedDeclarationContainer {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f14695a = Class.forName("kotlin.jvm.internal.o");
    private static final Regex b = new Regex("<v#(\\d+)>");

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b¦\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "moduleData", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "getModuleData", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;", "moduleData$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public abstract class Data {
        static final /* synthetic */ KProperty[] c = {v.i(new PropertyReference1Impl(v.b(Data.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.a f14696a = k.d(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k>() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$Data$moduleData$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k invoke() {
                return j.a(KDeclarationContainerImpl.this.d());
            }
        });

        public Data() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k a() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k) this.f14696a.b(this, c[0]);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "", "(Ljava/lang/String;I)V", "accept", "", "member", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "DECLARED", "INHERITED", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    protected enum MemberBelonginess {
        DECLARED,
        INHERITED;

        public final boolean accept(CallableMemberDescriptor member) {
            kotlin.jvm.internal.r.e(member, "member");
            CallableMemberDescriptor.Kind kindG = member.g();
            kotlin.jvm.internal.r.d(kindG, "member.kind");
            return kindG.isReal() == (this == DECLARED);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0002\b\u0003 \u0005*\b\u0012\u0002\b\u0003\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Companion;", "", "()V", "DEFAULT_CONSTRUCTOR_MARKER", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "LOCAL_PROPERTY_SIGNATURE", "Lkotlin/text/Regex;", "getLOCAL_PROPERTY_SIGNATURE$kotlin_reflection", "()Lkotlin/text/Regex;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class a {
        private a() {
        }

        public final Regex a() {
            return KDeclarationContainerImpl.b;
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "first", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "kotlin.jvm.PlatformType", "second", "compare"}, k = 3, mv = {1, 5, 1})
    static final class b<T> implements Comparator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f14697a = new b();

        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compare(s sVar, s sVar2) {
            Integer numD = kotlin.reflect.jvm.internal.impl.descriptors.r.d(sVar, sVar2);
            if (numD != null) {
                return numD.intValue();
            }
            return 0;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"kotlin/reflect/jvm/internal/KDeclarationContainerImpl$getMembers$visitor$1", "Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "visitConstructorDescriptor", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "data", "", "(Lorg/jetbrains/kotlin/descriptors/ConstructorDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class c extends CreateKCallableVisitor {
        c(KDeclarationContainerImpl kDeclarationContainerImpl, KDeclarationContainerImpl kDeclarationContainerImpl2) {
            super(kDeclarationContainerImpl2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.k, kotlin.reflect.jvm.internal.impl.descriptors.m
        public /* bridge */ /* synthetic */ Object j(kotlin.reflect.jvm.internal.impl.descriptors.j jVar, Object obj) {
            r(jVar, (kotlin.v) obj);
            throw null;
        }

        public KCallableImpl<?> r(kotlin.reflect.jvm.internal.impl.descriptors.j descriptor, kotlin.v data) {
            kotlin.jvm.internal.r.e(descriptor, "descriptor");
            kotlin.jvm.internal.r.e(data, "data");
            throw new IllegalStateException("No constructors should appear here: " + descriptor);
        }
    }

    private final Method A(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2, boolean z) {
        Method methodA;
        if (z) {
            clsArr[0] = cls;
        }
        Method methodD = D(cls, str, clsArr, cls2);
        if (methodD != null) {
            return methodD;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null && (methodA = A(superclass, str, clsArr, cls2, z)) != null) {
            return methodA;
        }
        for (Class<?> superInterface : cls.getInterfaces()) {
            kotlin.jvm.internal.r.d(superInterface, "superInterface");
            Method methodA2 = A(superInterface, str, clsArr, cls2, z);
            if (methodA2 != null) {
                return methodA2;
            }
            if (z) {
                Class<?> clsA = kotlin.reflect.jvm.internal.impl.descriptors.c1.a.e.a(ReflectClassUtilKt.e(superInterface), superInterface.getName() + "$DefaultImpls");
                if (clsA != null) {
                    clsArr[0] = superInterface;
                    Method methodD2 = D(clsA, str, clsArr, cls2);
                    if (methodD2 != null) {
                        return methodD2;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    private final Class<?> B(String str, int i, int i2) throws ClassNotFoundException {
        char cCharAt = str.charAt(i);
        if (cCharAt == 'F') {
            return Float.TYPE;
        }
        if (cCharAt == 'L') {
            ClassLoader classLoaderE = ReflectClassUtilKt.e(d());
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = str.substring(i + 1, i2 - 1);
            kotlin.jvm.internal.r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Class<?> clsLoadClass = classLoaderE.loadClass(t.w(strSubstring, '/', '.', false, 4, null));
            kotlin.jvm.internal.r.d(clsLoadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
            return clsLoadClass;
        }
        if (cCharAt == 'S') {
            return Short.TYPE;
        }
        if (cCharAt == 'V') {
            Class<?> cls = Void.TYPE;
            kotlin.jvm.internal.r.d(cls, "Void.TYPE");
            return cls;
        }
        if (cCharAt == 'I') {
            return Integer.TYPE;
        }
        if (cCharAt == 'J') {
            return Long.TYPE;
        }
        if (cCharAt == 'Z') {
            return Boolean.TYPE;
        }
        if (cCharAt == '[') {
            return q.f(B(str, i + 1, i2));
        }
        switch (cCharAt) {
            case 'B':
                return Byte.TYPE;
            case 'C':
                return Character.TYPE;
            case 'D':
                return Double.TYPE;
            default:
                throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
        }
    }

    private final Constructor<?> C(Class<?> cls, List<? extends Class<?>> list) {
        try {
            Object[] array = list.toArray(new Class[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Class[] clsArr = (Class[]) array;
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0055  */
    private final Method D(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2) {
        boolean z;
        try {
            Method result = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            kotlin.jvm.internal.r.d(result, "result");
            if (kotlin.jvm.internal.r.a(result.getReturnType(), cls2)) {
                return result;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            kotlin.jvm.internal.r.d(declaredMethods, "declaredMethods");
            for (Method method : declaredMethods) {
                kotlin.jvm.internal.r.d(method, "method");
                if (kotlin.jvm.internal.r.a(method.getName(), str) && kotlin.jvm.internal.r.a(method.getReturnType(), cls2)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    kotlin.jvm.internal.r.c(parameterTypes);
                    if (Arrays.equals(parameterTypes, clsArr)) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private final void k(List<Class<?>> list, String str, boolean z) {
        List<Class<?>> listY = y(str);
        list.addAll(listY);
        int size = ((listY.size() + 32) - 1) / 32;
        for (int i = 0; i < size; i++) {
            Class<?> cls = Integer.TYPE;
            kotlin.jvm.internal.r.d(cls, "Integer.TYPE");
            list.add(cls);
        }
        Class<?> cls2 = z ? f14695a : Object.class;
        kotlin.jvm.internal.r.d(cls2, "if (isConstructor) DEFAU…RKER else Any::class.java");
        list.add(cls2);
    }

    private final List<Class<?>> y(String str) {
        int iS;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (str.charAt(i) != ')') {
            int i2 = i;
            while (str.charAt(i2) == '[') {
                i2++;
            }
            char cCharAt = str.charAt(i2);
            if (StringsKt__StringsKt.F("VZCBSIFJD", cCharAt, false, 2, null)) {
                iS = i2 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
                }
                iS = StringsKt__StringsKt.S(str, ';', i, false, 4, null) + 1;
            }
            arrayList.add(B(str, i, iS));
            i = iS;
        }
        return arrayList;
    }

    private final Class<?> z(String str) {
        return B(str, StringsKt__StringsKt.S(str, ')', 0, false, 6, null) + 1, str.length());
    }

    public final Constructor<?> m(String desc) {
        kotlin.jvm.internal.r.e(desc, "desc");
        return C(d(), y(desc));
    }

    public final Constructor<?> n(String desc) {
        kotlin.jvm.internal.r.e(desc, "desc");
        Class<?> clsD = d();
        ArrayList arrayList = new ArrayList();
        k(arrayList, desc, true);
        kotlin.v vVar = kotlin.v.f15822a;
        return C(clsD, arrayList);
    }

    public final Method o(String name, String desc, boolean z) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(desc, "desc");
        if (kotlin.jvm.internal.r.a(name, "<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(d());
        }
        k(arrayList, desc, false);
        Class<?> clsW = w();
        String str = name + "$default";
        Object[] array = arrayList.toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return A(clsW, str, (Class[]) array, z(desc), z);
    }

    public final u p(String name, String signature) {
        Collection<u> collectionT;
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
        if (kotlin.jvm.internal.r.a(name, "<init>")) {
            collectionT = CollectionsKt___CollectionsKt.M0(s());
        } else {
            kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(name);
            kotlin.jvm.internal.r.d(fVarG, "Name.identifier(name)");
            collectionT = t(fVarG);
        }
        Collection<u> collection = collectionT;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (kotlin.jvm.internal.r.a(RuntimeTypeMapper.b.g((u) obj).getF14685a(), signature)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() == 1) {
            return (u) kotlin.collections.s.C0(arrayList);
        }
        String strM0 = CollectionsKt___CollectionsKt.m0(collection, "\n", null, null, 0, null, new Function1<u, CharSequence>() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(u descriptor) {
                kotlin.jvm.internal.r.e(descriptor, "descriptor");
                return DescriptorRenderer.c.q(descriptor) + " | " + RuntimeTypeMapper.b.g(descriptor).getF14685a();
            }
        }, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Function '");
        sb.append(name);
        sb.append("' (JVM signature: ");
        sb.append(signature);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strM0.length() == 0 ? " no members found" : '\n' + strM0);
        throw new KotlinReflectionInternalError(sb.toString());
    }

    public final Method q(String name, String desc) {
        Method methodA;
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(desc, "desc");
        if (kotlin.jvm.internal.r.a(name, "<init>")) {
            return null;
        }
        Object[] array = y(desc).toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class<?>[] clsArr = (Class[]) array;
        Class<?> clsZ = z(desc);
        Method methodA2 = A(w(), name, clsArr, clsZ, false);
        if (methodA2 != null) {
            return methodA2;
        }
        if (!w().isInterface() || (methodA = A(Object.class, name, clsArr, clsZ, false)) == null) {
            return null;
        }
        return methodA;
    }

    public final j0 r(String name, String signature) {
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(signature, "signature");
        MatchResult matchResultMatchEntire = b.matchEntire(signature);
        if (matchResultMatchEntire != null) {
            String str = matchResultMatchEntire.a().getF15818a().b().get(1);
            j0 j0VarU = u(Integer.parseInt(str));
            if (j0VarU != null) {
                return j0VarU;
            }
            throw new KotlinReflectionInternalError("Local property #" + str + " not found in " + d());
        }
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(name);
        kotlin.jvm.internal.r.d(fVarG, "Name.identifier(name)");
        Collection<j0> collectionX = x(fVarG);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionX) {
            if (kotlin.jvm.internal.r.a(RuntimeTypeMapper.b.f((j0) obj).getF14764a(), signature)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            throw new KotlinReflectionInternalError("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + this);
        }
        if (arrayList.size() == 1) {
            return (j0) kotlin.collections.s.C0(arrayList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList) {
            s visibility = ((j0) obj2).getVisibility();
            Object arrayList2 = linkedHashMap.get(visibility);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(visibility, arrayList2);
            }
            ((List) arrayList2).add(obj2);
        }
        Collection collectionValues = n0.g(linkedHashMap, b.f14697a).values();
        kotlin.jvm.internal.r.d(collectionValues, "properties\n             …                }).values");
        List mostVisibleProperties = (List) kotlin.collections.s.n0(collectionValues);
        if (mostVisibleProperties.size() == 1) {
            kotlin.jvm.internal.r.d(mostVisibleProperties, "mostVisibleProperties");
            return (j0) kotlin.collections.s.c0(mostVisibleProperties);
        }
        kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g(name);
        kotlin.jvm.internal.r.d(fVarG2, "Name.identifier(name)");
        String strM0 = CollectionsKt___CollectionsKt.m0(x(fVarG2), "\n", null, null, 0, null, new Function1<j0, CharSequence>() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$findPropertyDescriptor$allMembers$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(j0 descriptor) {
                kotlin.jvm.internal.r.e(descriptor, "descriptor");
                return DescriptorRenderer.c.q(descriptor) + " | " + RuntimeTypeMapper.b.f(descriptor).getF14764a();
            }
        }, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Property '");
        sb.append(name);
        sb.append("' (JVM signature: ");
        sb.append(signature);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strM0.length() == 0 ? " no members found" : '\n' + strM0);
        throw new KotlinReflectionInternalError(sb.toString());
    }

    public abstract Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> s();

    public abstract Collection<u> t(kotlin.reflect.jvm.internal.impl.name.f fVar);

    public abstract j0 u(int i);

    /* JADX WARN: Code duplicated, block: B:12:0x004e  */
    protected final Collection<KCallableImpl<?>> v(MemberScope scope, MemberBelonginess belonginess) {
        KCallableImpl kCallableImpl;
        kotlin.jvm.internal.r.e(scope, "scope");
        kotlin.jvm.internal.r.e(belonginess, "belonginess");
        c cVar = new c(this, this);
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> collectionA = kotlin.reflect.jvm.internal.impl.resolve.scopes.h.a.a(scope, null, null, 3, null);
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.k kVar : collectionA) {
            if (kVar instanceof CallableMemberDescriptor) {
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) kVar;
                if ((!kotlin.jvm.internal.r.a(callableMemberDescriptor.getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14978h)) && belonginess.accept(callableMemberDescriptor)) {
                    kCallableImpl = (KCallableImpl) kVar.y(cVar, kotlin.v.f15822a);
                } else {
                    kCallableImpl = null;
                }
            } else {
                kCallableImpl = null;
            }
            if (kCallableImpl != null) {
                arrayList.add(kCallableImpl);
            }
        }
        return CollectionsKt___CollectionsKt.M0(arrayList);
    }

    protected Class<?> w() {
        Class<?> clsF = ReflectClassUtilKt.f(d());
        return clsF != null ? clsF : d();
    }

    public abstract Collection<j0> x(kotlin.reflect.jvm.internal.impl.name.f fVar);
}
