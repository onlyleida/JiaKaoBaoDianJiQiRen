.class public Lcn/mucang/android/core/api/verify/geetest/b;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/api/verify/geetest/b$d;,
        Lcn/mucang/android/core/api/verify/geetest/b$c;,
        Lcn/mucang/android/core/api/verify/geetest/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:Lcn/mucang/android/core/api/verify/geetest/b$c;

.field private m:Ljava/util/Timer;

.field private n:Lcn/mucang/android/core/api/verify/geetest/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "http://static.geetest.com/static/appweb/app-index.html"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->a:Ljava/lang/String;

    const-string v0, "zh-cn"

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->e:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->f:Ljava/lang/String;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->g:Ljava/lang/Boolean;

    .line 6
    iput-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->h:Landroid/app/Dialog;

    const/16 v0, 0x2710

    .line 7
    iput v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->k:I

    .line 8
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->i:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcn/mucang/android/core/api/verify/geetest/b;->f:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcn/mucang/android/core/api/verify/geetest/b;->c:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcn/mucang/android/core/api/verify/geetest/b;->d:Ljava/lang/Boolean;

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/core/api/verify/geetest/b;->i()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->m:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/api/verify/geetest/b;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->m:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/core/api/verify/geetest/b;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/core/api/verify/geetest/b;)Lcn/mucang/android/core/api/verify/geetest/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->n:Lcn/mucang/android/core/api/verify/geetest/b$b;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/core/api/verify/geetest/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->k:I

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/core/api/verify/geetest/b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/geetest/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/api/verify/geetest/a;->b(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 4
    new-instance v3, Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcn/mucang/android/core/api/verify/geetest/b$c;-><init>(Lcn/mucang/android/core/api/verify/geetest/b;Landroid/content/Context;)V

    iput-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    .line 5
    div-int/lit8 v1, v0, 0x4

    :cond_0
    mul-int/lit8 v1, v1, 0x4

    .line 6
    div-int/lit8 v1, v1, 0x5

    int-to-float v0, v1

    div-float/2addr v0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    const/16 v4, 0x122

    if-ge v0, v4, :cond_1

    const v0, 0x4390c000    # 289.5f

    mul-float v0, v0, v2

    float-to-int v1, v0

    .line 7
    :cond_1
    iput v1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->j:I

    .line 8
    new-instance v0, Lcn/mucang/android/core/api/verify/geetest/b$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/verify/geetest/b$d;-><init>(Lcn/mucang/android/core/api/verify/geetest/b;)V

    const-string v4, "JSInterface"

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?gt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&challenge="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&success="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&osType=android&osVerInt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&gsdkVerCode=2.16.4.21.1&lang="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&title="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&debug="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/geetest/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "&width="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->buildLayer()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public j(Lcn/mucang/android/core/api/verify/geetest/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->n:Lcn/mucang/android/core/api/verify/geetest/b$b;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    iget v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->j:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 6
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->l:Lcn/mucang/android/core/api/verify/geetest/b$c;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/geetest/b;->i:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
