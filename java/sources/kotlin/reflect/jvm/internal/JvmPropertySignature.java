package kotlin.reflect.jvm.internal;

import com.tencent.open.SocialOperation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

/* JADX INFO: renamed from: kotlin.reflect.jvm.internal.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0004\u0005\u0006\u0007\bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&\u0082\u0001\u0004\t\n\u000b\f¨\u0006\r"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "", "()V", "asString", "", "JavaField", "JavaMethodProperty", "KotlinProperty", "MappedKotlinProperty", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
public abstract class JvmPropertySignature {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.d$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "field", "Ljava/lang/reflect/Field;", "(Ljava/lang/reflect/Field;)V", "getField", "()Ljava/lang/reflect/Field;", "asString", "", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class a extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Field f14762a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Field field) {
            super(null);
            kotlin.jvm.internal.r.e(field, "field");
            this.f14762a = field;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public String getF14764a() {
            StringBuilder sb = new StringBuilder();
            String name = this.f14762a.getName();
            kotlin.jvm.internal.r.d(name, "field.name");
            sb.append(kotlin.reflect.jvm.internal.impl.load.java.q.a(name));
            sb.append("()");
            Class<?> type = this.f14762a.getType();
            kotlin.jvm.internal.r.d(type, "field.type");
            sb.append(ReflectClassUtilKt.b(type));
            return sb.toString();
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final Field getF14762a() {
            return this.f14762a;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.d$b */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "getterMethod", "Ljava/lang/reflect/Method;", "setterMethod", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getGetterMethod", "()Ljava/lang/reflect/Method;", "getSetterMethod", "asString", "", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class b extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f14763a;
        private final Method b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Method getterMethod, Method method) {
            super(null);
            kotlin.jvm.internal.r.e(getterMethod, "getterMethod");
            this.f14763a = getterMethod;
            this.b = method;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public String getF14764a() {
            return RuntimeTypeMapperKt.b(this.f14763a);
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final Method getF14763a() {
            return this.f14763a;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final Method getB() {
            return this.b;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.d$c */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0019\u001a\u00020\u0016H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "proto", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", SocialOperation.GAME_SIGNATURE, "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;Lorg/jetbrains/kotlin/metadata/jvm/JvmProtoBuf$JvmPropertySignature;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;", "getNameResolver", "()Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;", "getProto", "()Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;", "getSignature", "()Lorg/jetbrains/kotlin/metadata/jvm/JvmProtoBuf$JvmPropertySignature;", "string", "", "getTypeTable", "()Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;", "asString", "getManglingSuffix", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class c extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f14764a;
        private final j0 b;
        private final ProtoBuf$Property c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final JvmProtoBuf.JvmPropertySignature f14765d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.metadata.c.c f14766e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.metadata.c.g f14767f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(j0 descriptor, ProtoBuf$Property proto, JvmProtoBuf.JvmPropertySignature signature, kotlin.reflect.jvm.internal.impl.metadata.c.c nameResolver, kotlin.reflect.jvm.internal.impl.metadata.c.g typeTable) {
            String string;
            super(null);
            kotlin.jvm.internal.r.e(descriptor, "descriptor");
            kotlin.jvm.internal.r.e(proto, "proto");
            kotlin.jvm.internal.r.e(signature, "signature");
            kotlin.jvm.internal.r.e(nameResolver, "nameResolver");
            kotlin.jvm.internal.r.e(typeTable, "typeTable");
            this.b = descriptor;
            this.c = proto;
            this.f14765d = signature;
            this.f14766e = nameResolver;
            this.f14767f = typeTable;
            if (signature.hasGetter()) {
                StringBuilder sb = new StringBuilder();
                JvmProtoBuf.JvmMethodSignature getter = signature.getGetter();
                kotlin.jvm.internal.r.d(getter, "signature.getter");
                sb.append(nameResolver.getString(getter.getName()));
                JvmProtoBuf.JvmMethodSignature getter2 = signature.getGetter();
                kotlin.jvm.internal.r.d(getter2, "signature.getter");
                sb.append(nameResolver.getString(getter2.getDesc()));
                string = sb.toString();
            } else {
                kotlin.reflect.jvm.internal.impl.metadata.jvm.a.d.a aVarD = kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.d(kotlin.reflect.jvm.internal.impl.metadata.jvm.a.g.f15380a, proto, nameResolver, typeTable, false, 8, null);
                if (aVarD == null) {
                    throw new KotlinReflectionInternalError("No field signature for property: " + descriptor);
                }
                String strD = aVarD.d();
                string = kotlin.reflect.jvm.internal.impl.load.java.q.a(strD) + c() + "()" + aVarD.e();
            }
            this.f14764a = string;
        }

        private final String c() {
            String string;
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = this.b.b();
            kotlin.jvm.internal.r.d(kVarB, "descriptor.containingDeclaration");
            if (kotlin.jvm.internal.r.a(this.b.getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d) && (kVarB instanceof DeserializedClassDescriptor)) {
                ProtoBuf$Class protoBuf$ClassV0 = ((DeserializedClassDescriptor) kVarB).V0();
                GeneratedMessageLite.e<ProtoBuf$Class, Integer> eVar = JvmProtoBuf.i;
                kotlin.jvm.internal.r.d(eVar, "JvmProtoBuf.classModuleName");
                Integer num = (Integer) kotlin.reflect.jvm.internal.impl.metadata.c.e.a(protoBuf$ClassV0, eVar);
                if (num == null || (string = this.f14766e.getString(num.intValue())) == null) {
                    string = "main";
                }
                return "$" + kotlin.reflect.jvm.internal.impl.name.g.a(string);
            }
            if (!kotlin.jvm.internal.r.a(this.b.getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a) || !(kVarB instanceof b0)) {
                return "";
            }
            j0 j0Var = this.b;
            Objects.requireNonNull(j0Var, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.descriptors.DeserializedPropertyDescriptor");
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVarI = ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f) j0Var).I();
            if (!(dVarI instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.g)) {
                return "";
            }
            kotlin.reflect.jvm.internal.impl.load.kotlin.g gVar = (kotlin.reflect.jvm.internal.impl.load.kotlin.g) dVarI;
            if (gVar.e() == null) {
                return "";
            }
            return "$" + gVar.g().b();
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a, reason: from getter */
        public String getF14764a() {
            return this.f14764a;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final j0 getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final kotlin.reflect.jvm.internal.impl.metadata.c.c getF14766e() {
            return this.f14766e;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final ProtoBuf$Property getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final JvmProtoBuf.JvmPropertySignature getF14765d() {
            return this.f14765d;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final kotlin.reflect.jvm.internal.impl.metadata.c.g getF14767f() {
            return this.f14767f;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.d$d */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "getterSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "setterSignature", "(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;)V", "getGetterSignature", "()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "getSetterSignature", "asString", "", "kotlin-reflection"}, k = 1, mv = {1, 5, 1})
    public static final class d extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final JvmFunctionSignature.c f14768a;
        private final JvmFunctionSignature.c b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(JvmFunctionSignature.c getterSignature, JvmFunctionSignature.c cVar) {
            super(null);
            kotlin.jvm.internal.r.e(getterSignature, "getterSignature");
            this.f14768a = getterSignature;
            this.b = cVar;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public String getF14764a() {
            return this.f14768a.getF14685a();
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final JvmFunctionSignature.c getF14768a() {
            return this.f14768a;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final JvmFunctionSignature.c getB() {
            return this.b;
        }
    }

    private JvmPropertySignature() {
    }

    /* JADX INFO: renamed from: a */
    public abstract String getF14764a();

    public /* synthetic */ JvmPropertySignature(kotlin.jvm.internal.o oVar) {
        this();
    }
}
