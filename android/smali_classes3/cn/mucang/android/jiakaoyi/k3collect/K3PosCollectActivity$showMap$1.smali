.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$showMap$1"
    f = "K3PosCollectActivity.kt"
    l = {
        0x3be,
        0x3c4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-wide v5, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    const-string p1, "\u7ebf\u8def\u4e3a\u7a7a"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->p(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    .line 9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 10
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    .line 12
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 13
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 15
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->C(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->C(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    const-class p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    .line 19
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "gpsList[gpsList.size - 1]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {p1, v5}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 21
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->k0()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->b(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->C(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    .line 23
    iget v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p;->a(I)Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 24
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->q(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    .line 25
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v5

    invoke-interface {v6, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 26
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_3

    .line 27
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->v(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->w(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->k0()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v1

    .line 30
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->v(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v5

    .line 31
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->v(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v6, v6

    .line 32
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->w(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 33
    invoke-virtual {p1, v1, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->j(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;FFF)V

    goto :goto_4

    .line 34
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->B(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 35
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->B(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->q(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/signal/i/b;

    move-result-object v5

    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v5, "transCurve(converter, gpsList)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->k0()Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->B(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;)V

    :goto_4
    const-wide/16 v5, 0x64

    .line 37
    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 38
    :cond_c
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v1

    const v4, 0x3ca3d70a    # 0.02f

    if-nez v1, :cond_d

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v1

    :goto_6
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->R(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;F)V

    .line 39
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->u(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->u(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)F

    move-result v4

    :goto_7
    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->T(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;F)V

    .line 40
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->A(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setMinZoom(F)V

    .line 41
    :cond_10
    :goto_8
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-direct {v1, v4, v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$showMap$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_11

    return-object v0

    .line 42
    :cond_11
    :goto_9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_12
    const-string p1, "examSiteModel"

    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
