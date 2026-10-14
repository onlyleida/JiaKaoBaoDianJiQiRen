.class public abstract Lcn/mucang/jiakaoyi/uilib/rtmc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u000fH&R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;",
        "",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;)V",
        "getListener",
        "()Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "init",
        "",
        "isValid",
        "sendGGa",
        "",
        "gga",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GGAModel;",
        "start",
        "",
        "stop",
        "uilib_release"
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
.field private final a:Lcn/mucang/jiakaoyi/uilib/rtmc/f;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/jiakaoyi/uilib/rtmc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/d;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/f;

    return-object v0
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)I
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method
