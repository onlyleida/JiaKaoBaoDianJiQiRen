.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

.field private final c:Lkotlin/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/f<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/f;

.field private final e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;Lkotlin/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;",
            "Lkotlin/f<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->c:Lkotlin/f;

    .line 5
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d:Lkotlin/f;

    .line 6
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/load/java/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/p;

    return-object v0
.end method

.method public final c()Lkotlin/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/f<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->c:Lkotlin/f;

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/storage/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    return-object v0
.end method
