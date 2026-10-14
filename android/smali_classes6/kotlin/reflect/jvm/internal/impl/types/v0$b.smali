.class public final Lkotlin/reflect/jvm/internal/impl/types/v0$b;
.super Lkotlin/reflect/jvm/internal/impl/types/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/v0;->h()Lkotlin/reflect/jvm/internal/impl/types/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/types/v0;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/v0;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/v0$b;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/v0$b;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/v0$b;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/v0$b;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->f()Z

    move-result v0

    return v0
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/v0$b;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/v0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    return-object p1
.end method
