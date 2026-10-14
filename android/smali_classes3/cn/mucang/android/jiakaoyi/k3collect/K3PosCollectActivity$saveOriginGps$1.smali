.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->r1(Lkotlin/jvm/b/a;)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveOriginGps$1"
    f = "K3PosCollectActivity.kt"
    l = {
        0x218
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field final synthetic $setOriginCallBack:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$setOriginCallBack:Lkotlin/jvm/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$setOriginCallBack:Lkotlin/jvm/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "examSiteModel"

    const/4 v12, 0x0

    if-eqz p1, :cond_9

    :try_start_2
    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 7
    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 8
    iget-wide v10, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    .line 9
    invoke-virtual/range {v3 .. v11}, Lcn/mucang/jiakaoyi/uilib/i/g;->v(JDDD)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    const-string v3, "\u8bbe\u7f6e\u539f\u70b9\u6210\u529f,\u8bf7\u5f00\u59cb\u91c7\u96c6"

    invoke-static {p1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->Y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iput-wide v3, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iput-wide v3, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$originGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    iput-wide v3, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    .line 15
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/i/b;

    .line 16
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-wide v5, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 18
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-wide v7, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 19
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->t(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v9, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    move-object v4, v11

    .line 20
    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    .line 21
    invoke-direct {v3, v11}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 22
    invoke-static {p1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->N(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/i/b;)V

    .line 23
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->$setOriginCallBack:Lkotlin/jvm/b/a;

    invoke-direct {v1, v3, v12}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1$1;-><init>(Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 24
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v12

    .line 25
    :cond_3
    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    throw v12

    .line 26
    :cond_4
    :try_start_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    throw v12

    .line 27
    :cond_5
    :try_start_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    throw v12

    .line 28
    :cond_6
    :try_start_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    throw v12

    .line 29
    :cond_7
    :try_start_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    throw v12

    .line 30
    :cond_8
    :try_start_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveOriginGps$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    const-string v0, "\u8bbe\u7f6e\u539f\u70b9\u5931\u8d25"

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->Y(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    throw v12

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u539f\u70b9\u5931\u8d25 "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 33
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-nez v0, :cond_a

    instance-of v0, p1, Lcn/mucang/android/core/api/exception/InternalException;

    if-nez v0, :cond_a

    instance-of v0, p1, Lcn/mucang/android/core/api/exception/HttpException;

    if-eqz v0, :cond_b

    .line 34
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 35
    :cond_b
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
