.class public final Lkotlin/reflect/jvm/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\u0008\u00030\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;",
        "",
        "()V",
        "JAVA_LANG_VOID",
        "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
        "primitiveType",
        "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
        "Ljava/lang/Class;",
        "getPrimitiveType",
        "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;",
        "isKnownBuiltInFunction",
        "",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "mapJvmClassToKotlinClassId",
        "klass",
        "mapJvmFunctionSignature",
        "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;",
        "mapName",
        "",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
        "mapPropertySignature",
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature;",
        "possiblyOverriddenProperty",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "mapSignature",
        "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;",
        "possiblySubstitutedFunction",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/name/b;

.field public static final b:Lkotlin/reflect/jvm/internal/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/n;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/n;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/n;->b:Lkotlin/reflect/jvm/internal/n;

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/b;->m(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    const-string v1, "ClassId.topLevel(FqName(\"java.lang.Void\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/n;->a:Lkotlin/reflect/jvm/internal/impl/name/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p1

    const-string v0, "JvmPrimitiveType.get(simpleName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->n(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a;->e:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/a$a;->a()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;
    .locals 6

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/n;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v3, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/u;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;)V

    return-object v0
.end method

.method private final e(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k0;

    const-string v1, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->o(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/l0;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->o(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string p1, "descriptor.name.asString()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/name/b;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "klass.componentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/n;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/h;->l:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/name/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    return-object v0

    .line 4
    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/h$a;->h:Lkotlin/reflect/jvm/internal/impl/name/d;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/d;->l()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/b;->m(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object p1

    const-string v0, "ClassId.topLevel(Standar\u2026s.FqNames.array.toSafe())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lkotlin/reflect/jvm/internal/n;->a:Lkotlin/reflect/jvm/internal/impl/name/b;

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/n;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/name/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/h;->l:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->getTypeName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/b;-><init>(Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/name/f;)V

    return-object p1

    .line 8
    :cond_3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/b;->k()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/c;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/b;->b()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v1

    const-string v2, "classId.asSingleFqName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/c;->n(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method

.method public final f(Lkotlin/reflect/jvm/internal/impl/descriptors/j0;)Lkotlin/reflect/jvm/internal/d;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->L(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    const-string v0, "DescriptorUtils.unwrapFa\u2026ssiblyOverriddenProperty)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    move-result-object v1

    const-string p1, "DescriptorUtils.unwrapFa\u2026rriddenProperty).original"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;->X0()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v2

    .line 4
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    const-string v4, "JvmProtoBuf.propertySignature"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/c/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    if-eqz v3, :cond_a

    .line 5
    new-instance v6, Lkotlin/reflect/jvm/internal/d$c;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;->H()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;->D()Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/d$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/j0;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;)V

    return-object v6

    .line 6
    :cond_0
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/e;

    if-eqz p1, :cond_a

    .line 7
    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;->o()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    move-result-object p1

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 8
    :goto_0
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/n;

    if-eqz v2, :cond_3

    new-instance v0, Lkotlin/reflect/jvm/internal/d$a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/n;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/n;->U()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/d$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 9
    :cond_3
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    if-eqz v2, :cond_9

    new-instance v2, Lkotlin/reflect/jvm/internal/d$b;

    .line 10
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;->U()Ljava/lang/reflect/Method;

    move-result-object p1

    .line 11
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/l0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/n;->o()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-nez v3, :cond_5

    move-object v1, v0

    :cond_5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    if-nez v3, :cond_7

    move-object v1, v0

    :cond_7
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;->U()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 12
    :cond_8
    invoke-direct {v2, p1, v0}, Lkotlin/reflect/jvm/internal/d$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_3
    return-object v0

    .line 13
    :cond_9
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_a
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/k0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/n;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    move-result-object p1

    .line 15
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/l0;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/n;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    move-result-object v0

    .line 16
    :cond_b
    new-instance v1, Lkotlin/reflect/jvm/internal/d$d;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/d$d;-><init>(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;)V

    return-object v1
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;
    .locals 7

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->L(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026siblySubstitutedFunction)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/u;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object v0

    const-string v1, "DescriptorUtils.unwrapFa\u2026titutedFunction).original"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;

    if-eqz v1, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->c0()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->a:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->H()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v5

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->D()Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->e(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    new-instance p1, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    invoke-direct {p1, v3}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;)V

    return-object p1

    .line 7
    :cond_0
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->a:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->H()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    move-result-object v4

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;->D()Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/u;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$b;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$b;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/d$b;)V

    :goto_0
    return-object p1

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/n;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    instance-of p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 14
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;->o()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    move-result-object p1

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-nez v2, :cond_4

    move-object p1, v1

    :cond_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;->U()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$a;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$a;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 16
    :cond_7
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect resolution sequence for Java method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8
    instance-of p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/b;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p1, :cond_d

    .line 18
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/j;->o()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    move-result-object p1

    instance-of v4, p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-nez v4, :cond_9

    move-object p1, v1

    :cond_9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/w/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;

    move-result-object v1

    .line 19
    :cond_a
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/k;

    if-eqz p1, :cond_b

    .line 20
    new-instance p1, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/k;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/k;->U()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_3

    .line 21
    :cond_b
    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    if-eqz p1, :cond_c

    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->o()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->T()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;-><init>(Ljava/lang/Class;)V

    move-object p1, v0

    :goto_3
    return-object p1

    .line 23
    :cond_c
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_d
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/n;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 25
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/n;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature$c;

    move-result-object p1

    return-object p1

    .line 26
    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
