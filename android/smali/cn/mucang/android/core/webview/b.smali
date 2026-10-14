.class public Lcn/mucang/android/core/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/b$a;-><init>(Lcn/mucang/android/core/webview/b;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/b;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const v0, 0x1020002

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/core/webview/b;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcn/mucang/android/core/webview/b;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/webview/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/b;->c()V

    return-void
.end method

.method private b(I)I
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->r()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private c()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->o(Landroid/view/WindowManager;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/b;->b(I)I

    move-result v1

    .line 4
    iget v2, p0, Lcn/mucang/android/core/webview/b;->b:I

    if-eq v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v0, v2, v1

    .line 6
    div-int/lit8 v3, v2, 0x4

    if-le v0, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcn/mucang/android/core/webview/b;->c:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v2, v0

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/b;->c:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 10
    iput v1, p0, Lcn/mucang/android/core/webview/b;->b:I

    :cond_2
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/b;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/webview/b;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method
