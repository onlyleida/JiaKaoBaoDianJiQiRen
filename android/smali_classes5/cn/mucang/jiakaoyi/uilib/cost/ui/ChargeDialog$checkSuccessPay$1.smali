.class final Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->d()V
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
    c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$checkSuccessPay$1"
    f = "ChargeDialog.kt"
    l = {
        0x4b,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;",
            ">;)V"
        }
    .end annotation

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;-><init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v4, 0x1f4

    .line 5
    iput v3, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/b;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/b;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->b(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/uilib/i/b;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1$1;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->a(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
