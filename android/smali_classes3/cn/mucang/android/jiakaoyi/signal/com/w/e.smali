.class public final Lcn/mucang/android/jiakaoyi/signal/com/w/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/com/monitor/ComMonitorState;",
        "",
        "state",
        "Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
        "msg",
        "",
        "comName",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
        "(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V",
        "getComName",
        "()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
        "getMsg",
        "()Ljava/lang/String;",
        "getState",
        "()Lcn/mucang/android/jiakaoyi/signal/com/ComState;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

.field private final b:Ljava/lang/String;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/signal/com/ComState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/w/e;->a:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    return-object v0
.end method
