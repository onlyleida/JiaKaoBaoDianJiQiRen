.class public final Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/util/ClickController$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "cn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$1$3$1",
        "Lcn/mucang/sundial/library/util/ClickController$ClickListener;",
        "Lkotlin/v;",
        "onClickCountFull",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCountFull()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;

    invoke-static {v0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    new-instance v4, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity$initView$$inlined$with$lambda$3$1;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
