.class final Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;->j()V
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
    c = "cn.mucang.jiakaoyi.uilib.model.DebugToolsViewModel$loadTools$1"
    f = "DebugToolsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    :try_start_0
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/c;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/c;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/i/c;->m()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    invoke-static {v3, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;->i()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel$loadTools$1;->this$0:Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 8
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
