.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;",
        "viewBinding$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showMediaTip",
        "url",
        "",
        "tip",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "TeachingK2_release"
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$style;->ThemeVideoDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog$viewBinding$2;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog$viewBinding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->a:Lkotlin/f;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method private final b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    return-object v0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/d;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->tvTips:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->image:Landroid/widget/ImageView;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->shape_default_round_pic:I

    invoke-static {p2, p1, v0}, Lf/a/a/b/a/a;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b:Lkotlinx/coroutines/t1;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :goto_0
    invoke-static {p3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog$showMediaTip$1;

    invoke-direct {v4, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog$showMediaTip$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b:Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

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

    .line 7
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/DialogPracticeTipsBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/b2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/b2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/TeachPictureDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
