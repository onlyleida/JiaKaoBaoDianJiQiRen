.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->m(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachStep$1"
    f = "K3TeachSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $selectK3TeachEntity:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->$selectK3TeachEntity:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->$selectK3TeachEntity:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->$selectK3TeachEntity:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    .line 5
    iget v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->o(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    const-string v2, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->s()V

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "\u6dfb\u52a0\u6210\u529f"

    goto :goto_0

    :cond_1
    const-string v0, "\u6dfb\u52a0\u5931\u8d25"

    .line 9
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    const-string v1, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 12
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
