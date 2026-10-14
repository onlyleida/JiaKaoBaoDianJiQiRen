.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->l(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lkotlin/jvm/b/a;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingViewModel$deleteTeachItem$1"
    f = "K3TeachSettingViewModel.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $data:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$data:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$callback:Lkotlin/jvm/b/a;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$data:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$callback:Lkotlin/jvm/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$data:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    if-eqz p1, :cond_3

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$data:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    const-string v6, "data.id"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcn/mucang/android/jiakaoyi/k3setting/teach/v;->n(J)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v4, v5, v3, v5}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1$1;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->$callback:Lkotlin/jvm/b/a;

    invoke-direct {v1, v6, v5}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1$1;-><init>(Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v4, v5, v3, v5}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 8
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    invoke-static {p1, v4, v5, v3, v5}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
