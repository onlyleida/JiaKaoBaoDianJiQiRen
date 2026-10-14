.class Lcn/mucang/android/core/ui/page/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/ui/page/d;->h(Lcn/mucang/android/core/ui/page/PageHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/ui/page/PageHistory;

.field final synthetic b:Lcn/mucang/android/core/ui/page/PageView;

.field final synthetic c:Lcn/mucang/android/core/ui/page/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;Lcn/mucang/android/core/ui/page/PageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d$d;->c:Lcn/mucang/android/core/ui/page/d;

    iput-object p2, p0, Lcn/mucang/android/core/ui/page/d$d;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    iput-object p3, p0, Lcn/mucang/android/core/ui/page/d$d;->b:Lcn/mucang/android/core/ui/page/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$d;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$d;->b:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v1}, Lcn/mucang/android/core/ui/page/PageView;->doSaveInstanceState()Lcn/mucang/android/core/ui/page/PageState;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageState:Lcn/mucang/android/core/ui/page/PageState;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$d;->b:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/PageView;->doDestroy()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$d;->c:Lcn/mucang/android/core/ui/page/d;

    invoke-static {v0}, Lcn/mucang/android/core/ui/page/d;->e(Lcn/mucang/android/core/ui/page/d;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$d;->c:Lcn/mucang/android/core/ui/page/d;

    invoke-static {v0}, Lcn/mucang/android/core/ui/page/d;->g(Lcn/mucang/android/core/ui/page/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d$d;->b:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d$d;->a:Lcn/mucang/android/core/ui/page/PageHistory;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    return-void
.end method
