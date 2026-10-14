.class final Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->run()V
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
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/v;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.sundial.library.activity.MainActivity$stayThenJump$1$1"
    f = "MainActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    invoke-direct {p1, v0, p2}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;-><init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;->this$0:Lcn/mucang/sundial/library/activity/MainActivity;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1$1;-><init>(Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1$1;)V

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;->setContent(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
