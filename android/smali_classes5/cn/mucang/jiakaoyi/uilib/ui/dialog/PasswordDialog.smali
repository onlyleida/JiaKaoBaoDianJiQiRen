.class public final Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;,
        Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "passwordType",
        "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;",
        "(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;)V",
        "onCorrect",
        "Lkotlin/Function0;",
        "",
        "getOnCorrect",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCorrect",
        "(Lkotlin/jvm/functions/Function0;)V",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "verify",
        "it",
        "Landroid/view/View;",
        "password",
        "",
        "PasswordType",
        "uilib_release"
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
.field private final a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

.field private c:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;

    return-void
.end method

.method public static synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->g(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->m(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->h(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->l(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->k(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method private static final g(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final h(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->passwordEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "\u5f53\u524d\u8bbe\u5907\u672a\u8054\u7f51"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "it"

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->j(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final j(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "it.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;

    invoke-direct {p1, p0, p2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 3

    const-string v0, "\u5bc6\u7801\u9a8c\u8bc1\u5931\u8d25"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$password"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$loading"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string v1, "TEST_ACCOUNT_PWD"

    const-string v2, ""

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;-><init>()V

    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;->n(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;-><init>()V

    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/d;->m(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    .line 7
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;

    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 10
    :try_start_1
    instance-of p1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_2
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;

    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    :goto_3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/h;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->a()Lkotlin/jvm/b/a;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "$loading"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->c:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public final i(Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->c:Lkotlin/jvm/b/a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dialog_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$PasswordType;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const-string v2, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    const-string v2, "\u8bf7\u8f93\u5165\u8c03\u8bd5\u8d26\u53f7\u5bc6\u7801"

    goto :goto_1

    :cond_3
    const-string v2, "\u8bf7\u8f93\u5165\u670d\u52a1\u5546\u7ba1\u7406\u5458\u5bc6\u7801"

    goto :goto_1

    :cond_4
    const-string v2, "\u8bf7\u8f93\u5165\u7ba1\u7406\u5458\u52a8\u6001\u5bc6\u7801"

    .line 11
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->leftTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogPasswordBinding;->rightTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
