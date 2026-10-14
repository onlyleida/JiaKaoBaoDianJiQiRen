.class final Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->onClickCountFull()V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/v;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "cn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$1$3$1$onClickCountFull$1",
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
    c = "cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$1$3$1$onClickCountFull$1"
    f = "CoachLoginActivity.kt"
    l = {
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

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

    new-instance p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    invoke-direct {p1, v0, p2}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->label:I

    const/4 v2, 0x0

    const-string v3, "titleIv"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->titleIv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->titleIv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1$1;

    invoke-direct {v1, v2}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1$1;-><init>(Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;

    const-class v0, Lcn/mucang/sundial/library/activity/AdminCheckActivity;

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity$default(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string p1, "socket\u672a\u8fde\u63a5\uff0c\u65e0\u6cd5\u8fdb\u5165\u5b9e\u65bd\u9875"

    .line 10
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object p1, p1, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->$this_with:Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;->titleIv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
