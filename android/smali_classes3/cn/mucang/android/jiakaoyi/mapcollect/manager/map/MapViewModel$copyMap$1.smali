.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
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
    c = "cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapViewModel$copyMap$1"
    f = "MapViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $model:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->$model:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->$model:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->$model:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/g;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    const-string v3, "newModel.mapDataMd5"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    const-string v3, "newModel.mapDataUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/f;->p(ILjava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    const-string v3, "\u590d\u5236\u6210\u529f!"

    invoke-virtual {v2, v0, v3}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    .line 7
    iget-wide v5, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->$model:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v7, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    iget-wide v9, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    iget-wide v11, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    invoke-virtual/range {v4 .. v12}, Lcn/mucang/jiakaoyi/uilib/i/g;->v(JDDD)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_2

    .line 8
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    const-string v1, "\u590d\u5236\u5931\u8d25,\u6ca1\u6709\u5730\u56fe\u6570\u636e"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    .line 9
    instance-of p1, v1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_3

    check-cast v1, Lcn/mucang/android/core/api/exception/ApiException;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string p1, "\u590d\u5236\u5931\u8d25"

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v1

    .line 10
    :goto_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel$copyMap$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;

    invoke-virtual {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 11
    :cond_6
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
