.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->s()V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$loadOnlineTeachData$1"
    f = "K3TeachSettingViewModel.kt"
    l = {
        0xb3,
        0xb3,
        0xb3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->j(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->r()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v5

    iget-wide v5, v5, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8003\u573a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v6

    iget-wide v6, v6, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " \u6559\u5b66\u6570\u636e\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->i(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 10
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->j(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v6

    const-string v8, "k3TeachEntity.copy()"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->q()Landroidx/lifecycle/z;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v1, v4, p1, v3, p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v2, v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "\u91c7\u96c6\u65f6 \u83b7\u53d6\u6559\u5b66\u6570\u636e\u62a5\u9519\uff1a"

    .line 15
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v1, v4, p1, v3, p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v2, v4, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 18
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 19
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->$jLoadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v4, v5, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v1

    .line 20
    :goto_3
    throw v0
.end method
