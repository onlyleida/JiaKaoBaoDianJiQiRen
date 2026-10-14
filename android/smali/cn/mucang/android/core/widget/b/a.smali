.class public Lcn/mucang/android/core/widget/b/a;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/widget/b/a$b;,
        Lcn/mucang/android/core/widget/b/a$c;
    }
.end annotation


# static fields
.field private static b:Lcn/mucang/android/core/widget/b/a;


# instance fields
.field private a:Lcom/github/anzewei/parallaxbacklayout/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/anzewei/parallaxbacklayout/a<",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/core/widget/b/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/widget/b/a;

    invoke-direct {v0}, Lcn/mucang/android/core/widget/b/a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/widget/b/a;->b:Lcn/mucang/android/core/widget/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    .line 2
    new-instance v0, Lcom/github/anzewei/parallaxbacklayout/a;

    invoke-direct {v0}, Lcom/github/anzewei/parallaxbacklayout/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/widget/b/a;->a:Lcom/github/anzewei/parallaxbacklayout/a;

    return-void
.end method

.method static synthetic a()Lcn/mucang/android/core/widget/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/widget/b/a;->b:Lcn/mucang/android/core/widget/b/a;

    return-object v0
.end method

.method static synthetic b(Lcn/mucang/android/core/widget/b/a;)Lcom/github/anzewei/parallaxbacklayout/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/widget/b/a;->a:Lcom/github/anzewei/parallaxbacklayout/a;

    return-object p0
.end method

.method public static e()Lcn/mucang/android/core/widget/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/widget/b/a;->b:Lcn/mucang/android/core/widget/b/a;

    return-object v0
.end method

.method private g(Landroid/app/Activity;Z)Lcom/github/anzewei/parallaxbacklayout/d/a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/github/anzewei/parallaxbacklayout/d/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/github/anzewei/parallaxbacklayout/d/a;

    return-object v0

    .line 3
    :cond_0
    sget v0, Lcom/github/anzewei/parallaxbacklayout/R$id;->pllayout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/github/anzewei/parallaxbacklayout/d/a;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/github/anzewei/parallaxbacklayout/d/a;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, Lcom/github/anzewei/parallaxbacklayout/d/a;

    invoke-direct {p2, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 7
    invoke-virtual {p2, p1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->n(Landroid/app/Activity;)V

    .line 8
    new-instance v0, Lcn/mucang/android/core/widget/b/a$b;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/core/widget/b/a$b;-><init>(Landroid/app/Activity;Lcn/mucang/android/core/widget/b/a$a;)V

    invoke-virtual {p2, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setBackgroundView(Lcom/github/anzewei/parallaxbacklayout/d/a$b;)V

    .line 9
    invoke-virtual {p0, p2}, Lcn/mucang/android/core/widget/b/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)V

    return-object p2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/widget/b/a;->f(Landroid/app/Activity;)Lcom/github/anzewei/parallaxbacklayout/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setEnableGesture(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)Lcom/github/anzewei/parallaxbacklayout/d/a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/widget/b/a;->g(Landroid/app/Activity;Z)Lcom/github/anzewei/parallaxbacklayout/d/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setEnableGesture(Z)V

    return-object p1
.end method

.method public f(Landroid/app/Activity;)Lcom/github/anzewei/parallaxbacklayout/d/a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/core/widget/b/a;->g(Landroid/app/Activity;Z)Lcom/github/anzewei/parallaxbacklayout/d/a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/github/anzewei/parallaxbacklayout/d/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->LEFT:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    invoke-virtual {v0}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setEdgeFlag(I)V

    .line 2
    sget-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->EDGE:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    invoke-virtual {v0}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/anzewei/parallaxbacklayout/d/a;->setEdgeMode(I)V

    .line 3
    sget-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Layout;->PARALLAX:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Layout;

    invoke-virtual {v0}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Layout;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/github/anzewei/parallaxbacklayout/d/a;->q(ILcom/github/anzewei/parallaxbacklayout/c/b;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p2, Lcn/mucang/android/core/widget/b/a$c;

    invoke-direct {p2}, Lcn/mucang/android/core/widget/b/a$c;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/b/a;->a:Lcom/github/anzewei/parallaxbacklayout/a;

    invoke-virtual {v0, p1, p2}, Lcom/github/anzewei/parallaxbacklayout/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {p2, p1}, Lcn/mucang/android/core/widget/b/a$c;->a(Lcn/mucang/android/core/widget/b/a$c;Landroid/app/Activity;)Landroid/app/Activity;

    .line 4
    instance-of p2, p1, Lcn/mucang/android/core/config/n;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/mucang/android/framework/core/R$bool;->core__swipe_back_enabled:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/core/widget/b/a;->a:Lcom/github/anzewei/parallaxbacklayout/a;

    invoke-virtual {p2}, Lcom/github/anzewei/parallaxbacklayout/a;->d()I

    move-result p2

    if-lez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/widget/b/a;->d(Landroid/app/Activity;)Lcom/github/anzewei/parallaxbacklayout/d/a;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/widget/b/a;->h(Lcom/github/anzewei/parallaxbacklayout/d/a;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/b/a;->a:Lcom/github/anzewei/parallaxbacklayout/a;

    invoke-virtual {v0, p1}, Lcom/github/anzewei/parallaxbacklayout/a;->c(Ljava/lang/Object;)V

    return-void
.end method
