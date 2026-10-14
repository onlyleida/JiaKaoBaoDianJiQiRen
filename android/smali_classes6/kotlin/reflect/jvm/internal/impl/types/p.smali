.class public final Lkotlin/reflect/jvm/internal/impl/types/p;
.super Lkotlin/reflect/jvm/internal/impl/types/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/p$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/types/p$a;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/types/v0;

.field private final c:Lkotlin/reflect/jvm/internal/impl/types/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/p$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/p;->d:Lkotlin/reflect/jvm/internal/impl/types/p$a;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/v0;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/p;-><init>(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)V

    return-void
.end method

.method public static final i(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/v0;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/p;->d:Lkotlin/reflect/jvm/internal/impl/types/p$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/p$a;->a(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 2

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 2

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->c:Lkotlin/reflect/jvm/internal/impl/types/v0;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/p;->b:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/v0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/v0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    return-object p1
.end method
