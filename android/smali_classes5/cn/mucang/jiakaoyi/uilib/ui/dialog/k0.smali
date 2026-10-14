.class public final Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0015R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/GyroUnstableDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "ok",
        "Lkotlin/Function0;",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;",
        "widthDp",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "uilib_release"
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
.field private final a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;

.field private final c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->a:Lkotlin/jvm/b/a;

    const/high16 p1, 0x43fa0000    # 500.0f

    .line 3
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->c:F

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->b(Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;Landroid/view/View;)V

    return-void
.end method

.method private static final b(Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->a:Lkotlin/jvm/b/a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n",
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;->getRoot()Landroid/widget/LinearLayout;

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
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->c:F

    invoke-static {p1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result p1

    int-to-float v2, p1

    .line 8
    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->c:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/o0;->q(Landroid/view/WindowManager;)I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v2, v2, v4

    double-to-int p1, v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, -0x2

    invoke-virtual {v2, p1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogGyroUnstableBinding;->agree:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/f;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/f;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/k0;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
