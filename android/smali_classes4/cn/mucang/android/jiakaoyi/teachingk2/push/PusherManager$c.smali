.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$c;
.super Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$2",
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushNetworkListener;",
        "onConnectFail",
        "",
        "p0",
        "Lcom/alivc/live/pusher/AlivcLivePusher;",
        "onConnectionLost",
        "onPushURLAuthenticationOverdue",
        "",
        "onReconnectFail",
        "onReconnectSucceed",
        "onSendDataTimeout",
        "teachbase_release"
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/o0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/o0;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/o0;->n()Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onConnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;->onConnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    const-string v0, "isPushStart = false,onConnectFail"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    return-void
.end method

.method public onConnectionLost(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;->onConnectionLost(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    const-string p1, "isPushStart = false,onConnectionLost"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onPushURLAuthenticationOverdue(Lcom/alivc/live/pusher/AlivcLivePusher;)Ljava/lang/String;
    .locals 2

    const-string p1, "\u9274\u6743\u5feb\u8fc7\u671f\u4e86\uff0c\u51c6\u5907\u66ff\u6362\u63a8\u6d41url"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/a0;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPushUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    return-object v1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/AliPushUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p1

    :goto_2
    return-object v1
.end method

.method public onReconnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;->onReconnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    const-string v0, "isPushStart = false,onReconnectFail"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->n(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    return-void
.end method

.method public onReconnectSucceed(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;->onReconnectSucceed(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->e()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    const-string p1, "isPushStart = false,onReconnectSucceed"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onSendDataTimeout(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;->onSendDataTimeout(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    const-string p1, "isPushStart = false,onSendDataTimeout"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
