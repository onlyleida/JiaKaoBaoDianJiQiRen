.class final Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.jiakaoyi.uilib.cost.ui.ChargeDialog$onCreate$2"
    f = "ChargeDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->$viewBinding:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;-><init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogChargeBinding;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "randomUUID().toString()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->c(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/b;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/b;-><init>()V

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$onCreate$2;->this$0:Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
