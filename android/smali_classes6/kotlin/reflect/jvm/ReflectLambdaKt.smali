.class public final Lkotlin/reflect/jvm/ReflectLambdaKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "reflect",
        "Lkotlin/reflect/KFunction;",
        "R",
        "Lkotlin/Function;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/c;)Lkotlin/reflect/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c<",
            "+TR;>;)",
            "Lkotlin/reflect/g<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$reflect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/g;->j([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/f;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 4
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/e;

    .line 5
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v2

    .line 6
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 7
    :goto_2
    invoke-direct {v10, v2, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/e;-><init>([IZ)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/metadata/c/g;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object p0

    const-string v0, "proto.typeTable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/c/g;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    sget-object v11, Lkotlin/reflect/jvm/ReflectLambdaKt$reflect$descriptor$1;->INSTANCE:Lkotlin/reflect/jvm/ReflectLambdaKt$reflect$descriptor$1;

    .line 9
    invoke-static/range {v6 .. v11}, Lkotlin/reflect/jvm/internal/q;->h(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/protobuf/n;Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/c/g;Lkotlin/reflect/jvm/internal/impl/metadata/c/a;Lkotlin/jvm/b/p;)Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/n0;

    if-eqz p0, :cond_3

    .line 10
    new-instance v0, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/b;->d:Lkotlin/reflect/jvm/internal/b;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/u;)V

    return-object v0

    :cond_3
    return-object v1
.end method
