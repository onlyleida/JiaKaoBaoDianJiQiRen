.class public final Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;-><init>()V
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
        "cn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$receiver$1",
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


# instance fields
.field final synthetic a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;->a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.mucang.android.account.ACTION_LOGINED"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;->a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;->k(Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;Z)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;->a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;->a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK"

    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "third_login_platform"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p2, Lcn/mucang/android/account/third/v;->a:Lcn/mucang/android/account/third/v;

    invoke-virtual {p2, p1}, Lcn/mucang/android/account/third/v;->a(Ljava/lang/String;)Lcn/mucang/android/account/third/u;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity$b;->a:Lcn/mucang/android/account/activity/LoginMultiDefaultSmsActivity;

    invoke-interface {p1}, Lcn/mucang/android/account/third/u;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/mucang/android/account/activity/l1;->j(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
