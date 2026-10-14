.class public final Landroidx/lifecycle/i0$b;
.super Landroidx/lifecycle/i0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/i0<",
        "TT;>.a;"
    }
.end annotation


# instance fields
.field final synthetic c:Landroidx/lifecycle/i0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/a0<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/i0$b;->c:Landroidx/lifecycle/i0;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/i0$a;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/i0$a;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/lifecycle/i0$b;->c:Landroidx/lifecycle/i0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i0$b;->c:Landroidx/lifecycle/i0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/i0$a;->c(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/i0$a;->b()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/lifecycle/a0;->onChanged(Ljava/lang/Object;)V

    return-void
.end method
