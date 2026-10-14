.class final Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->init()V
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
    c = "cn.mucang.jiakaoyi.uilib.deduct.DeductPersonalModifyActivity$init$3"
    f = "DeductPersonalModifyActivity.kt"
    l = {
        0x45,
        0x51
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataAdapter:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;

.field final synthetic $loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v1

    invoke-direct {p1, v1}, Lcn/mucang/jiakaoyi/uilib/i/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;->j(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcn/mucang/jiakaoyi/uilib/i/d;->n(J)Ljava/util/List;

    move-result-object v8

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3$1;

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v9, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    iget-object v10, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->$dataAdapter:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$b;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3$2;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3$2;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductPersonalModifyActivity$init$3;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
