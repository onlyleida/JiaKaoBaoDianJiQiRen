.class public final Lcn/mucang/android/account/j/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/utils/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/j/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/account/one_key_login/QuickLoginMultiProcessSupport$init$1",
        "Lcn/mucang/android/core/utils/RpcAction;",
        "onRpcCall",
        "",
        "params",
        "Landroid/os/Bundle;",
        "callback",
        "Lcn/mucang/android/core/utils/RpcActionCallback;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/j/k$a;->e(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/account/j/k$a;->d(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    const-string p1, "$callback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p2, "EMPTY"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/core/utils/f0;Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 0

    const-string p1, "$callback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p2, "EMPTY"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;)Z
    .locals 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "__quick_login_multi_key_login_model__"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Lcn/mucang/android/account/data/LoginSmsModel;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/account/data/LoginSmsModel;

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_2
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    .line 4
    new-instance v2, Lcn/mucang/android/account/j/e;

    invoke-direct {v2, p2}, Lcn/mucang/android/account/j/e;-><init>(Lcn/mucang/android/core/utils/f0;)V

    new-instance v3, Lcn/mucang/android/account/j/d;

    invoke-direct {v3, p2}, Lcn/mucang/android/account/j/d;-><init>(Lcn/mucang/android/core/utils/f0;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcn/mucang/android/account/AccountManager;->I(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;Lcn/mucang/android/account/j/j;Lcn/mucang/android/account/j/l;)V

    const/4 p1, 0x1

    return p1
.end method
