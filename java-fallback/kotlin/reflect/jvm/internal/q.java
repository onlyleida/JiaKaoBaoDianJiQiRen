package kotlin.reflect.jvm.internal;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.open.SocialConstants;
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
import kotlin.collections.l0;
import kotlin.collections.s;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.PropertyReference;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedArrayValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.s0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001an\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\b\b\u0000\u0010\u0013*\u00020\u0014\"\b\b\u0001\u0010\u0012*\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00162\u0006\u0010\u0017\u001a\u0002H\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001d\u0010\u001e\u001a\u0019\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\u001f¢\u0006\u0002\b!H\u0000¢\u0006\u0002\u0010\"\u001a.\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020*H\u0002\u001a(\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010)\u001a\u00020*H\u0002\u001a%\u0010-\u001a\u0002H.\"\u0004\b\u0000\u0010.2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H.00H\u0080\bø\u0001\u0000¢\u0006\u0002\u00101\u001a\u0016\u00102\u001a\u0004\u0018\u00010\u000e*\u0002032\u0006\u0010$\u001a\u00020%H\u0002\u001a\u0014\u00104\u001a\b\u0012\u0002\b\u0003\u0018\u000105*\u0004\u0018\u00010\u000eH\u0000\u001a\u0010\u00106\u001a\u0004\u0018\u000107*\u0004\u0018\u00010\u000eH\u0000\u001a\u0014\u00108\u001a\b\u0012\u0002\b\u0003\u0018\u000109*\u0004\u0018\u00010\u000eH\u0000\u001a\u0012\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;*\u00020=H\u0000\u001a\u0014\u0010>\u001a\u0006\u0012\u0002\b\u00030\u0016*\u0006\u0012\u0002\b\u00030\u0016H\u0000\u001a\u000e\u0010?\u001a\u0004\u0018\u00010<*\u00020@H\u0002\u001a\u0012\u0010A\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u00020BH\u0000\u001a\u000e\u0010C\u001a\u0004\u0018\u00010D*\u00020EH\u0000\u001a\u001a\u0010F\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\b\u00030G2\u0006\u0010$\u001a\u00020%H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0018\u0010\t\u001a\u00020\n*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006H"}, d2 = {"JVM_STATIC", "Lkotlin/reflect/jvm/internal/impl/name/FqName;", "getJVM_STATIC", "()Lorg/jetbrains/kotlin/name/FqName;", "instanceReceiverParameter", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "getInstanceReceiverParameter", "(Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;)Lorg/jetbrains/kotlin/descriptors/ReceiverParameterDescriptor;", "isInlineClassType", "", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KType;)Z", "defaultPrimitiveValue", "", "type", "Ljava/lang/reflect/Type;", "deserializeToDescriptor", "D", "M", "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;", "moduleAnchor", "Ljava/lang/Class;", "proto", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "metadataVersion", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;", "createDescriptor", "Lkotlin/Function2;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Class;Lorg/jetbrains/kotlin/protobuf/MessageLite;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;Lorg/jetbrains/kotlin/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;", "loadClass", "classLoader", "Ljava/lang/ClassLoader;", "packageName", "", "className", "arrayDimensions", "", "kotlinClassId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "reflectionCall", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "arrayToRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ArrayValue;", "asKCallableImpl", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "asKFunctionImpl", "Lkotlin/reflect/jvm/internal/KFunctionImpl;", "asKPropertyImpl", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "computeAnnotations", "", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;", "createArrayType", "toAnnotationInstance", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;", "toJavaClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "toKVisibility", "Lkotlin/reflect/KVisibility;", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "toRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f15770a = null;

    static {
        f15770a = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.JvmStatic");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [double[]] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v20, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r7v21, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int[]] */
    /* JADX WARN: Type inference failed for: r7v8, types: [float[]] */
    /* JADX WARN: Type inference failed for: r7v9, types: [long[]] */
    private static final Object a(kotlin.reflect.jvm.internal.impl.resolve.constants.b r6, ClassLoader r7) {
        if ((r6 instanceof DeserializedArrayValue) == true) goto L5;
        kotlin.reflect.jvm.internal.impl.resolve.constants.b r0 = null;
    L6:
        DeserializedArrayValue r1 = (DeserializedArrayValue) r0;
        if (r1 == null) goto L74;
        a0 r2 = r1.c();
        if (r2 == null) goto L74;
        List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> r3 = r6.b();
        ArrayList r4 = new ArrayList(s.u(r3, 10));
        Iterator<T> r5 = r3.iterator();
    L12:
        if (r5.hasNext() == false) goto L14;
        r4.add(r((kotlin.reflect.jvm.internal.impl.resolve.constants.g) r5.next(), r7));
        goto L12
    L14:
        PrimitiveType r8 = kotlin.reflect.jvm.internal.impl.builtins.g.N(r2);
        int r9 = 0;
        if (r8 != null) goto L46;
        if (kotlin.reflect.jvm.internal.impl.builtins.g.c0(r2) == false) goto L44;
        a0 r10 = ((s0) s.C0(r2.H0())).getType();
        kotlin.jvm.internal.r.d(r10, "type.arguments.single().type");
        kotlin.reflect.jvm.internal.impl.descriptors.f r11 = r10.I0().c();
        if ((r11 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) == true) goto L21;
        r11 = null;
    L21:
        kotlin.reflect.jvm.internal.impl.descriptors.d r12 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r11;
        if (r12 == null) goto L42;
        if (kotlin.reflect.jvm.internal.impl.builtins.g.t0(r10) == false) goto L29;
        int r13 = r6.b().size();
        Object r14 = new String[r13];
    L26:
        if (r9 >= r13) goto L73;
        Object r15 = r4.get(r9);
        Objects.requireNonNull(r15, "null cannot be cast to non-null type kotlin.String");
        r14[r9] = (String) r15;
        r9 = r9 + 1;
    L73:
        return r14;
    L29:
        if (kotlin.reflect.jvm.internal.impl.builtins.g.j0(r12) == false) goto L33;
        int r16 = r6.b().size();
        r14 = new Class[r16];
    L31:
        if (r9 >= r16) goto L73;
        Object r17 = r4.get(r9);
        Objects.requireNonNull(r17, "null cannot be cast to non-null type java.lang.Class<*>");
        r14[r9] = (Class) r17;
        r9 = r9 + 1;
        goto L31
    L33:
        kotlin.reflect.jvm.internal.impl.name.b r18 = DescriptorUtilsKt.h(r12);
        if (r18 == null) goto L40;
        Class r19 = n(r7, r18, 0, 4, null);
        if (r19 == null) goto L40;
        Object r20 = Array.newInstance(r19, r6.b().size());
        Objects.requireNonNull(r20, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>");
        r14 = (Object[]) r20;
        int r21 = r4.size();
    L38:
        if (r9 >= r21) goto L73;
        r14[r9] = r4.get(r9);
        r9 = r9 + 1;
    L40:
        return null;
    L42:
        throw new IllegalStateException(("Not a class type: " + r10).toString());
    L44:
        throw new IllegalStateException(("Not an array type: " + r2).toString());
    L46:
        switch(p.f15760a[r8.ordinal()]) {
            case 1: goto L70;
            case 2: goto L67;
            case 3: goto L64;
            case 4: goto L61;
            case 5: goto L58;
            case 6: goto L55;
            case 7: goto L52;
            case 8: goto L49;
            default: goto L48;
        };
    L49:
        int r22 = r6.b().size();
        r14 = new double[r22];
    L50:
        if (r9 >= r22) goto L73;
        Object r23 = r4.get(r9);
        Objects.requireNonNull(r23, "null cannot be cast to non-null type kotlin.Double");
        r14[r9] = ((Double) r23).doubleValue();
        r9 = r9 + 1;
        goto L50
    L52:
        int r24 = r6.b().size();
        r14 = new long[r24];
    L53:
        if (r9 >= r24) goto L73;
        Object r25 = r4.get(r9);
        Objects.requireNonNull(r25, "null cannot be cast to non-null type kotlin.Long");
        r14[r9] = ((Long) r25).longValue();
        r9 = r9 + 1;
        goto L53
    L55:
        int r26 = r6.b().size();
        r14 = new float[r26];
    L56:
        if (r9 >= r26) goto L73;
        Object r27 = r4.get(r9);
        Objects.requireNonNull(r27, "null cannot be cast to non-null type kotlin.Float");
        r14[r9] = ((Float) r27).floatValue();
        r9 = r9 + 1;
        goto L56
    L58:
        int r28 = r6.b().size();
        r14 = new int[r28];
    L59:
        if (r9 >= r28) goto L73;
        Object r29 = r4.get(r9);
        Objects.requireNonNull(r29, "null cannot be cast to non-null type kotlin.Int");
        r14[r9] = ((Integer) r29).intValue();
        r9 = r9 + 1;
        goto L59
    L61:
        int r30 = r6.b().size();
        r14 = new short[r30];
    L62:
        if (r9 >= r30) goto L73;
        Object r31 = r4.get(r9);
        Objects.requireNonNull(r31, "null cannot be cast to non-null type kotlin.Short");
        r14[r9] = ((Short) r31).shortValue();
        r9 = r9 + 1;
        goto L62
    L64:
        int r32 = r6.b().size();
        r14 = new byte[r32];
    L65:
        if (r9 >= r32) goto L73;
        Object r33 = r4.get(r9);
        Objects.requireNonNull(r33, "null cannot be cast to non-null type kotlin.Byte");
        r14[r9] = ((Byte) r33).byteValue();
        r9 = r9 + 1;
        goto L65
    L67:
        int r34 = r6.b().size();
        r14 = new char[r34];
    L68:
        if (r9 >= r34) goto L73;
        Object r35 = r4.get(r9);
        Objects.requireNonNull(r35, "null cannot be cast to non-null type kotlin.Char");
        r14[r9] = ((Character) r35).charValue();
        r9 = r9 + 1;
        goto L68
    L70:
        int r36 = r6.b().size();
        r14 = new boolean[r36];
    L71:
        if (r9 >= r36) goto L73;
        Object r37 = r4.get(r9);
        Objects.requireNonNull(r37, "null cannot be cast to non-null type kotlin.Boolean");
        r14[r9] = ((Boolean) r37).booleanValue();
        r9 = r9 + 1;
        goto L71
    L48:
        throw new NoWhenBranchMatchedException();
    L74:
        return null;
    L5:
        r0 = r6;
        goto L6
    }

    public static final KCallableImpl<?> b(Object r1) {
        if ((r1 instanceof KCallableImpl) == true) goto L5;
        Object r0 = null;
    L6:
        KCallableImpl<?> r2 = (KCallableImpl) r0;
        if (r2 != null) goto L10;
        r2 = c(r1);
    L10:
        if (r2 == null) goto L13;
        return r2;
    L13:
        return d(r1);
    L5:
        r0 = r1;
        goto L6
    }

    public static final KFunctionImpl c(Object r2) {
        kotlin.reflect.c r1 = null;
        if ((r2 instanceof KFunctionImpl) == true) goto L5;
        Object r0 = null;
    L6:
        KFunctionImpl r3 = (KFunctionImpl) r0;
        if (r3 == null) goto L10;
        return r3;
    L10:
        if ((r2 instanceof FunctionReference) == true) goto L12;
        r2 = null;
    L12:
        FunctionReference r4 = (FunctionReference) r2;
        if (r4 == null) goto L15;
        kotlin.reflect.c r5 = r4.compute();
    L17:
        if ((r5 instanceof KFunctionImpl) == false) goto L21;
        r1 = r5;
    L21:
        return (KFunctionImpl) r1;
    L15:
        r5 = null;
        goto L17
    L5:
        r0 = r2;
        goto L6
    }

    public static final KPropertyImpl<?> d(Object r2) {
        kotlin.reflect.c r1 = null;
        if ((r2 instanceof KPropertyImpl) == true) goto L5;
        Object r0 = null;
    L6:
        KPropertyImpl<?> r3 = (KPropertyImpl) r0;
        if (r3 == null) goto L10;
        return r3;
    L10:
        if ((r2 instanceof PropertyReference) == true) goto L12;
        r2 = null;
    L12:
        PropertyReference r4 = (PropertyReference) r2;
        if (r4 == null) goto L15;
        kotlin.reflect.c r5 = r4.compute();
    L17:
        if ((r5 instanceof KPropertyImpl) == false) goto L21;
        r1 = r5;
    L21:
        return (KPropertyImpl) r1;
    L15:
        r5 = null;
        goto L17
    L5:
        r0 = r2;
        goto L6
    }

    public static final List<Annotation> e(kotlin.reflect.jvm.internal.impl.descriptors.annotations.a r5) {
        kotlin.jvm.internal.r.e(r5, "$this$computeAnnotations");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e r6 = r5.getAnnotations();
        ArrayList r0 = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> r7 = r6.iterator();
    L4:
        if (r7.hasNext() == false) goto L19;
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c r1 = r7.next();
        o0 r2 = r1.o();
        Annotation r4 = null;
        if ((r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.b) == false) goto L9;
        r4 = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.b) r2).d();
    L17:
        if (r4 == null) goto L4;
        r0.add(r4);
        goto L4
    L9:
        if ((r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) == false) goto L16;
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l r3 = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) r2).d();
        if ((r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b) == true) goto L13;
        r3 = null;
    L13:
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b r8 = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b) r3;
        if (r8 == null) goto L17;
        r4 = r8.P();
        goto L17
    L16:
        r4 = o(r1);
        goto L17
    L19:
        return r0;
    }

    public static final Class<?> f(Class<?> r1) {
        kotlin.jvm.internal.r.e(r1, "$this$createArrayType");
        return Array.newInstance(r1, 0).getClass();
    }

    public static final Object g(Type r3) {
        kotlin.jvm.internal.r.e(r3, "type");
        if ((r3 instanceof Class) == true) goto L5;
    L36:
        return null;
    L5:
        if (((Class) r3).isPrimitive() == false) goto L36;
        if (kotlin.jvm.internal.r.a(r3, Boolean.TYPE) == false) goto L10;
        return Boolean.FALSE;
    L10:
        if (kotlin.jvm.internal.r.a(r3, Character.TYPE) == false) goto L13;
        return Character.valueOf((char) 0);
    L13:
        if (kotlin.jvm.internal.r.a(r3, Byte.TYPE) == false) goto L16;
        return Byte.valueOf((byte) 0);
    L16:
        if (kotlin.jvm.internal.r.a(r3, Short.TYPE) == false) goto L19;
        return Short.valueOf((short) 0);
    L19:
        if (kotlin.jvm.internal.r.a(r3, Integer.TYPE) == false) goto L22;
        return 0;
    L22:
        if (kotlin.jvm.internal.r.a(r3, Float.TYPE) == false) goto L25;
        return Float.valueOf(BitmapDescriptorFactory.HUE_RED);
    L25:
        if (kotlin.jvm.internal.r.a(r3, Long.TYPE) == false) goto L28;
        return 0L;
    L28:
        if (kotlin.jvm.internal.r.a(r3, Double.TYPE) == false) goto L31;
        return Double.valueOf(0.0d);
    L31:
        if (kotlin.jvm.internal.r.a(r3, Void.TYPE) == false) goto L35;
        throw new IllegalStateException("Parameter with void type is illegal");
    L35:
        throw new UnsupportedOperationException("Unknown primitive: " + r3);
    }

    public static final <M extends kotlin.reflect.jvm.internal.impl.protobuf.n, D extends kotlin.reflect.jvm.internal.impl.descriptors.a> D h(Class<?> r14, M r15, kotlin.reflect.jvm.internal.impl.metadata.c.c r16, kotlin.reflect.jvm.internal.impl.metadata.c.g r17, kotlin.reflect.jvm.internal.impl.metadata.c.a r18, kotlin.jvm.b.p<? super MemberDeserializer, ? super M, ? extends D> r19) {
        kotlin.jvm.internal.r.e(r14, "moduleAnchor");
        kotlin.jvm.internal.r.e(r15, "proto");
        kotlin.jvm.internal.r.e(r16, "nameResolver");
        kotlin.jvm.internal.r.e(r17, "typeTable");
        kotlin.jvm.internal.r.e(r18, "metadataVersion");
        kotlin.jvm.internal.r.e(r19, "createDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k r2 = j.a(r14);
        if ((r15 instanceof ProtoBuf$Function) == false) goto L7;
        List<ProtoBuf$TypeParameter> r3 = ((ProtoBuf$Function) r15).getTypeParameterList();
    L5:
        List<ProtoBuf$TypeParameter> r12 = r3;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.g r4 = r2.a();
        z r6 = r2.b();
        kotlin.reflect.jvm.internal.impl.metadata.c.i r8 = kotlin.reflect.jvm.internal.impl.metadata.c.i.b.b();
        kotlin.jvm.internal.r.d(r12, "typeParameters");
        return r19.invoke(new MemberDeserializer(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.i(r4, r16, r6, r17, r8, r18, null, null, r12)), r15);
    L7:
        if ((r15 instanceof ProtoBuf$Property) == false) goto L12;
        r3 = ((ProtoBuf$Property) r15).getTypeParameterList();
        goto L5
    L12:
        throw new IllegalStateException(("Unsupported message: " + r15).toString());
    }

    public static final m0 i(kotlin.reflect.jvm.internal.impl.descriptors.a r1) {
        kotlin.jvm.internal.r.e(r1, "$this$instanceReceiverParameter");
        if (r1.K() == null) goto L5;
        kotlin.reflect.jvm.internal.impl.descriptors.k r2 = r1.b();
        Objects.requireNonNull(r2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        return ((kotlin.reflect.jvm.internal.impl.descriptors.d) r2).F0();
    L5:
        return null;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c j() {
        return f15770a;
    }

    public static final boolean k(kotlin.reflect.p r1) {
        kotlin.jvm.internal.r.e(r1, "$this$isInlineClassType");
        if ((r1 instanceof KTypeImpl) == true) goto L5;
        r1 = null;
    L5:
        KTypeImpl r2 = (KTypeImpl) r1;
        if (r2 == null) goto L12;
        a0 r3 = r2.k();
        if (r3 == null) goto L12;
        if (kotlin.reflect.jvm.internal.impl.resolve.d.c(r3) != true) goto L12;
        return true;
    L12:
        return false;
    }

    private static final Class<?> l(ClassLoader r7, String r8, String r9, int r10) {
        if (kotlin.jvm.internal.r.a(r8, "kotlin") == true) goto L5;
    L43:
        String r11 = r8 + '.' + kotlin.text.l.w(r9, '.', '$', false, 4, null);
        if (r10 <= 0) goto L47;
        r11 = kotlin.text.l.t("[", r10) + 'L' + r11 + ';';
    L47:
        return kotlin.reflect.jvm.internal.impl.descriptors.c1.a.e.a(r7, r11);
    L5:
        switch(r9.hashCode()) {
            case -901856463: goto L40;
            case -763279523: goto L36;
            case -755911549: goto L32;
            case -74930671: goto L28;
            case 22374632: goto L24;
            case 63537721: goto L20;
            case 601811914: goto L16;
            case 948852093: goto L12;
            case 2104330525: goto L8;
            default: goto L43;
        };
    L8:
        if (r9.equals("LongArray") == false) goto L43;
        return long[].class;
    L12:
        if (r9.equals("FloatArray") == false) goto L43;
        return float[].class;
    L16:
        if (r9.equals("IntArray") == false) goto L43;
        return int[].class;
    L20:
        if (r9.equals("Array") == false) goto L43;
        return Object[].class;
    L24:
        if (r9.equals("DoubleArray") == false) goto L43;
        return double[].class;
    L28:
        if (r9.equals("ByteArray") == false) goto L43;
        return byte[].class;
    L32:
        if (r9.equals("CharArray") == false) goto L43;
        return char[].class;
    L36:
        if (r9.equals("ShortArray") == false) goto L43;
        return short[].class;
    L40:
        if (r9.equals("BooleanArray") == false) goto L43;
        return boolean[].class;
    }

    private static final Class<?> m(ClassLoader r3, kotlin.reflect.jvm.internal.impl.name.b r4, int r5) {
        kotlin.reflect.jvm.internal.impl.builtins.jvm.c r0 = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
        kotlin.reflect.jvm.internal.impl.name.d r1 = r4.b().j();
        kotlin.jvm.internal.r.d(r1, "kotlinClassId.asSingleFqName().toUnsafe()");
        kotlin.reflect.jvm.internal.impl.name.b r2 = r0.o(r1);
        if (r2 == null) goto L5;
        r4 = r2;
    L5:
        String r6 = r4.h().b();
        kotlin.jvm.internal.r.d(r6, "javaClassId.packageFqName.asString()");
        String r7 = r4.i().b();
        kotlin.jvm.internal.r.d(r7, "javaClassId.relativeClassName.asString()");
        return l(r3, r6, r7, r5);
    }

    static /* synthetic */ Class n(ClassLoader r0, kotlin.reflect.jvm.internal.impl.name.b r1, int r2, int r3, Object r4) {
        if ((r3 & 4) == 0) goto L6;
        r2 = 0;
    L6:
        return m(r0, r1, r2);
    }

    private static final Annotation o(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c r7) {
        kotlin.reflect.jvm.internal.impl.descriptors.d r0 = DescriptorUtilsKt.f(r7);
        if (r0 == null) goto L5;
        Class<?> r1 = p(r0);
    L7:
        if ((r1 instanceof Class) == true) goto L9;
        r1 = null;
    L9:
        if (r1 == null) goto L21;
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> r8 = r7.a().entrySet();
        ArrayList r2 = new ArrayList();
        Iterator<T> r9 = r8.iterator();
    L12:
        if (r9.hasNext() == false) goto L20;
        Map.Entry r3 = (Map.Entry) r9.next();
        kotlin.reflect.jvm.internal.impl.name.f r4 = (kotlin.reflect.jvm.internal.impl.name.f) r3.getKey();
        kotlin.reflect.jvm.internal.impl.resolve.constants.g r5 = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) r3.getValue();
        ClassLoader r6 = r1.getClassLoader();
        kotlin.jvm.internal.r.d(r6, "annotationClass.classLoader");
        Object r10 = r(r5, r6);
        if (r10 == null) goto L16;
        Pair r11 = kotlin.l.a(r4.b(), r10);
    L17:
        if (r11 == null) goto L12;
        r2.add(r11);
        goto L12
    L16:
        r11 = null;
        goto L17
    L20:
        return (Annotation) AnnotationConstructorCallerKt.d(r1, l0.q(r2), null, 4, null);
    L21:
        return null;
    L5:
        r1 = null;
        goto L7
    }

    public static final Class<?> p(kotlin.reflect.jvm.internal.impl.descriptors.d r2) {
        kotlin.jvm.internal.r.e(r2, "$this$toJavaClass");
        o0 r0 = r2.o();
        kotlin.jvm.internal.r.d(r0, SocialConstants.PARAM_SOURCE);
        if ((r0 instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.o) == false) goto L6;
        kotlin.reflect.jvm.internal.impl.load.kotlin.m r3 = ((kotlin.reflect.jvm.internal.impl.load.kotlin.o) r0).d();
        Objects.requireNonNull(r3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
        return ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f) r3).d();
    L6:
        if ((r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) == false) goto L8;
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l r4 = ((kotlin.reflect.jvm.internal.impl.descriptors.c1.a.m.a) r0).d();
        Objects.requireNonNull(r4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
        return ((ReflectJavaClass) r4).T();
    L8:
        kotlin.reflect.jvm.internal.impl.name.b r1 = DescriptorUtilsKt.h(r2);
        if (r1 != null) goto L11;
        return null;
    L11:
        return m(ReflectClassUtilKt.e(r2.getClass()), r1, 0);
    }

    public static final KVisibility q(kotlin.reflect.jvm.internal.impl.descriptors.s r1) {
        kotlin.jvm.internal.r.e(r1, "$this$toKVisibility");
        if (kotlin.jvm.internal.r.a(r1, kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e) == false) goto L6;
        return KVisibility.PUBLIC;
    L6:
        if (kotlin.jvm.internal.r.a(r1, kotlin.reflect.jvm.internal.impl.descriptors.r.c) == false) goto L9;
        return KVisibility.PROTECTED;
    L9:
        if (kotlin.jvm.internal.r.a(r1, kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d) == false) goto L12;
        return KVisibility.INTERNAL;
    L12:
        if (kotlin.jvm.internal.r.a(r1, kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a) == true) goto L22;
        if (kotlin.jvm.internal.r.a(r1, kotlin.reflect.jvm.internal.impl.descriptors.r.b) == true) goto L22;
        return null;
    L22:
        return KVisibility.PRIVATE;
    }

    private static final Object r(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> r4, ClassLoader r5) {
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) == false) goto L6;
        return o(((kotlin.reflect.jvm.internal.impl.resolve.constants.a) r4).b());
    L6:
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) == false) goto L9;
        return a((kotlin.reflect.jvm.internal.impl.resolve.constants.b) r4, r5);
    L9:
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.i) == false) goto L14;
        Pair<? extends kotlin.reflect.jvm.internal.impl.name.b, ? extends kotlin.reflect.jvm.internal.impl.name.f> r6 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.i) r4).b();
        kotlin.reflect.jvm.internal.impl.name.b r0 = r6.component1();
        kotlin.reflect.jvm.internal.impl.name.f r7 = r6.component2();
        Class r8 = n(r5, r0, 0, 4, null);
        if (r8 == null) goto L38;
        Objects.requireNonNull(r8, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
        return o.a(r8, r7.b());
    L38:
        return null;
    L14:
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o) == false) goto L29;
        kotlin.reflect.jvm.internal.impl.resolve.constants.o.b r9 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.o) r4).b();
        if ((r9 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0369b) == false) goto L19;
        kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0369b r10 = (kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.C0369b) r9;
        return m(r5, r10.b(), r10.a());
    L19:
        if ((r9 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.a) == false) goto L27;
        kotlin.reflect.jvm.internal.impl.descriptors.f r11 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.a) r9).a().I0().c();
        if ((r11 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) == true) goto L23;
        r11 = null;
    L23:
        kotlin.reflect.jvm.internal.impl.descriptors.d r12 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r11;
        if (r12 != null) goto L42;
        return null;
    L42:
        return p(r12);
    L27:
        throw new NoWhenBranchMatchedException();
    L29:
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j) == false) goto L32;
        return null;
    L32:
        if ((r4 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.q) == false) goto L35;
        return null;
    L35:
        return r4.b();
    }
}
