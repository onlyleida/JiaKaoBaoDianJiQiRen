.class final Lcn/mucang/android/account/activity/LoginActivity$b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/LoginActivity;",
        "Lcn/mucang/android/account/api/data/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B3\u0008\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/LoginActivity$LoginApiContext;",
        "Lcn/mucang/android/account/api/context/AccountBaseApiContext;",
        "Lcn/mucang/android/account/activity/LoginActivity;",
        "Lcn/mucang/android/account/api/data/UserInfoResponseWrapper;",
        "loginActivity",
        "phoneNumber",
        "",
        "password",
        "from",
        "captchaValidate",
        "(Lcn/mucang/android/account/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "api",
        "Lcn/mucang/android/account/api/LoginApi;",
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

.field private final f:Ljava/lang/String;

.field private final g:Lcn/mucang/android/account/g/j;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captchaValidate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u767b\u5f55"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->e:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->f:Ljava/lang/String;

    .line 6
    new-instance p1, Lcn/mucang/android/account/g/j;

    invoke-direct {p1}, Lcn/mucang/android/account/g/j;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->g:Lcn/mucang/android/account/g/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/LoginActivity$b;->g(Lcn/mucang/android/account/api/data/b;)V

    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/b;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/LoginActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p1, Lcn/mucang/android/account/api/data/b;->a:Lcn/mucang/android/account/api/data/UserInfoResponse;

    :goto_0
    invoke-static {v0}, Lcn/mucang/android/account/activity/LoginActivity;->l(Lcn/mucang/android/account/activity/LoginActivity;)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/account/f;->e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/account/activity/LoginActivity;->m(Lcn/mucang/android/account/activity/LoginActivity;Z)V

    const-string v1, "\u624b\u673a\u53f7\u5bc6\u7801\u767b\u5f55\u9875-\u767b\u5f55\u6210\u529f"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcn/mucang/android/account/activity/LoginActivity;->l(Lcn/mucang/android/account/activity/LoginActivity;)Lcn/mucang/android/account/data/LoginModel;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/mucang/android/account/f;->d(Landroid/content/Context;Lcn/mucang/android/account/data/AccountBaseModel;Lcn/mucang/android/account/api/data/b;)V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->g:Lcn/mucang/android/account/g/j;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->e:Ljava/lang/String;

    .line 3
    iget-object v4, p0, Lcn/mucang/android/account/activity/LoginActivity$b;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/account/g/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/UserInfoResponse;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/account/f;->a(Lcn/mucang/android/account/api/data/UserInfoResponse;)Lcn/mucang/android/account/api/data/b;

    move-result-object v0

    const-string v1, "checkNeedThirdBind(userInfoResponse)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/LoginActivity$b;->h()Lcn/mucang/android/account/api/data/b;

    move-result-object v0

    return-object v0
.end method
