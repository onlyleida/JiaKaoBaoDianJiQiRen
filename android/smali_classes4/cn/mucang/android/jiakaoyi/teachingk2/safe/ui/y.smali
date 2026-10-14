.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/P0ErrorDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "error",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V",
        "desc",
        "",
        "kotlin.jvm.PlatformType",
        "getError",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "setError",
        "(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "updateError",
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
.field private a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

.field private final b:Ljava/lang/String;

.field private c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

.field private final d:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_back_n_gear_hint:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/o;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->d:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->e(Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->callTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;->a()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_call_monitoring_center:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_hang_up:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_calling:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final e(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->C()V

    return-void
.end method

.method private static final f(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "getCurrentActivity()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->h(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->d:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-eq v0, p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getZhTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P0ErrorDialog: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->settingIv:Landroid/widget/ImageView;

    const-string v1, "viewBinding.settingIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_50012:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_50013:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    .line 5
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    goto :goto_3

    .line 8
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    move-result-object p1

    const-string v1, "inflate(layoutInflater)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_1060:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x2

    .line 9
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getZhTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "P0ErrorDialog: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->titleTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->descTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->settingIv:Landroid/widget/ImageView;

    const-string v4, "viewBinding.settingIv"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_50012:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_50013:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/16 p1, 0x8

    .line 14
    :goto_3
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0xff0c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->callTv:Landroid/widget/TextView;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/q;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogP0ErrorBinding;->settingIv:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/p;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->d:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 19
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
