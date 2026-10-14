.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->t(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$save$1"
    f = "K3TeachSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/h/b;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->$callback:Lcn/mucang/android/jiakaoyi/framework/h/b;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->$callback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/h/b;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->p()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8003\u573a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " save teach "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v4, v5, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->q(JLjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    const-string p1, "\u4fdd\u5b58\u6210\u529f"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->s()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {v3, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->$callback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 15
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 16
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    .line 17
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6559\u5b66\u4fdd\u5b58\u5931\u8d25 "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    invoke-static {p1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    const-string p1, "\u4fdd\u5b58\u51fa\u9519"

    .line 22
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 23
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 24
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    const-string v1, "\u6ca1\u6709\u4fee\u6539\u8fc7\u6570\u636e"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 25
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
