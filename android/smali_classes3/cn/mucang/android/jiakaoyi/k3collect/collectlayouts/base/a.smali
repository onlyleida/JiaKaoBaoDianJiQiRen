.class public abstract Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;
.super Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0014\u0008&\u0018\u0000 #2\u00020\u0001:\u0001#B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0018H\u0002J0\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u001a\u001a\u00020\u000c2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001cJ\u0008\u0010\u001e\u001a\u00020\u001fH&J\u0006\u0010 \u001a\u00020\u001fJ\u0010\u0010!\u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0007R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
        "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V",
        "gpsList",
        "Ljava/util/ArrayList;",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "Lkotlin/collections/ArrayList;",
        "getGpsList",
        "()Ljava/util/ArrayList;",
        "isRunning",
        "",
        "()Z",
        "setRunning",
        "(Z)V",
        "lastPos",
        "getLastPos",
        "()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "runnable",
        "cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1",
        "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1;",
        "addPoint",
        "gps",
        "",
        "getCurve",
        "isCurve",
        "curveList",
        "",
        "linearList",
        "refreshMap",
        "",
        "removeRunnable",
        "startRunnable",
        "currentGps",
        "Companion",
        "MapCollectK3_release"
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
.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private final k:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->k:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;

    return-void
.end method


# virtual methods
.method public final E(ZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    const-string v0, "curveList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linearList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->J0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method protected final F()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final G()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->i:Z

    return v0
.end method

.method public abstract I()V
.end method

.method public final J()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->i:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->k:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final K(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->i:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->i:Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->k:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->I()V

    :cond_2
    return-void
.end method
