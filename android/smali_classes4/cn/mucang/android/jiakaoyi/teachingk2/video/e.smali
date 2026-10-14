.class public final Lcn/mucang/android/jiakaoyi/teachingk2/video/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0015R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "desc",
        "videoUrl",
        "closeText",
        "enableClose",
        "",
        "playEndDismiss",
        "enableSeek",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;",
        "dismiss",
        "",
        "initView",
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
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__full_dialog_video:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->d:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->e:Z

    .line 8
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->f:Z

    .line 9
    iput-boolean p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/o;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v7, p4

    .line 1
    invoke-direct/range {v3 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->f:Z

    return p0
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "viewBinding"

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->titleTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 4
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->tvDesc:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->e:Z

    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->closeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->closeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->closeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->d(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->commonVideo:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->getPlayer()Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->n()V

    .line 2
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    const-string v0, "viewBinding"

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->closeTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/video/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->b()V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->commonVideo:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->getPlayer()Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/video/e$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/e$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/e;)V

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->f(Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;)V

    .line 13
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->commonVideo:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->g:Z

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->h:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;->commonVideo:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->getPlayer()Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->m(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
