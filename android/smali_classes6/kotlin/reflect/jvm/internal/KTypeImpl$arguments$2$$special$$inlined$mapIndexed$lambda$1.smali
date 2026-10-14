.class final Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<no name provided>",
        "Ljava/lang/reflect/Type;",
        "invoke",
        "kotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $i:I

.field final synthetic $parameterizedTypeArguments$inlined:Lkotlin/f;

.field final synthetic $parameterizedTypeArguments$metadata$inlined:Lkotlin/reflect/l;

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;


# direct methods
.method constructor <init>(ILkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;Lkotlin/f;Lkotlin/reflect/l;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$i:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$parameterizedTypeArguments$inlined:Lkotlin/f;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$parameterizedTypeArguments$metadata$inlined:Lkotlin/reflect/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->invoke()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Type;
    .locals 3

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Object;

    :goto_0
    const-string v1, "if (javaType.isArray) ja\u2026Type else Any::class.java"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 6
    iget v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$i:I

    if-nez v1, :cond_2

    .line 7
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "javaType.genericComponentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$parameterizedTypeArguments$inlined:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 11
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "argument.lowerBounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/k;->v([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/k;->u([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    :goto_1
    const-string v1, "if (argument !is Wildcar\u2026ument.upperBounds.first()"

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0

    .line 14
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$$special$$inlined$mapIndexed$lambda$1;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
