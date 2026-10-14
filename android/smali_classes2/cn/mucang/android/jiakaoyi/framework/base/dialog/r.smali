.class public final Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/ExamResultVoiceDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "closeDialog",
        "Landroid/view/View$OnClickListener;",
        "playingTxt",
        "",
        "score",
        "",
        "isPass",
        "",
        "(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "setDesc",
        "message",
        "framework_release"
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
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->a:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->b:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->c:I

    .line 5
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->d:Z

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->closeTV:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/f;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->examScore:Landroid/widget/TextView;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->examScore:Landroid/widget/TextView;

    const-string v3, "#02C8B7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->examScore:Landroid/widget/TextView;

    const-string v3, "#FF4D4D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->descTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->traceTV:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->closeTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/framework/R$drawable;->shape_008aff_r100:I

    invoke-static {v3, v4}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->closeTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/framework/R$color;->dialog_button_main_color:I

    invoke-static {v3, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->traceTV:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/g;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->a:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "http://robot.nav.mucang.cn/lookTrace"

    .line 1
    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->e:Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/databinding/ExamResultVoiceDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
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

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 8
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->c()V

    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
