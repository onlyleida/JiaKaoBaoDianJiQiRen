.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;


# instance fields
.field private final a:Ljava/lang/ClassLoader;

.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->a:Ljava/lang/ClassLoader;

    .line 2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    invoke-direct {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    return-void
.end method

.method private final d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f$a;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f$a;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;[BILkotlin/jvm/internal/o;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/c;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->k:Lkotlin/reflect/jvm/internal/impl/name/f;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/name/c;->i(Lkotlin/reflect/jvm/internal/impl/name/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->n(Lkotlin/reflect/jvm/internal/impl/name/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/h;->a(Lkotlin/reflect/jvm/internal/impl/name/b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/g;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k$a;

    move-result-object p1

    return-object p1
.end method
