.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;->b(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$Companion$launch$1"
    f = "K3PosCollectActivity.kt"
    l = {
        0x76
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Landroid/content/Context;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v3, "siteModel.mapData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/src/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v3, "parseArray"

    .line 7
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->b(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    if-nez v4, :cond_3

    move-object v4, p1

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->parseSrcData()Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v5

    .line 14
    iget-wide v6, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u8fdb\u5165\u79d1\u4e09\u91c7\u96c6\u9875\u9762 "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v3, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v5, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->gpsBaseId:J

    long-to-int v1, v5

    invoke-static {v3, v4, v1}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    .line 18
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1$2;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$siteModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v3, v4, v5, v6, p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1$2;-><init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 19
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
