.class public final Lcn/mucang/android/account/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J0\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport;",
        "",
        "()V",
        "KEY_LOGIN_MODEL",
        "",
        "RPC_QUICK_LOGIN",
        "TAG",
        "init",
        "",
        "quickLogin",
        "context",
        "Landroid/content/Context;",
        "loginSmsModel",
        "Lcn/mucang/android/account/data/LoginSmsModel;",
        "quickLoginFailAction",
        "Lcn/mucang/android/account/one_key_login/QuickLoginFailedAction;",
        "quickLoginSuccessAction",
        "Lcn/mucang/android/account/one_key_login/QuickLoginSuccessAction;",
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


# static fields
.field public static final a:Lcn/mucang/android/account/j/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/account/j/k;

    invoke-direct {v0}, Lcn/mucang/android/account/j/k;-><init>()V

    sput-object v0, Lcn/mucang/android/account/j/k;->a:Lcn/mucang/android/account/j/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/account/j/k$a;

    invoke-direct {v0}, Lcn/mucang/android/account/j/k$a;-><init>()V

    const-string v1, "cn.mucang.android.account.rpc_quick_login"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/h0;->i(Ljava/lang/String;Lcn/mucang/android/core/utils/e0;)V

    const-string v0, "QuickLoginMultiProcessSupport"

    const-string v1, "quick login init success"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final b(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V
    .locals 8

    const-string v0, "quickLoginFailAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "__quick_login_multi_key_login_model__"

    .line 2
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    :goto_0
    new-instance v3, Lcn/mucang/android/account/j/k$b;

    invoke-direct {v3, p2, p0, p1, p3}, Lcn/mucang/android/account/j/k$b;-><init>(Lcn/mucang/android/account/j/j;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/l;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v1, "cn.mucang.android.account.rpc_quick_login"

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/core/utils/h0;->d(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JILjava/lang/Object;)V

    return-void
.end method
