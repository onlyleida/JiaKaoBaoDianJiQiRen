.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008J \u0010\t\u001a\u00020\n2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHelper;",
        "",
        "()V",
        "findOrderByName",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "name",
        "",
        "orderItems",
        "",
        "updateRouteData",
        "",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;)",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    .line 2
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->getRouteSpotList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getOrderId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepId()I

    move-result v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "node.alias ?: Step.findW\u2026ode.stepId).getStepName()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/z0;->a(Ljava/lang/String;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-wide v2, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-virtual {v0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setOrderId(J)V

    .line 8
    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->setAlias(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
