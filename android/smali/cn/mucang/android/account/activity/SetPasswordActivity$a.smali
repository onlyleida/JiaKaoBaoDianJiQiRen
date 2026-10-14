.class final Lcn/mucang/android/account/activity/SetPasswordActivity$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/SetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/SetPasswordActivity;",
        "Lcn/mucang/android/account/api/data/UserInfoResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B+\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/SetPasswordActivity$ForgotApiContext;",
        "Lcn/mucang/android/account/api/context/AccountBaseApiContext;",
        "Lcn/mucang/android/account/activity/SetPasswordActivity;",
        "Lcn/mucang/android/account/api/data/UserInfoResponse;",
        "setPasswordActivity",
        "password",
        "",
        "smsId",
        "smsToken",
        "(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
.method public constructor <init>(Lcn/mucang/android/account/activity/SetPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u8bbe\u7f6e\u5bc6\u7801"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->e:Ljava/lang/String;

    .line 5
    new-instance p1, Lcn/mucang/android/account/g/i;

    invoke-direct {p1}, Lcn/mucang/android/account/g/i;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->f:Lcn/mucang/android/account/g/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/UserInfoResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->g(Lcn/mucang/android/account/api/data/UserInfoResponse;)V

    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/UserInfoResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/SetPasswordActivity;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/mucang/android/account/f;->e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V

    const-string p1, "\u627e\u56de\u5bc6\u7801-\u767b\u5f55\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/UserInfoResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->f:Lcn/mucang/android/account/g/i;

    iget-object v1, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/account/g/i;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/UserInfoResponse;

    move-result-object v0

    const-string v1, "api.submit(password, smsId, smsToken)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/SetPasswordActivity$a;->h()Lcn/mucang/android/account/api/data/UserInfoResponse;

    move-result-object v0

    return-object v0
.end method
