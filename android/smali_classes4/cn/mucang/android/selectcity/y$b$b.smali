.class Lcn/mucang/android/selectcity/y$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcn/mucang/android/selectcity/y$b$b;->a:Lcn/mucang/android/selectcity/y$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b$b;->a:Lcn/mucang/android/selectcity/y$b;

    iget-object v0, v0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/selectcity/y$b$b;->a:Lcn/mucang/android/selectcity/y$b;

    iget-object v0, v0, Lcn/mucang/android/selectcity/y$b;->c:Lcn/mucang/android/selectcity/y;

    invoke-static {v0}, Lcn/mucang/android/selectcity/y;->x(Lcn/mucang/android/selectcity/y;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/selectcity/y$b$b;->a:Lcn/mucang/android/selectcity/y$b;

    iget-object v1, v1, Lcn/mucang/android/selectcity/y$b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
