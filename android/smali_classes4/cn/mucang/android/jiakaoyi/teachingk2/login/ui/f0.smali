.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u000fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0008\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog$DialogParams;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/FaceFailDialog$DialogParams;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "show",
        "DialogParams",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V

    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;->btnLeft:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;->btnRight:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;->a()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;->b()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/FaceFailDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

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

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x447f0000    # 1020.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, -0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->c()V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
