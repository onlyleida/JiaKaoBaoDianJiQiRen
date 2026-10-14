package kotlin.reflect.jvm.internal;

import androidx.exifinterface.media.ExifInterface;
import com.mobile.auth.gatewayauth.Constant;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX WARN: Unexpected interfaces in signature: [kotlin.reflect.jvm.internal.i] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\u00020\u0006:\u0001eB\u0013\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\u0013\u0010T\u001a\u00020&2\b\u0010U\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0016\u0010V\u001a\b\u0012\u0004\u0012\u00020W0\u00142\u0006\u0010X\u001a\u00020YH\u0016J\u0012\u0010Z\u001a\u0004\u0018\u00010[2\u0006\u0010\\\u001a\u00020]H\u0016J\u0016\u0010^\u001a\b\u0012\u0004\u0012\u00020[0\u00142\u0006\u0010X\u001a\u00020YH\u0016J\b\u0010_\u001a\u00020]H\u0016J\u0012\u0010`\u001a\u00020&2\b\u0010a\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010b\u001a\u00020cH\u0002J\b\u0010d\u001a\u00020AH\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00190\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0017R3\u0010\u001b\u001a$\u0012 \u0012\u001e \u001e*\u000e\u0018\u00010\u001dR\b\u0012\u0004\u0012\u00028\u00000\u00000\u001dR\b\u0012\u0004\u0012\u00028\u00000\u00000\u001c¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010'R\u0014\u0010(\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0014\u0010)\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'R\u0014\u0010*\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010'R\u0014\u0010+\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010'R\u0014\u0010,\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010'R\u0014\u0010-\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010'R\u0014\u0010.\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010'R\u001a\u0010/\u001a\u00020&8VX\u0096\u0004¢\u0006\f\u0012\u0004\b0\u00101\u001a\u0004\b/\u0010'R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0014\u00104\u001a\u0002058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u001e\u00108\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003090\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u0017R\u001e\u0010;\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u0017R\u0016\u0010=\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0016\u0010@\u001a\u0004\u0018\u00010A8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010CR\"\u0010D\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00040\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u000eR\u0016\u0010F\u001a\u0004\u0018\u00010A8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010CR\u0014\u0010H\u001a\u0002058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bI\u00107R\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u000eR\u001a\u0010M\u001a\b\u0012\u0004\u0012\u00020N0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010\u000eR\u0016\u0010P\u001a\u0004\u0018\u00010Q8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010S¨\u0006f"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "classId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "getClassId", "()Lorg/jetbrains/kotlin/name/ClassId;", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "kotlin.jvm.PlatformType", "getData", "()Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "isAbstract", "", "()Z", "isCompanion", "isData", "isFinal", "isFun", "isInner", "isOpen", "isSealed", "isValue", "isValue$annotations", "()V", "getJClass", "()Ljava/lang/Class;", "memberScope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getMemberScope$kotlin_reflection", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "nestedClasses", "getNestedClasses", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "getSealedSubclasses", "simpleName", "getSimpleName", "staticScope", "getStaticScope$kotlin_reflection", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", Constant.PROTOCOL_WEBVIEW_NAME, "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "isInstance", "value", "reportUnresolvedClass", "", "toString", "Data", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public final class KClassImpl<T> extends KDeclarationContainerImpl implements KClass<T>, Object {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k.b<KClassImpl<T>.Data> f14688d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<T> f14689e;

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010N\u001a\u00020<2\n\u0010O\u001a\u0006\u0012\u0002\b\u00030PH\u0002R%\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR%\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\bR%\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u000f\u0010\bR!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\n\u001a\u0004\b\u0014\u0010\u0015R-\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00180\u00058FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\n\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\bR%\u0010\u001d\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\n\u001a\u0004\b\u001e\u0010\bR%\u0010 \u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\n\u001a\u0004\b!\u0010\bR%\u0010#\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\n\u001a\u0004\b$\u0010\bR\u001b\u0010&\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\n\u001a\u0004\b(\u0010)R%\u0010+\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\n\u001a\u0004\b,\u0010\bR%\u0010.\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\n\u001a\u0004\b/\u0010\bR%\u00101\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\n\u001a\u0004\b3\u0010\bR#\u00105\u001a\u0004\u0018\u00018\u00008FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b9\u0010:\u0012\u0004\b6\u0010\u001a\u001a\u0004\b7\u00108R\u001d\u0010;\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\n\u001a\u0004\b=\u0010>R)\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u0000020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\n\u001a\u0004\bA\u0010\u0015R\u001d\u0010C\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bE\u0010\n\u001a\u0004\bD\u0010>R!\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\n\u001a\u0004\bH\u0010\u0015R!\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bM\u0010\n\u001a\u0004\bL\u0010\u0015¨\u0006Q"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KClassImpl;)V", "allMembers", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getAllMembers", "()Ljava/util/Collection;", "allMembers$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "allNonStaticMembers", "getAllNonStaticMembers", "allNonStaticMembers$delegate", "allStaticMembers", "getAllStaticMembers", "allStaticMembers$delegate", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors$annotations", "()V", "getConstructors", "constructors$delegate", "declaredMembers", "getDeclaredMembers", "declaredMembers$delegate", "declaredNonStaticMembers", "getDeclaredNonStaticMembers", "declaredNonStaticMembers$delegate", "declaredStaticMembers", "getDeclaredStaticMembers", "declaredStaticMembers$delegate", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "descriptor$delegate", "inheritedNonStaticMembers", "getInheritedNonStaticMembers", "inheritedNonStaticMembers$delegate", "inheritedStaticMembers", "getInheritedStaticMembers", "inheritedStaticMembers$delegate", "nestedClasses", "Lkotlin/reflect/KClass;", "getNestedClasses", "nestedClasses$delegate", "objectInstance", "getObjectInstance$annotations", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "qualifiedName$delegate", "sealedSubclasses", "getSealedSubclasses", "sealedSubclasses$delegate", "simpleName", "getSimpleName", "simpleName$delegate", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "supertypes$delegate", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "typeParameters$delegate", "calculateLocalClassName", "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public final class Data extends KDeclarationContainerImpl.Data {
        static final /* synthetic */ KProperty[] n = {v.i(new PropertyReference1Impl(v.b(Data.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), v.i(new PropertyReference1Impl(v.b(Data.class), "annotations", "getAnnotations()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(Data.class), "simpleName", "getSimpleName()Ljava/lang/String;")), v.i(new PropertyReference1Impl(v.b(Data.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), v.i(new PropertyReference1Impl(v.b(Data.class), "constructors", "getConstructors()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), v.i(new PropertyReference1Impl(v.b(Data.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(Data.class), "supertypes", "getSupertypes()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(Data.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), v.i(new PropertyReference1Impl(v.b(Data.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), v.i(new PropertyReference1Impl(v.b(Data.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final k.a f14690d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final k.a f14691e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final k.a f14692f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final k.a f14693g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final k.a f14694h;
        private final k.a i;
        private final k.a j;
        private final k.a k;
        private final k.a l;

        public Data() {
            super();
            this.f14690d = k.d(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$descriptor$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
                    kotlin.reflect.jvm.internal.impl.name.b bVarG = KClassImpl.this.G();
                    kotlin.reflect.jvm.internal.impl.descriptors.c1.a.k kVarA = ((KClassImpl.Data) KClassImpl.this.H().invoke()).a();
                    kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = bVarG.k() ? kVarA.a().b(bVarG) : FindClassInModuleKt.a(kVarA.b(), bVarG);
                    if (dVarB != null) {
                        return dVarB;
                    }
                    KClassImpl.F(KClassImpl.this);
                    throw null;
                }
            });
            k.d(new Function0<List<? extends Annotation>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$annotations$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends Annotation> invoke() {
                    return q.e(this.this$0.k());
                }
            });
            k.d(new Function0<String>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$simpleName$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    if (KClassImpl.this.d().isAnonymousClass()) {
                        return null;
                    }
                    kotlin.reflect.jvm.internal.impl.name.b bVarG = KClassImpl.this.G();
                    if (bVarG.k()) {
                        KClassImpl.Data data = this.this$0;
                        return data.f(KClassImpl.this.d());
                    }
                    String strB = bVarG.j().b();
                    kotlin.jvm.internal.r.d(strB, "classId.shortClassName.asString()");
                    return strB;
                }
            });
            this.f14691e = k.d(new Function0<String>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$qualifiedName$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    if (KClassImpl.this.d().isAnonymousClass()) {
                        return null;
                    }
                    kotlin.reflect.jvm.internal.impl.name.b bVarG = KClassImpl.this.G();
                    if (bVarG.k()) {
                        return null;
                    }
                    return bVarG.b().b();
                }
            });
            k.d(new Function0<List<? extends KFunction<? extends T>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$constructors$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<KFunction<T>> invoke() {
                    Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> collectionS = KClassImpl.this.s();
                    ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionS, 10));
                    Iterator<T> it = collectionS.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new KFunctionImpl(KClassImpl.this, (kotlin.reflect.jvm.internal.impl.descriptors.j) it.next()));
                    }
                    return arrayList;
                }
            });
            k.d(new Function0<List<? extends KClassImpl<? extends Object>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$nestedClasses$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KClassImpl<? extends Object>> invoke() {
                    Collection collectionA = kotlin.reflect.jvm.internal.impl.resolve.scopes.h.a.a(this.this$0.k().S(), null, null, 3, null);
                    ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.k> arrayList = new ArrayList();
                    for (Object obj : collectionA) {
                        if (!kotlin.reflect.jvm.internal.impl.resolve.c.B((kotlin.reflect.jvm.internal.impl.descriptors.k) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (kotlin.reflect.jvm.internal.impl.descriptors.k kVar : arrayList) {
                        if (!(kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                            kVar = null;
                        }
                        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar;
                        Class<?> clsP = dVar != null ? q.p(dVar) : null;
                        KClassImpl kClassImpl = clsP != null ? new KClassImpl(clsP) : null;
                        if (kClassImpl != null) {
                            arrayList2.add(kClassImpl);
                        }
                    }
                    return arrayList2;
                }
            });
            k.b(new Function0<T>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$objectInstance$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    kotlin.reflect.jvm.internal.impl.descriptors.d dVarK = this.this$0.k();
                    if (dVarK.g() != ClassKind.OBJECT) {
                        return null;
                    }
                    T t = (T) ((!dVarK.Y() || kotlin.reflect.jvm.internal.impl.builtins.c.a(kotlin.reflect.jvm.internal.impl.builtins.b.f14779a, dVarK)) ? KClassImpl.this.d().getDeclaredField("INSTANCE") : KClassImpl.this.d().getEnclosingClass().getDeclaredField(dVarK.getName().b())).get(null);
                    Objects.requireNonNull(t, "null cannot be cast to non-null type T");
                    return t;
                }
            });
            k.d(new Function0<List<? extends KTypeParameterImpl>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$typeParameters$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KTypeParameterImpl> invoke() {
                    List<t0> listP = this.this$0.k().p();
                    kotlin.jvm.internal.r.d(listP, "descriptor.declaredTypeParameters");
                    ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listP, 10));
                    for (t0 descriptor : listP) {
                        KClassImpl kClassImpl = KClassImpl.this;
                        kotlin.jvm.internal.r.d(descriptor, "descriptor");
                        arrayList.add(new KTypeParameterImpl(kClassImpl, descriptor));
                    }
                    return arrayList;
                }
            });
            this.f14692f = k.d(new KClassImpl$Data$supertypes$2(this));
            k.d(new Function0<List<? extends KClassImpl<? extends T>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$sealedSubclasses$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<KClassImpl<? extends T>> invoke() {
                    Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionX = this.this$0.k().x();
                    kotlin.jvm.internal.r.d(collectionX, "descriptor.sealedSubclasses");
                    ArrayList arrayList = new ArrayList();
                    for (kotlin.reflect.jvm.internal.impl.descriptors.d dVar : collectionX) {
                        Objects.requireNonNull(dVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                        Class<?> clsP = q.p(dVar);
                        KClassImpl kClassImpl = clsP != null ? new KClassImpl(clsP) : null;
                        if (kClassImpl != null) {
                            arrayList.add(kClassImpl);
                        }
                    }
                    return arrayList;
                }
            });
            this.f14693g = k.d(new Function0<Collection<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$declaredNonStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends KCallableImpl<?>> invoke() {
                    KClassImpl kClassImpl = KClassImpl.this;
                    return kClassImpl.v(kClassImpl.J(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
            this.f14694h = k.d(new Function0<Collection<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$declaredStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends KCallableImpl<?>> invoke() {
                    KClassImpl kClassImpl = KClassImpl.this;
                    return kClassImpl.v(kClassImpl.K(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
            this.i = k.d(new Function0<Collection<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$inheritedNonStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends KCallableImpl<?>> invoke() {
                    KClassImpl kClassImpl = KClassImpl.this;
                    return kClassImpl.v(kClassImpl.J(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
                }
            });
            this.j = k.d(new Function0<Collection<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$inheritedStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Collection<? extends KCallableImpl<?>> invoke() {
                    KClassImpl kClassImpl = KClassImpl.this;
                    return kClassImpl.v(kClassImpl.K(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
                }
            });
            this.k = k.d(new Function0<List<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allNonStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KCallableImpl<?>> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.i(), this.this$0.l());
                }
            });
            this.l = k.d(new Function0<List<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allStaticMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KCallableImpl<?>> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.j(), this.this$0.m());
                }
            });
            k.d(new Function0<List<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$declaredMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KCallableImpl<?>> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.i(), this.this$0.j());
                }
            });
            k.d(new Function0<List<? extends KCallableImpl<?>>>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$Data$allMembers$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends KCallableImpl<?>> invoke() {
                    return CollectionsKt___CollectionsKt.x0(this.this$0.g(), this.this$0.h());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String f(Class<?> cls) {
            String name = cls.getSimpleName();
            Method enclosingMethod = cls.getEnclosingMethod();
            if (enclosingMethod != null) {
                kotlin.jvm.internal.r.d(name, "name");
                return StringsKt__StringsKt.A0(name, enclosingMethod.getName() + "$", null, 2, null);
            }
            Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                kotlin.jvm.internal.r.d(name, "name");
                return StringsKt__StringsKt.z0(name, '$', null, 2, null);
            }
            kotlin.jvm.internal.r.d(name, "name");
            return StringsKt__StringsKt.A0(name, enclosingConstructor.getName() + "$", null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> j() {
            return (Collection) this.f14694h.b(this, n[11]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> l() {
            return (Collection) this.i.b(this, n[12]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> m() {
            return (Collection) this.j.b(this, n[13]);
        }

        public final Collection<KCallableImpl<?>> g() {
            return (Collection) this.k.b(this, n[14]);
        }

        public final Collection<KCallableImpl<?>> h() {
            return (Collection) this.l.b(this, n[15]);
        }

        public final Collection<KCallableImpl<?>> i() {
            return (Collection) this.f14693g.b(this, n[10]);
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d k() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) this.f14690d.b(this, n[0]);
        }

        public final String n() {
            return (String) this.f14691e.b(this, n[3]);
        }

        public final List<KType> o() {
            return (List) this.f14692f.b(this, n[8]);
        }
    }

    public KClassImpl(Class<T> jClass) {
        kotlin.jvm.internal.r.e(jClass, "jClass");
        this.f14689e = jClass;
        k.b<KClassImpl<T>.Data> bVarB = k.b(new Function0<KClassImpl<T>.Data>() { // from class: kotlin.reflect.jvm.internal.KClassImpl$data$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final KClassImpl<T>.Data invoke() {
                return new KClassImpl.Data();
            }
        });
        kotlin.jvm.internal.r.d(bVarB, "ReflectProperties.lazy { Data() }");
        this.f14688d = bVarB;
    }

    public static final /* synthetic */ Void F(KClassImpl kClassImpl) {
        kClassImpl.L();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.name.b G() {
        return RuntimeTypeMapper.b.c(d());
    }

    private final Void L() {
        KotlinClassHeader kotlinClassHeaderB;
        kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f fVarA = kotlin.reflect.jvm.internal.impl.descriptors.c1.a.f.c.a(d());
        KotlinClassHeader.Kind kindC = (fVarA == null || (kotlinClassHeaderB = fVarA.b()) == null) ? null : kotlinClassHeaderB.c();
        if (kindC != null) {
            switch (f.f14770a[kindC.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new UnsupportedOperationException("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: " + d());
                case 4:
                    throw new UnsupportedOperationException("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: " + d());
                case 5:
                    throw new KotlinReflectionInternalError("Unknown class: " + d() + " (kind = " + kindC + ')');
                case 6:
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        throw new KotlinReflectionInternalError("Unresolved class: " + d());
    }

    public final k.b<KClassImpl<T>.Data> H() {
        return this.f14688d;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d I() {
        return this.f14688d.invoke().k();
    }

    public final MemberScope J() {
        return I().n().m();
    }

    public final MemberScope K() {
        MemberScope memberScopeK0 = I().k0();
        kotlin.jvm.internal.r.d(memberScopeK0, "descriptor.staticScope");
        return memberScopeK0;
    }

    @Override // kotlin.reflect.KClass
    public List<KType> a() {
        return this.f14688d.invoke().o();
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<T> d() {
        return this.f14689e;
    }

    @Override // kotlin.reflect.KClass
    public String e() {
        return this.f14688d.invoke().n();
    }

    public boolean equals(Object other) {
        return (other instanceof KClassImpl) && kotlin.jvm.internal.r.a(kotlin.jvm.a.c(this), kotlin.jvm.a.c((KClass) other));
    }

    public int hashCode() {
        return kotlin.jvm.a.c(this).hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> s() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarI = I();
        if (dVarI.g() == ClassKind.INTERFACE || dVarI.g() == ClassKind.OBJECT) {
            return u.j();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = dVarI.j();
        kotlin.jvm.internal.r.d(collectionJ, "descriptor.constructors");
        return collectionJ;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.u> t(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        MemberScope memberScopeJ = J();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return CollectionsKt___CollectionsKt.x0(memberScopeJ.b(name, noLookupLocation), K().b(name, noLookupLocation));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("class ");
        kotlin.reflect.jvm.internal.impl.name.b bVarG = G();
        kotlin.reflect.jvm.internal.impl.name.c cVarH = bVarG.h();
        kotlin.jvm.internal.r.d(cVarH, "classId.packageFqName");
        if (cVarH.d()) {
            str = "";
        } else {
            str = cVarH.b() + ".";
        }
        String strB = bVarG.i().b();
        kotlin.jvm.internal.r.d(strB, "classId.relativeClassName.asString()");
        sb.append(str + t.w(strB, '.', '$', false, 4, null));
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public j0 u(int i) {
        Class<?> declaringClass;
        if (kotlin.jvm.internal.r.a(d().getSimpleName(), "DefaultImpls") && (declaringClass = d().getDeclaringClass()) != null && declaringClass.isInterface()) {
            KClass kClassE = kotlin.jvm.a.e(declaringClass);
            Objects.requireNonNull(kClassE, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            return ((KClassImpl) kClassE).u(i);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarI = I();
        if (!(dVarI instanceof DeserializedClassDescriptor)) {
            dVarI = null;
        }
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) dVarI;
        if (deserializedClassDescriptor == null) {
            return null;
        }
        ProtoBuf$Class protoBuf$ClassV0 = deserializedClassDescriptor.V0();
        GeneratedMessageLite.e<ProtoBuf$Class, List<ProtoBuf$Property>> eVar = JvmProtoBuf.j;
        kotlin.jvm.internal.r.d(eVar, "JvmProtoBuf.classLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) kotlin.reflect.jvm.internal.impl.metadata.c.e.b(protoBuf$ClassV0, eVar, i);
        if (protoBuf$Property != null) {
            return (j0) q.h(d(), protoBuf$Property, deserializedClassDescriptor.U0().g(), deserializedClassDescriptor.U0().j(), deserializedClassDescriptor.X0(), KClassImpl$getLocalProperty$2$1$1.INSTANCE);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<j0> x(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        MemberScope memberScopeJ = J();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return CollectionsKt___CollectionsKt.x0(memberScopeJ.c(name, noLookupLocation), K().c(name, noLookupLocation));
    }
}
