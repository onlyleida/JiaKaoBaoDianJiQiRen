.class Lcn/mucang/android/core/ui/page/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/ui/page/d;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/ui/page/PageHistory;

.field final synthetic b:Lcn/mucang/android/core/ui/page/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d$c;->b:Lcn/mucang/android/core/ui/page/d;

    iput-object p2, p0, Lcn/mucang/android/core/ui/page/d$c;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-static {v0}, Lcn/mucang/android/core/ui/page/d;->e(Lcn/mucang/android/core/ui/page/d;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$c;->b:Lcn/mucang/android/core/ui/page/d;

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$c;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-static {v0, v1}, Lcn/mucang/android/core/ui/page/d;->f(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-static {v1}, Lcn/mucang/android/core/ui/page/d;->g(Lcn/mucang/android/core/ui/page/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$c;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    iget-object v1, v1, Lcn/mucang/android/core/ui/page/PageHistory;->pageState:Lcn/mucang/android/core/ui/page/PageState;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/PageView;->doRestoreInstanceState(Lcn/mucang/android/core/ui/page/PageState;)V

    return-void
.end method
