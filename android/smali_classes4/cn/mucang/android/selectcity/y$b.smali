.class Lcn/mucang/android/selectcity/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/selectcity/ui/LetterIndexBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/selectcity/y;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/view/animation/Animation;

.field private b:Ljava/lang/Runnable;

.field final synthetic c:Lcn/mucang/android/selectcity/y;


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/y;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcn/mucang/android/framework/select/city/R$anim;->select_city__section_dismiss_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/selectcity/y$b;->a:Landroid/view/animation/Animation;

    .line 3
    new-instance v0, Lcn/mucang/android/selectcity/y$b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/selectcity/y$b$a;-><init>(Lcn/mucang/android/selectcity/y$b;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    new-instance p1, Lcn/mucang/android/selectcity/y$b$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/selectcity/y$b$b;-><init>(Lcn/mucang/android/selectcity/y$b;)V

    iput-object p1, p0, Lcn/mucang/android/selectcity/y$b;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/selectcity/y$b;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/mucang/android/framework/select/city/R$layout;->select_city__selected_section_toast:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-static {v0, v2}, Lcn/mucang/android/selectcity/y;->y(Lcn/mucang/android/selectcity/y;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v3

    .line 7
    invoke-static {v2}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v2

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 8
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object v2, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    iget-object v3, v2, Lcn/mucang/android/selectcity/y;->U:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/selectcity/y$b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 13
    iget-object p1, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {p1}, Lcn/mucang/android/selectcity/y;->A(Lcn/mucang/android/selectcity/y;)Lcn/mucang/android/wuhan/widget/PinnedHeaderListView;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0, p2}, Lcn/mucang/android/selectcity/y;->z(Lcn/mucang/android/selectcity/y;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
