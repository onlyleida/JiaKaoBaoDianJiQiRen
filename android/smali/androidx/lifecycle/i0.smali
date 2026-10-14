.class public Landroidx/lifecycle/i0;
.super Landroidx/lifecycle/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/i0$b;,
        Landroidx/lifecycle/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/z<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Landroidx/lifecycle/i0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i0<",
            "TT;>.b;)V"
        }
    .end annotation

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r;",
            "Landroidx/lifecycle/a0<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/lifecycle/i0$b;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    .line 2
    invoke-super {p0, p1, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method
