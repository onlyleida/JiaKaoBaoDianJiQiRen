.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/AlivcLivePushErrorListener;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$setPushListeners$1",
        "Lcom/alivc/live/pusher/AlivcLivePushErrorListener;",
        "onSDKError",
        "",
        "p0",
        "Lcom/alivc/live/pusher/AlivcLivePusher;",
        "p1",
        "Lcom/alivc/live/pusher/AlivcLivePushError;",
        "onSystemError",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSDKError(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)V
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushError;->getMsg()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "isPushStart = false,onSDKError:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public onSystemError(Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushError;)V
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->q(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Ljava/lang/Boolean;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/alivc/live/pusher/AlivcLivePushError;->getMsg()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "isPushStart = false,onSystemError:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
