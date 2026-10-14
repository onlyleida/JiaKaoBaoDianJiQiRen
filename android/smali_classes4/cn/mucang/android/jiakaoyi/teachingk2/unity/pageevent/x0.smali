.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

.field private b:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->b:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->d:J

    return-void
.end method

.method static synthetic a()Lkotlin/v;
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetMode:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b()Lkotlin/v;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_recognition_mode_timeout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/signal/ai/f;)Lkotlin/v;
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_recognition_mode_success:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_recognition_mode_fail:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e()Lkotlin/v;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetMode:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f()Lkotlin/v;
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_recognition_mode_timeout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/signal/ai/f;)Lkotlin/v;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    .line 2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_recognition_mode_success:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_recognition_mode_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic i(Landroid/view/View;)V
    .locals 0

    const p0, 0x11173

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->b(I)V

    return-void
.end method

.method private synthetic j(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    return-void
.end method

.method private l(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ai_channel_unavailable:I

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ai_state:I

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_quit:I

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/n0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/n0;

    .line 8
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->b(Landroid/view/View$OnClickListener;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/p0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/p0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic d(Lcn/mucang/android/jiakaoyi/signal/ai/f;)Lkotlin/v;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c(Lcn/mucang/android/jiakaoyi/signal/ai/f;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->l(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/ai/f;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/l0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/l0;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/q0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/q0;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/o0;

    invoke-direct {v9, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/o0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    :goto_0
    return-void
.end method

.method public synthetic k(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->j(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->b:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/ai/f;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k0;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/m0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/m0;

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/j0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/j0;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->d:J

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v0

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v0, v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->l(Lcn/mucang/android/jiakaoyi/signal/com/ComState;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e()Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    move-result-object v0

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    if-ne v0, v1, :cond_4

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Throttle:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 12
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v1, :cond_3

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Brake:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 14
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p1, :cond_4

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Clutch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 16
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->b:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    if-eq p1, v0, :cond_5

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->getType()I

    move-result v1

    iput v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;->type:I

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->getModule()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;->module:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->getVoice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;->voice:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PartIdentityModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 21
    :cond_5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/x0;->b:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    return-void
.end method
