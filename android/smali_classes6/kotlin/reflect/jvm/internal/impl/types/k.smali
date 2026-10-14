.class public final Lkotlin/reflect/jvm/internal/impl/types/k;
.super Lkotlin/reflect/jvm/internal/impl/types/m;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/j;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/k$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/types/k$a;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/types/f0;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->d:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/m;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    .line 3
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/f0;ZLkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/k;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)V

    return-void
.end method


# virtual methods
.method public J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k;->V0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p1

    return-object p1
.end method

.method public P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k;->V0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p1

    return-object p1
.end method

.method protected R0()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-object v0
.end method

.method public bridge synthetic T0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k;->W0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p1

    return-object p1
.end method

.method public final U0()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-object v0
.end method

.method public V0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/k;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Z

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/k;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)V

    return-object v0
.end method

.method public W0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/k;
    .locals 2

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/k;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Z

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/k;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)V

    return-object v0
.end method

.method public h0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/k;->c:Z

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->e(Lkotlin/reflect/jvm/internal/impl/types/c1;Z)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/checker/m;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

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
