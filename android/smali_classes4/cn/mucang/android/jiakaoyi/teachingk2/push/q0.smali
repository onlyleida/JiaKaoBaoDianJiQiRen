.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/push/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushNetworkListener;",
        "Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;",
        "()V",
        "onConnectFail",
        "",
        "p0",
        "Lcom/alivc/live/pusher/AlivcLivePusher;",
        "onConnectionLost",
        "onNetworkPoor",
        "onNetworkRecovery",
        "onPacketsLost",
        "onReconnectFail",
        "onReconnectStart",
        "onReconnectSucceed",
        "onSendDataTimeout",
        "onSendMessage",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u963f\u91cc\u4e91\u8fde\u63a5\u5931\u8d25"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionLost(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u8fde\u63a5\u65ad\u5f00"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u963f\u91cc\u4e91\u8fde\u63a5\u65ad\u5f00"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onNetworkPoor(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u7f51\u901f\u6162"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNetworkRecovery(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u7f51\u7edc\u72b6\u51b5\u6062\u590d\u826f\u597d"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPacketsLost(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    return-void
.end method

.method public onReconnectFail(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u91cd\u8fde\u5931\u8d25"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u963f\u91cc\u4e91\u91cd\u8fde\u5931\u8d25"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onReconnectStart(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u91cd\u8fde\u5f00\u59cb"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u963f\u91cc\u4e91\u91cd\u8fde\u5f00\u59cb"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onReconnectSucceed(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u91cd\u8fde\u6210\u529f"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u963f\u91cc\u4e91\u91cd\u8fde\u6210\u529f"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onSendDataTimeout(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 1

    const-string p1, "PusherManager"

    const-string v0, "\u6570\u636e\u53d1\u9001\u8d85\u65f6"

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSendMessage(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    return-void
.end method
