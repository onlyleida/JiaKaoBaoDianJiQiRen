.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapManagerActivity$init$2$1$2"
    f = "K3MapManagerActivity.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroid/view/View;

.field final synthetic $newModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic $pd:Landroid/app/ProgressDialog;

.field label:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/ProgressDialog;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/ProgressDialog;",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$it:Landroid/view/View;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$newModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$it:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$newModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;-><init>(Landroid/view/View;Landroid/app/ProgressDialog;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_2

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
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2$result$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$newModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-direct {v1, v4, v2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2$result$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->I:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$it:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "it.context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;->b(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_5

    .line 8
    :goto_2
    :try_start_2
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_4

    .line 9
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 13
    :goto_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$2$1$2;->$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    throw p1
.end method
