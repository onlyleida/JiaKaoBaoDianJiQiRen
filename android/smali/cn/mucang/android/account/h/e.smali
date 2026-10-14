.class public Lcn/mucang/android/account/h/e;
.super Lcn/mucang/android/account/h/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/h/e$b;,
        Lcn/mucang/android/account/h/e$c;
    }
.end annotation


# instance fields
.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcn/mucang/android/account/h/e$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/h/d;-><init>()V

    return-void
.end method

.method static synthetic C(Lcn/mucang/android/account/h/e;)Lcn/mucang/android/account/h/e$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/h/e;->l:Lcn/mucang/android/account/h/e$b;

    return-object p0
.end method

.method public static D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;ZLcn/mucang/android/account/h/e$b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "\u975e\u6cd5\u7684\u9a8c\u8bc1\u7801\u5f39\u6846\u8bf7\u6c42"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/account/h/e;

    invoke-direct {v0}, Lcn/mucang/android/account/h/e;-><init>()V

    .line 3
    iput-object p1, v0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 4
    iput-boolean p3, v0, Lcn/mucang/android/account/h/e;->j:Z

    .line 5
    iput-object p2, v0, Lcn/mucang/android/account/h/e;->k:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lcn/mucang/android/account/h/e;->l:Lcn/mucang/android/account/h/e$b;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/h/d;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/h/e;->j:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$style;->Account__Dialog_Transparent:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/account/h/e;->x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcn/mucang/android/account/h/d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/account/h/e$c;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    iget-object v4, p0, Lcn/mucang/android/account/h/e;->k:Ljava/lang/String;

    iget-boolean v6, p0, Lcn/mucang/android/account/h/e;->j:Z

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/account/h/e$c;-><init>(Lcn/mucang/android/account/h/e;Landroid/app/Activity;Lcn/mucang/android/account/api/data/CaptchaResponse;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/account/h/e$a;)V

    return-object v8
.end method
