package kotlin.reflect.jvm.internal;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.PropertyReference;
import kotlin.reflect.KCallable;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001an\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\b\b\u0000\u0010\u0013*\u00020\u0014\"\b\b\u0001\u0010\u0012*\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00162\u0006\u0010\u0017\u001a\u0002H\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001d\u0010\u001e\u001a\u0019\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\u001f¢\u0006\u0002\b!H\u0000¢\u0006\u0002\u0010\"\u001a.\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020*H\u0002\u001a(\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010)\u001a\u00020*H\u0002\u001a%\u0010-\u001a\u0002H.\"\u0004\b\u0000\u0010.2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H.00H\u0080\bø\u0001\u0000¢\u0006\u0002\u00101\u001a\u0016\u00102\u001a\u0004\u0018\u00010\u000e*\u0002032\u0006\u0010$\u001a\u00020%H\u0002\u001a\u0014\u00104\u001a\b\u0012\u0002\b\u0003\u0018\u000105*\u0004\u0018\u00010\u000eH\u0000\u001a\u0010\u00106\u001a\u0004\u0018\u000107*\u0004\u0018\u00010\u000eH\u0000\u001a\u0014\u00108\u001a\b\u0012\u0002\b\u0003\u0018\u000109*\u0004\u0018\u00010\u000eH\u0000\u001a\u0012\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;*\u00020=H\u0000\u001a\u0014\u0010>\u001a\u0006\u0012\u0002\b\u00030\u0016*\u0006\u0012\u0002\b\u00030\u0016H\u0000\u001a\u000e\u0010?\u001a\u0004\u0018\u00010<*\u00020@H\u0002\u001a\u0012\u0010A\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u00020BH\u0000\u001a\u000e\u0010C\u001a\u0004\u0018\u00010D*\u00020EH\u0000\u001a\u001a\u0010F\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\b\u00030G2\u0006\u0010$\u001a\u00020%H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0018\u0010\t\u001a\u00020\n*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006H"}, d2 = {"JVM_STATIC", "Lkotlin/reflect/jvm/internal/impl/name/FqName;", "getJVM_STATIC", "()Lorg/jetbrains/kotlin/name/FqName;", "instanceReceiverParameter", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "getInstanceReceiverParameter", "(Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;)Lorg/jetbrains/kotlin/descriptors/ReceiverParameterDescriptor;", "isInlineClassType", "", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KType;)Z", "defaultPrimitiveValue", "", "type", "Ljava/lang/reflect/Type;", "deserializeToDescriptor", "D", "M", "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;", "moduleAnchor", "Ljava/lang/Class;", "proto", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "metadataVersion", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;", "createDescriptor", "Lkotlin/Function2;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Class;Lorg/jetbrains/kotlin/protobuf/MessageLite;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;Lorg/jetbrains/kotlin/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;", "loadClass", "classLoader", "Ljava/lang/ClassLoader;", "packageName", "", "className", "arrayDimensions", "", "kotlinClassId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "reflectionCall", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "arrayToRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;", "asKCallableImpl", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "asKFunctionImpl", "Lkotlin/reflect/jvm/internal/KFunctionImpl;", "asKPropertyImpl", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "computeAnnotations", "", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;", "createArrayType", "toAnnotationInstance", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;", "toJavaClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "toKVisibility", "Lkotlin/reflect/KVisibility;", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "toRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f15770a = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.JvmStatic");

    /* JADX WARN: Incorrect type for immutable var: ssa=boolean[], code=short[], for r7v3, types: [boolean[]] */
    /* JADX WARN: Incorrect type for immutable var: ssa=byte[], code=short[], for r7v5, types: [byte[]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [double[]] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v20, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r7v21, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int[]] */
    /* JADX WARN: Type inference failed for: r7v8, types: [float[]] */
    /* JADX WARN: Type inference failed for: r7v9, types: [long[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.Object a(kotlin.reflect.jvm.internal.impl.resolve.constants.b r6, java.lang.ClassLoader r7) {
        /*
            Method dump skipped, instruction units count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.q.a(kotlin.reflect.jvm.internal.impl.resolve.constants.b, java.lang.ClassLoader):java.lang.Object");
    }

    public static final KCallableImpl<?> b(Object obj) {
        KCallableImpl<?> kCallableImplC = (KCallableImpl) (!(obj instanceof KCallableImpl) ? null : obj);
        if (kCallableImplC == null) {
            kCallableImplC = c(obj);
        }
        return kCallableImplC != null ? kCallableImplC : d(obj);
    }

    public static final KFunctionImpl c(Object obj) {
        KFunctionImpl kFunctionImpl = (KFunctionImpl) (!(obj instanceof KFunctionImpl) ? null : obj);
        if (kFunctionImpl != null) {
            return kFunctionImpl;
        }
        if (!(obj instanceof FunctionReference)) {
            obj = null;
        }
        FunctionReference functionReference = (FunctionReference) obj;
        KCallable kCallableCompute = functionReference != null ? functionReference.compute() : null;
        return (KFunctionImpl) (kCallableCompute instanceof KFunctionImpl ? kCallableCompute : null);
    }

    public static final KPropertyImpl<?> d(Object obj) {
        KPropertyImpl<?> kPropertyImpl = (KPropertyImpl) (!(obj instanceof KPropertyImpl) ? null : obj);
        if (kPropertyImpl != null) {
            return kPropertyImpl;
        }
        if (!(obj instanceof PropertyReference)) {
            obj = null;
        }
        PropertyReference propertyReference = (PropertyReference) obj;
        KCallable kCallableCompute = propertyReference != null ? propertyReference.compute() : null;
        return (KPropertyImpl) (kCallableCompute instanceof KPropertyImpl ? kCallableCompute : null);
    }

    public static final List<Annotation> e(kotlin.reflect.jvm.internal.impl.descriptors.annotations.a computeAnnotations) {
        kotlin.jvm.internal.r.e(computeAnnotations, "$this$computeAnnotations");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = computeAnnotations.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar : annotations) {
            o0 o0VarO = cVar.o();
            Annotation annotationO = null;
            if (o0VarO instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.b) {
                annotationO = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.b) o0VarO).d();
            } else if (o0VarO instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) {
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l lVarC = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) o0VarO).c();
                if (!(lVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b)) {
                    lVarC = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b bVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b) lVarC;
                if (bVar != null) {
                    annotationO = bVar.P();
                }
            } else {
                annotationO = o(cVar);
            }
            if (annotationO != null) {
                arrayList.add(annotationO);
            }
        }
        return arrayList;
    }

    public static final Class<?> f(Class<?> createArrayType) {
        kotlin.jvm.internal.r.e(createArrayType, "$this$createArrayType");
        return Array.newInstance(createArrayType, 0).getClass();
    }

    public static final Object g(Type type) {
        kotlin.jvm.internal.r.e(type, "type");
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (kotlin.jvm.internal.r.a(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (kotlin.jvm.internal.r.a(type, Character.TYPE)) {
            return Character.valueOf((char) 0);
        }
        if (kotlin.jvm.internal.r.a(type, Byte.TYPE)) {
            return Byte.valueOf((byte) 0);
        }
        if (kotlin.jvm.internal.r.a(type, Short.TYPE)) {
            return Short.valueOf((short) 0);
        }
        if (kotlin.jvm.internal.r.a(type, Integer.TYPE)) {
            return 0;
        }
        if (kotlin.jvm.internal.r.a(type, Float.TYPE)) {
            return Float.valueOf(BitmapDescriptorFactory.HUE_RED);
        }
        if (kotlin.jvm.internal.r.a(type, Long.TYPE)) {
            return 0L;
        }
        if (kotlin.jvm.internal.r.a(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (kotlin.jvm.internal.r.a(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: " + type);
    }

    public static final <M extends kotlin.reflect.jvm.internal.impl.protobuf.n, D extends kotlin.reflect.jvm.internal.impl.descriptors.a> D h(Class<?> moduleAnchor, M proto, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable, kotlin.reflect.jvm.internal.impl.metadata.c.a metadataVersion, Function2<? super MemberDeserializer, ? super M, ? extends D> createDescriptor) {
        List<ProtoBuf$TypeParameter> typeParameterList;
        kotlin.jvm.internal.r.e(moduleAnchor, "moduleAnchor");
        kotlin.jvm.internal.r.e(proto, "proto");
        kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
        kotlin.jvm.internal.r.e(typeTable, "typeTable");
        kotlin.jvm.internal.r.e(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.r.e(createDescriptor, "createDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k kVarA = j.a(moduleAnchor);
        if (proto instanceof ProtoBuf$Function) {
            typeParameterList = ((ProtoBuf$Function) proto).getTypeParameterList();
        } else {
            if (!(proto instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unsupported message: " + proto).toString());
            }
            typeParameterList = ((ProtoBuf$Property) proto).getTypeParameterList();
        }
        List<ProtoBuf$TypeParameter> typeParameters = typeParameterList;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.g gVarA = kVarA.a();
        z zVarB = kVarA.b();
        kotlin.reflect.jvm.internal.impl.metadata.c.i iVarB = kotlin.reflect.jvm.internal.impl.metadata.c.i.b.b();
        kotlin.jvm.internal.r.d(typeParameters, "typeParameters");
        return createDescriptor.invoke(new MemberDeserializer(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.i(gVarA, nameResolver, zVarB, typeTable, iVarB, metadataVersion, null, null, typeParameters)), proto);
    }

    public static final m0 i(kotlin.reflect.jvm.internal.impl.descriptors.a instanceReceiverParameter) {
        kotlin.jvm.internal.r.e(instanceReceiverParameter, "$this$instanceReceiverParameter");
        if (instanceReceiverParameter.K() == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = instanceReceiverParameter.b();
        Objects.requireNonNull(kVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        return ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB).F0();
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c j() {
        return f15770a;
    }

    public static final boolean k(KType isInlineClassType) {
        a0 a0VarK;
        kotlin.jvm.internal.r.e(isInlineClassType, "$this$isInlineClassType");
        if (!(isInlineClassType instanceof KTypeImpl)) {
            isInlineClassType = null;
        }
        KTypeImpl kTypeImpl = (KTypeImpl) isInlineClassType;
        return (kTypeImpl == null || (a0VarK = kTypeImpl.getF14730d()) == null || !kotlin.reflect.jvm.internal.impl.resolve.d.c(a0VarK)) ? false : true;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static final Class<?> l(ClassLoader classLoader, String str, String str2, int i) {
        if (kotlin.jvm.internal.r.a(str, "kotlin")) {
            switch (str2.hashCode()) {
                case -901856463:
                    if (str2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (str2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (str2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (str2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (str2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (str2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (str2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (str2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (str2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        String str3 = str + '.' + t.w(str2, '.', '$', false, 4, null);
        if (i > 0) {
            str3 = t.t("[", i) + 'L' + str3 + ';';
        }
        return kotlin.reflect.jvm.internal.impl.descriptors.c1.a.e.a(classLoader, str3);
    }

    private static final Class<?> m(ClassLoader classLoader, kotlin.reflect.jvm.internal.impl.name.b bVar, int i) {
        kotlin.reflect.jvm.internal.impl.builtins.jvm.c cVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = bVar.b().j();
        kotlin.jvm.internal.r.d(dVarJ, "kotlinClassId.asSingleFqName().toUnsafe()");
        kotlin.reflect.jvm.internal.impl.name.b bVarO = cVar.o(dVarJ);
        if (bVarO != null) {
            bVar = bVarO;
        }
        String strB = bVar.h().b();
        kotlin.jvm.internal.r.d(strB, "javaClassId.packageFqName.asString()");
        String strB2 = bVar.i().b();
        kotlin.jvm.internal.r.d(strB2, "javaClassId.relativeClassName.asString()");
        return l(classLoader, strB, strB2, i);
    }

    static /* synthetic */ Class n(ClassLoader classLoader, kotlin.reflect.jvm.internal.impl.name.b bVar, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return m(classLoader, bVar, i);
    }

    private static final Annotation o(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(cVar);
        Class<?> clsP = dVarF != null ? p(dVarF) : null;
        if (!(clsP instanceof Class)) {
            clsP = null;
        }
        if (clsP == null) {
            return null;
        }
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> setEntrySet = cVar.a().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            kotlin.reflect.jvm.internal.impl.name.f fVar = (kotlin.reflect.jvm.internal.impl.name.f) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g gVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            ClassLoader classLoader = clsP.getClassLoader();
            kotlin.jvm.internal.r.d(classLoader, "annotationClass.classLoader");
            Object objR = r(gVar, classLoader);
            Pair pairA = objR != null ? kotlin.l.a(fVar.b(), objR) : null;
            if (pairA != null) {
                arrayList.add(pairA);
            }
        }
        return (Annotation) AnnotationConstructorCallerKt.d(clsP, kotlin.collections.o0.q(arrayList), null, 4, null);
    }

    public static final Class<?> p(kotlin.reflect.jvm.internal.impl.descriptors.d toJavaClass) {
        kotlin.jvm.internal.r.e(toJavaClass, "$this$toJavaClass");
        o0 source = toJavaClass.o();
        kotlin.jvm.internal.r.d(source, "source");
        if (source instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.o) {
            kotlin.reflect.jvm.internal.impl.load.kotlin.m mVarD = ((kotlin.reflect.jvm.internal.impl.load.kotlin.o) source).d();
            Objects.requireNonNull(mVarD, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
            return ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f) mVarD).d();
        }
        if (source instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) {
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l lVarC = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) source).c();
            Objects.requireNonNull(lVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
            return ((ReflectJavaClass) lVarC).getElement();
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(toJavaClass);
        if (bVarH != null) {
            return m(ReflectClassUtilKt.e(toJavaClass.getClass()), bVarH, 0);
        }
        return null;
    }

    public static final KVisibility q(s toKVisibility) {
        kotlin.jvm.internal.r.e(toKVisibility, "$this$toKVisibility");
        if (kotlin.jvm.internal.r.a(toKVisibility, kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e)) {
            return KVisibility.PUBLIC;
        }
        if (kotlin.jvm.internal.r.a(toKVisibility, kotlin.reflect.jvm.internal.impl.descriptors.r.c)) {
            return KVisibility.PROTECTED;
        }
        if (kotlin.jvm.internal.r.a(toKVisibility, kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d)) {
            return KVisibility.INTERNAL;
        }
        if (kotlin.jvm.internal.r.a(toKVisibility, kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a) || kotlin.jvm.internal.r.a(toKVisibility, kotlin.reflect.jvm.internal.impl.descriptors.r.b)) {
            return KVisibility.PRIVATE;
        }
        return null;
    }

    private static final Object r(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, ClassLoader classLoader) {
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return o(((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).b());
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            return a((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar, classLoader);
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.i) {
            Pair<? extends kotlin.reflect.jvm.internal.impl.name.b, ? extends kotlin.reflect.jvm.internal.impl.name.f> pairB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.i) gVar).b();
            kotlin.reflect.jvm.internal.impl.name.b bVarComponent1 = pairB.component1();
            kotlin.reflect.jvm.internal.impl.name.f fVarComponent2 = pairB.component2();
            Class clsN = n(classLoader, bVarComponent1, 0, 4, null);
            if (clsN == null) {
                return null;
            }
            Objects.requireNonNull(clsN, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
            return o.a(clsN, fVarComponent2.b());
        }
        if (!(gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o)) {
            if ((gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j) || (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.q)) {
                return null;
            }
            return gVar.b();
        }
        kotlin.reflect.jvm.internal.impl.resolve.constants.o.b bVarB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.o) gVar).b();
        if (bVarB instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0351b) {
            kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0351b c0351b = (kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0351b) bVarB;
            return m(classLoader, c0351b.b(), c0351b.a());
        }
        if (!(bVarB instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.a)) {
            throw new NoWhenBranchMatchedException();
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = ((kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.a) bVarB).a().I0().u();
        if (!(fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarC = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        if (dVar != null) {
            return p(dVar);
        }
        return null;
    }
}
