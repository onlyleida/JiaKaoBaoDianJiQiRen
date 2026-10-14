.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->init()V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.migrate.K3MigrateActivity$init$2"
    f = "K3MigrateActivity.kt"
    l = {
        0x93,
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mapData:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->$mapData:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->$mapData:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->$mapData:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 5
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    const-string v1, "\u7ebf\u8def\u4e3a\u7a7a"

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_1
    move-exception v1

    move-object p1, v3

    .line 8
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v1, p1

    .line 9
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2$1;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-direct {v5, v6, v3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->label:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    if-eqz v1, :cond_d

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    .line 12
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 13
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 15
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 18
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v4, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    .line 20
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    sget v7, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v5, v1, v6, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    goto :goto_5

    .line 21
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->l(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->k(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    sget v5, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)V

    .line 24
    :goto_6
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2$2;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-direct {v1, v5, v3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;Lkotlin/coroutines/c;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    move-object v0, v4

    .line 25
    :goto_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->m(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    .line 26
    :cond_d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
