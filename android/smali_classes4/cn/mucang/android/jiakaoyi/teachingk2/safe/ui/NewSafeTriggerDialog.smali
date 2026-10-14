.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0017R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;",
        "Landroid/app/Dialog;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "context",
        "Landroid/content/Context;",
        "brakeModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "getBrakeModel",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "brakeTime",
        "",
        "hasPlayDesc",
        "",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;",
        "missDialog",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;",
        "tipPlayTime",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "ConditionBinder",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

.field private c:Z

.field private d:J

.field private e:J

.field private f:Landroid/app/Dialog;

.field private final g:Lcom/drakeet/multitype/f;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brakeModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    .line 2
    new-instance p1, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;)V

    .line 3
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 4
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->g:Lcom/drakeet/multitype/f;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h:Ljava/util/List;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/i;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->i:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->c:Z

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->l(Landroid/view/View;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->callTv:Landroid/widget/TextView;

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

.method private static final i(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "getCurrentActivity()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->f(Landroid/app/Activity;)V

    return-void
.end method

.method private static final j(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->C()V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Landroid/view/View;)V
    .locals 12

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const-string v1, "context"

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraDesc()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/x;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->f:Landroid/app/Dialog;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 7
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_confirm_false_brake:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_confirm_false_brake_upload:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getString(R.string.teach\u2026nfirm_false_brake_upload)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 10
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_sure:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/m;

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v1

    .line 11
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 12
    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->f:Landroid/app/Dialog;

    if-nez p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method private static final l(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->l(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-string v0, "\u5239\u8f66\u5f39\u7a97\u6d88\u5931:"

    .line 3
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->f:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 5
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    move-result-object v2

    const-string v3, "inflate(layoutInflater)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    const-string v3, "viewBinding"

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_1060:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, -0x2

    .line 9
    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 10
    :goto_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 12
    :cond_1
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_1
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getDesc()Ljava/lang/String;

    move-result-object v7

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_vehicle:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "getString(R.string.teachbase_vehicle)"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_vehicle2:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "getString(R.string.teachbase_vehicle2)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraDesc()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v10

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->src:Ljava/lang/String;

    aput-object v10, v9, v2

    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/l;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 14
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v7

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhDesc()Ljava/lang/String;

    move-result-object v14

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getExtraDesc()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v7

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->zhSrc:Ljava/lang/String;

    const-string v8, "\u8f66\u8f86"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "\u8f66\u8f86"

    invoke-static/range {v14 .. v19}, Lkotlin/text/l;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 15
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v8, :cond_13

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->descTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_11

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->settingIv:Landroid/widget/ImageView;

    const-string v8, "viewBinding.settingIv"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v8

    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteFlame:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/16 v8, 0x8

    if-eqz v13, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    const/16 v9, 0x8

    .line 18
    :goto_3
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->settingIv:Landroid/widget/ImageView;

    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/j;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h:Ljava/util/List;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createUnBrakeChecker()Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->g:Lcom/drakeet/multitype/f;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h:Ljava/util/List;

    invoke-virtual {v5, v9}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 22
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 23
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 24
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$b;

    invoke-direct {v9, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;)V

    invoke-static {v6, v5, v9}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5239\u8f66\u8bed\u97f3:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 27
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->isNeedCall()Z

    move-result v5

    const-string v6, "viewBinding.reportTv"

    if-eqz v5, :cond_7

    .line 28
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->reportTv:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->callTv:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->callTv:Landroid/widget/TextView;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/k;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 33
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v3

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 37
    :cond_7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->callTv:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->reportTv:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->ShowMissBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfigManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    const/16 v2, 0x8

    .line 39
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogSafeTriggerNewBinding;->reportTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/l;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :goto_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getShowConfirmDialog()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$onCreate$5;

    invoke-direct {v8, v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog$onCreate$5;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;Lkotlin/coroutines/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_6

    .line 43
    :cond_9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :goto_6
    return-void

    .line 44
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v4
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;

    .line 4
    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->g:Lcom/drakeet/multitype/f;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    move v2, v4

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->e()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->g()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->c:Z

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->e:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->e:J

    .line 11
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->d()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteFlame:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->RemoteLock:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v2, :cond_8

    .line 13
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->e:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->e:J

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_request_coach_release_brake:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 16
    :cond_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    .line 17
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_a

    aget-object v2, p1, v1

    .line 18
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->isByApp()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 20
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->d:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v2, v6, v8

    if-lez v2, :cond_9

    .line 21
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;->d:J

    .line 22
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->f(B)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method
