.class public final Lcn/mucang/android/account/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/d;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/account/AccountManagerMultiProcessSupport$localBroadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "__user__"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of v0, p2, Lcn/mucang/android/account/data/AuthUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcn/mucang/android/account/data/AuthUser;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    const-string v0, "cn.mucang.android.account.ACTION_LOGINED"

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p1, Lcn/mucang/android/account/d;->a:Lcn/mucang/android/account/d;

    sget-object v0, Lcn/mucang/android/account/AccountManager$ActionType;->LOGIN_SUCCEED:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/account/d;->a(Lcn/mucang/android/account/d;Lcn/mucang/android/account/AccountManager$ActionType;Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_1

    :cond_2
    const-string v0, "cn.mucang.android.account.ACTION_LOGOUT"

    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/android/account/AccountManager;->B(Lcn/mucang/android/account/data/AuthUser;)V

    .line 8
    sget-object p1, Lcn/mucang/android/account/d;->a:Lcn/mucang/android/account/d;

    sget-object v0, Lcn/mucang/android/account/AccountManager$ActionType;->LOGOUT:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/account/d;->a(Lcn/mucang/android/account/d;Lcn/mucang/android/account/AccountManager$ActionType;Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_1

    :cond_3
    const-string v0, "cn.mucang.android.account.ACTION_VERIFIED"

    .line 9
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p1, Lcn/mucang/android/account/d;->a:Lcn/mucang/android/account/d;

    sget-object v0, Lcn/mucang/android/account/AccountManager$ActionType;->ACCOUNT_VERIFIED:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/account/d;->a(Lcn/mucang/android/account/d;Lcn/mucang/android/account/AccountManager$ActionType;Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_1

    :cond_4
    const-string v0, "cn.mucang.android.account.ACTION_PROFILE_UPDATE"

    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    sget-object p1, Lcn/mucang/android/account/d;->a:Lcn/mucang/android/account/d;

    sget-object v0, Lcn/mucang/android/account/AccountManager$ActionType;->UPDATE_USER:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/account/d;->a(Lcn/mucang/android/account/d;Lcn/mucang/android/account/AccountManager$ActionType;Lcn/mucang/android/account/data/AuthUser;)V

    goto :goto_1

    :cond_5
    const-string v0, "cn.mucang.android.account.ACTION_LOGIN_CANCELED"

    .line 13
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    sget-object p1, Lcn/mucang/android/account/d;->a:Lcn/mucang/android/account/d;

    sget-object v0, Lcn/mucang/android/account/AccountManager$ActionType;->LOGIN_FAILED:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {p1, v0, p2}, Lcn/mucang/android/account/d;->a(Lcn/mucang/android/account/d;Lcn/mucang/android/account/AccountManager$ActionType;Lcn/mucang/android/account/data/AuthUser;)V

    :cond_6
    :goto_1
    return-void
.end method
