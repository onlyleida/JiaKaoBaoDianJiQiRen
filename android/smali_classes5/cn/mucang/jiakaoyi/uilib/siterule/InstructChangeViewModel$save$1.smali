.class final Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->m(Ljava/util/List;)V
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
    c = "cn.mucang.jiakaoyi.uilib.siterule.InstructChangeViewModel$save$1"
    f = "InstructChangeViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->$dataList:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->$dataList:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;-><init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->$dataList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u540e\u7684\u6307\u4ee4\u5217\u8868\uff1a"

    .line 3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "jsonStr"

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/siterule/g0;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;-><init>()V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4, v2}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;->n(Ljava/lang/String;JI)Z

    move-result v0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "B2"

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MOTO"

    goto :goto_0

    :cond_2
    const-string v1, "C1"

    .line 8
    :goto_0
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/siterule/i0;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/siterule/i0;-><init>()V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v1, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/i0;->n(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "\u6307\u4ee4\u4fee\u6539\u6210\u529f"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    const-string v1, "\u4fdd\u5b58\u6210\u529f!"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->k()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->$dataList:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/k/a;->f(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const-string v0, "\u6307\u4ee4\u4fee\u6539\u5931\u8d25"

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25!"

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4fee\u6539\u6307\u4ee4\u5f02\u5e38\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "\u670d\u52a1\u5f02\u5e38"

    :cond_4
    invoke-virtual {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 17
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
