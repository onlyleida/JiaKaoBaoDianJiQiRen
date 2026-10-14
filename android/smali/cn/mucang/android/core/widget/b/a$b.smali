.class public Lcn/mucang/android/core/widget/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/anzewei/parallaxbacklayout/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/widget/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/widget/b/a$b;->a:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcn/mucang/android/core/widget/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/b/a$b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/widget/b/a;->a()Lcn/mucang/android/core/widget/b/a;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/widget/b/a;->b(Lcn/mucang/android/core/widget/b/a;)Lcom/github/anzewei/parallaxbacklayout/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/widget/b/a$b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/github/anzewei/parallaxbacklayout/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcn/mucang/android/core/widget/b/a$b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/b/a$b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/b/a$b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
