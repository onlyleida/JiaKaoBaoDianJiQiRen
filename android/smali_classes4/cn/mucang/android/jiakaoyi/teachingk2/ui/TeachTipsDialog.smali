.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u000fH\u0014J \u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "openJob",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "changeUnity",
        "",
        "open",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStop",
        "showMediaTip",
        "mediaMedia",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;",
        "needCountDown",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
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
.field private final a:Lkotlin/f;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->ThemeVideoDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$viewBinding$2;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$viewBinding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->a:Lkotlin/f;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method private final b(Z)V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c:Lkotlinx/coroutines/t1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_0
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c:Lkotlinx/coroutines/t1;

    if-eqz p1, :cond_1

    const/high16 p1, -0x41000000    # -0.5f

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;->x:F

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$changeUnity$1;

    invoke-direct {v6, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$changeUnity$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UnityCameraViewModel;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c:Lkotlinx/coroutines/t1;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :goto_1
    return-void
.end method

.method private final c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    return-object v0
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->e(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;ZLandroidx/appcompat/app/d;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "mediaMedia"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->b(Z)V

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->tip:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->tvTips:Landroid/widget/TextView;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->tip:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->tvTips:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->image:Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->fileName:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_default_round_pic:I

    invoke-static {v1, v2, p1}, Lf/a/a/b/a/a;->h(Landroid/widget/ImageView;Ljava/io/File;I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->b:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_1
    const-string p1, "viewBinding.timeTv"

    if-eqz p2, :cond_3

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->timeTv:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-static {p3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$showMediaTip$1;

    invoke-direct {v5, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog$showMediaTip$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->b:Lkotlinx/coroutines/t1;

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->timeTv:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_2
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/f;

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/f;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/f;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    const/16 p1, 0xe06

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/m0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/m0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->b(Z)V

    return-void
.end method
