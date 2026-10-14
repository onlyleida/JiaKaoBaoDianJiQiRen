.class final Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u000e\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "event"

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iget-object p1, p1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->access$getMHandler$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iget-object p1, p1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->access$getMHandler$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iget-object p1, p1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->access$deletedEdit(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;

    iget-object p1, p1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;->access$getMHandler$p(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$mHandler$1;

    move-result-object p1

    const/16 p2, 0x65

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
