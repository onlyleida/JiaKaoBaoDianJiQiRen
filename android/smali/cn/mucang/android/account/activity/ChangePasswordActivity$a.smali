.class final Lcn/mucang/android/account/activity/ChangePasswordActivity$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/account/activity/ChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ChangePasswordActivity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u001f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/account/activity/ChangePasswordActivity$ChangePasswordApiContext;",
        "Lcn/mucang/android/account/api/context/AccountBaseApiContext;",
        "Lcn/mucang/android/account/activity/ChangePasswordActivity;",
        "",
        "changePasswordActivity",
        "oldPassword",
        "",
        "newPassword",
        "(Lcn/mucang/android/account/activity/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V",
        "api",
        "Lcn/mucang/android/account/api/ChangePasswordApi;",
        "onApiSuccess",
        "",
        "response",
        "(Ljava/lang/Boolean;)V",
        "request",
        "()Ljava/lang/Boolean;",
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

.field private final e:Lcn/mucang/android/account/g/f;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "oldPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u4fee\u6539\u5bc6\u7801"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->d:Ljava/lang/String;

    .line 4
    new-instance p1, Lcn/mucang/android/account/g/f;

    invoke-direct {p1}, Lcn/mucang/android/account/g/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->e:Lcn/mucang/android/account/g/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->g(Ljava/lang/Boolean;)V

    return-void
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/activity/ChangePasswordActivity;

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->e:Lcn/mucang/android/account/g/f;

    iget-object v1, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/f;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/ChangePasswordActivity$a;->h()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
