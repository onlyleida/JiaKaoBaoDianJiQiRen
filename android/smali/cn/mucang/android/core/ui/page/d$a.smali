.class Lcn/mucang/android/core/ui/page/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/ui/page/d;-><init>(Landroid/content/Context;Lcn/mucang/android/core/ui/page/PageAppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/ui/page/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/ui/page/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcn/mucang/android/core/ui/page/d;->a(Lcn/mucang/android/core/ui/page/d;Z)Z

    const-string p1, "fuckfuck"

    const-string p3, "endTransition"

    .line 2
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    invoke-static {p1}, Lcn/mucang/android/core/ui/page/d;->b(Lcn/mucang/android/core/ui/page/d;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    invoke-static {p1}, Lcn/mucang/android/core/ui/page/d;->b(Lcn/mucang/android/core/ui/page/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/android/core/ui/page/d;->c(Lcn/mucang/android/core/ui/page/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d$a;->a:Lcn/mucang/android/core/ui/page/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/android/core/ui/page/d;->a(Lcn/mucang/android/core/ui/page/d;Z)Z

    const-string p1, "fuckfuck"

    const-string p2, "startTransition"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
