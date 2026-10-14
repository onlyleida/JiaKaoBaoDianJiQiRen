.class public final Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014J\u001a\u0010\u0015\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u0016*\u00060\u0017j\u0002`\u00182\u0006\u0010\u001c\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;",
        "",
        "()V",
        "renderer",
        "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;",
        "renderCallable",
        "",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;",
        "renderFunction",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "renderLambda",
        "invoke",
        "renderParameter",
        "parameter",
        "Lkotlin/reflect/jvm/internal/KParameterImpl;",
        "renderProperty",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "renderType",
        "type",
        "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
        "appendReceiverType",
        "",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "receiver",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
        "appendReceivers",
        "callable",
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
.field private static final a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

.field public static final b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->b:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    sput-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/u0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    const-string v0, "receiver.type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private final b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/q;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->O()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)V

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "("

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)V

    if-eqz v0, :cond_2

    const-string p2, ")"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/j0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal callable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Ljava/lang/String;
    .locals 12

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fun "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v11, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-direct {v11, v0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    .line 4
    sget-object v1, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->v(Lkotlin/reflect/jvm/internal/impl/name/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "descriptor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$renderFunction$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$renderFunction$1$1;

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Lkotlin/collections/s;->k0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    const-string v1, ": "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "descriptor.returnType!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Ljava/lang/String;
    .locals 12

    const-string v0, "invoke"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v11, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-direct {v11, v0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    .line 3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    const-string v2, "invoke.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$renderLambda$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer$renderLambda$1$1;

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Lkotlin/collections/s;->k0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    const-string v1, " -> "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "invoke.returnType!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lkotlin/reflect/jvm/internal/KParameterImpl;)Ljava/lang/String;
    .locals 3

    const-string v0, "parameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->g()Lkotlin/reflect/KParameter$Kind;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/m;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "instance parameter"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "extension receiver parameter"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v1, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->f()Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KCallableImpl;->t()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final g(Lkotlin/reflect/jvm/internal/impl/descriptors/j0;)Ljava/lang/String;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w0;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "var "

    goto :goto_0

    :cond_0
    const-string v1, "val "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b:Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;

    invoke-direct {v1, v0, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    .line 4
    sget-object v2, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v3

    const-string v4, "descriptor.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->v(Lkotlin/reflect/jvm/internal/impl/name/f;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/u0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    const-string v2, "descriptor.type"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->a:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;->w(Lkotlin/reflect/jvm/internal/impl/types/a0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
