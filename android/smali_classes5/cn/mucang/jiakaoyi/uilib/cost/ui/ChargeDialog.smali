.class public final Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "learnerId",
        "",
        "hintWord",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "getHintWord",
        "()Ljava/lang/String;",
        "getLearnerId",
        "uuid",
        "checkSuccessPay",
        "",
        "dismiss",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->d()V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;->a:Ljava/lang/String;

    return-void
.end method

.method private final d()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog$checkSuccessPay$1;-><init>(Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    const p0, 0x0

    throw p0
.end method
