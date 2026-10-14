.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002BI\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0014\u001a\u00020\u000bH\u0016J\u0012\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0015J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u000bH\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistEndDialog;",
        "Landroid/app/Dialog;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "desc",
        "reason",
        "onShow",
        "Lkotlin/Function0;",
        "",
        "onDismiss",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "brakeTime",
        "",
        "descTipTtsPlayEnd",
        "",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;",
        "dismiss",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "show",
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

.field private final d:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->d:Lkotlin/jvm/b/a;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->e:Lkotlin/jvm/b/a;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->h:Z

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->g(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->e:Lkotlin/jvm/b/a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private static final k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m$b;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
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

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_1060:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->titleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0xff08

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0xff09

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xff0c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 16
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->engineIv:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->gearIv:Landroid/widget/ImageView;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->brakeIv:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->engineIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->gearIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->f:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAssistEndBinding;->brakeIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 8
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    const-string v3, "tip"

    const/16 v7, 0xfa0

    if-nez v1, :cond_7

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_start_engine:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/d;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    .line 11
    :cond_7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v4, :cond_8

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v4, :cond_8

    .line 12
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_gearN:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/b;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    .line 14
    :cond_8
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v0, :cond_9

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachingk2_please_pull_handbrake:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/e;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v7, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void

    .line 17
    :cond_9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    :goto_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v2, p1, :cond_b

    .line 18
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_auto_subsidiary_end:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    const-string p1, ""

    invoke-virtual {v0, p1, v7, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 20
    :cond_b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    .line 21
    array-length v0, p1

    :goto_4
    if-ge v5, v0, :cond_d

    aget-object v1, p1, v5

    .line 22
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->isByApp()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 24
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->g:J

    sub-long v3, v1, v3

    const-wide/16 v7, 0xbb8

    cmp-long v9, v3, v7

    if-lez v9, :cond_c

    .line 25
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->g:J

    .line 26
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->f(B)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    return-void

    .line 27
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->d:Lkotlin/jvm/b/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
