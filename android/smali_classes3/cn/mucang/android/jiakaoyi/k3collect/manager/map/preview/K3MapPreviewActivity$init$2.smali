.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->init()V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.preview.K3MapPreviewActivity$init$2"
    f = "K3MapPreviewActivity.kt"
    l = {
        0x4d,
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $mapData:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/android/jiakaoyi/signal/i/b;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$mapData:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$mapData:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$mapData:Ljava/lang/String;

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

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$1;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    invoke-direct {v5, v6, v3}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->label:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    if-eqz v1, :cond_c

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    .line 13
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 15
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->center()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 16
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/b;

    invoke-virtual {v1, v9}, Lcn/mucang/android/jiakaoyi/k3collect/src/b;->a(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 19
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v5, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    .line 21
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;)Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/R$id;->mapView:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-virtual {v4, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;

    goto :goto_5

    .line 22
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$defaultConverter:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2$2;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/ArrayList;Lkotlin/coroutines/c;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 23
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/preview/K3MapPreviewActivity$init$2;->$isLoadFinish:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const-string p1, "\u6570\u636e\u4e3anull"

    .line 24
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 25
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
