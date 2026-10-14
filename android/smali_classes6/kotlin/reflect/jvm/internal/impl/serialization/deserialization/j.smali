.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/c0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/c0;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/b;->h()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v1

    const-string v2, "classId.packageFqName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/c0;Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    .line 3
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->B0()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
