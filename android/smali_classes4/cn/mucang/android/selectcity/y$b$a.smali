.class Lcn/mucang/android/selectcity/y$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/selectcity/y$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/selectcity/y$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/y$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/y$b$a;->a:Lcn/mucang/android/selectcity/y$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/y$b$a;->a:Lcn/mucang/android/selectcity/y$b;

    iget-object p1, p1, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/selectcity/y$b$a;->a:Lcn/mucang/android/selectcity/y$b;

    iget-object p1, p1, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
