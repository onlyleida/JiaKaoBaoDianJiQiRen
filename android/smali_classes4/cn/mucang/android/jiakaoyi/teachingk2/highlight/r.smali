.class public final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightH5Dialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "entity",
        "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V",
        "getEntity",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__full_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->e(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->d(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "getCurrentActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->a()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->u(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->destroy()V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x443d8000    # 758.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x1000000

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&from=jiakaoyi_coach"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->closeTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/g;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogHighlightH5Binding;->shareTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/r;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
