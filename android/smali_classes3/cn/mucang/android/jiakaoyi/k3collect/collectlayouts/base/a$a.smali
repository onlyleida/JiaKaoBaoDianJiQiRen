.class public final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/CurveLineLayout$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;->b:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "CurveLineLayout"

    const-string v1, "\u66f2\u7ebf\u91c7\u96c6"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/q0;->k()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a$a;->b:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->G()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->G()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_1

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->G()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->F()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->G()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->F()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "refresh map. gpsList size = "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/a;->I()V

    :cond_2
    :goto_0
    const-wide/16 v0, 0xc8

    .line 10
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
