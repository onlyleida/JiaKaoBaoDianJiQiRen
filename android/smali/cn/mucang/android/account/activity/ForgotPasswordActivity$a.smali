.class final Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/ForgotPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ForgotPasswordActivity;",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\'\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ForgotPasswordActivity$OkApiContext;",
        "Lcn/mucang/android/account/api/context/AccountBaseApiContext;",
        "Lcn/mucang/android/account/activity/ForgotPasswordActivity;",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        "forgotPasswordActivity",
        "username",
        "",
        "captchaId",
        "captcha",
        "(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "api",
        "Lcn/mucang/android/account/api/ForgotPasswordApi;",
        "onApiSuccess",
        "",
        "response",
        "request",
        "account_release"
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
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcn/mucang/android/account/g/i;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captchaId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captcha"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6821\u9a8c"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->e:Ljava/lang/String;

    .line 5
    new-instance p1, Lcn/mucang/android/account/g/i;

    invoke-direct {p1}, Lcn/mucang/android/account/g/i;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->f:Lcn/mucang/android/account/g/i;

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->j(Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity;->k(Lcn/mucang/android/account/activity/ForgotPasswordActivity;)Lcn/mucang/android/account/k/a;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/account/k/a;->u()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->h(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public h(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ForgotPasswordActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/account/activity/ValidationActivity$a;

    invoke-direct {v1, v0}, Lcn/mucang/android/account/activity/ValidationActivity$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/account/activity/ValidationActivity$a;->d(I)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->b(Lcn/mucang/android/account/api/data/CheckSmsResponse;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string p1, "\u9a8c\u8bc1\u624b\u673a"

    .line 5
    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->f(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->e(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    const-string p1, "\u9a8c\u8bc1\u624b\u673a\u540e\uff0c\u4f60\u53ef\u4ee5\u76f4\u63a5\u91cd\u7f6e\u5bc6\u7801"

    .line 7
    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->c(Ljava/lang/String;)Lcn/mucang/android/account/activity/ValidationActivity$a;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/account/activity/ValidationActivity$a;->a()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x4d2

    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public i()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->f:Lcn/mucang/android/account/g/i;

    iget-object v1, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/account/g/i;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    const-string v1, "{\n                api.ch\u2026d, captcha)\n            }"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x4e2b

    if-ne v1, v2, :cond_0

    .line 5
    new-instance v1, Lcn/mucang/android/account/activity/d0;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/d0;-><init>(Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    throw v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ForgotPasswordActivity$a;->i()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
