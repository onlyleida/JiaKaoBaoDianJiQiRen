.class final Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->h0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "isStart",
        "",
        "length",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->$mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->invoke(ZI)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(ZI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    int-to-double v5, p2

    cmpg-double p2, v3, v5

    if-gez p2, :cond_2

    const-string p1, "\u8f93\u5165\u957f\u5ea6\u5927\u4e8e\u539f\u672c\u7ebf\u7684\u957f\u5ea6"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 5
    invoke-static {v2, v0, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    .line 7
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {v0, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    .line 10
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v0, "srcData.start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string v0, "srcData.end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p2

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->b0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->b0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->c0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->c0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->h()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object p2

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->$mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->f()Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->c()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;->d0(Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;)Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->K0(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)Z

    move-result v2

    .line 24
    invoke-virtual {p1, p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Z)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    :cond_6
    return-void
.end method
