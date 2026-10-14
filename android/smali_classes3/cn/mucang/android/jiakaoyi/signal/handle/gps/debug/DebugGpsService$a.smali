.class final Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$ServiceHandler;",
        "Landroid/os/Handler;",
        "looper",
        "Landroid/os/Looper;",
        "(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Landroid/os/Looper;)V",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "signal_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService$a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGpsService;)V

    return-void
.end method
