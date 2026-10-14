.class public final Landroidx/lifecycle/c$b;
.super Landroidx/lifecycle/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/c<",
        "TT;>.a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000c0\u0001R\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/lifecycle/BusLiveData$DefaultWrapper;",
        "Landroidx/lifecycle/BusLiveData$BusWrapper;",
        "Landroidx/lifecycle/BusLiveData;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "(Landroidx/lifecycle/BusLiveData;Landroidx/lifecycle/Observer;)V",
        "onChanged",
        "",
        "t",
        "(Ljava/lang/Object;)V",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic d:Landroidx/lifecycle/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/c;Landroidx/lifecycle/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/a0<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/c$b;->d:Landroidx/lifecycle/c;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/c$a;-><init>(Landroidx/lifecycle/c;Landroidx/lifecycle/a0;)V

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
    invoke-virtual {p0}, Landroidx/lifecycle/c$a;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/lifecycle/c$b;->d:Landroidx/lifecycle/c;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/c$b;->d:Landroidx/lifecycle/c;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c$a;->c(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/c$a;->b()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/lifecycle/a0;->onChanged(Ljava/lang/Object;)V

    return-void
.end method
