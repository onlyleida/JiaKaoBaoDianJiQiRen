.class public final Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;
.super Lcn/mucang/jiakaoyi/uilib/rtmc/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rtmc/self/SelfGpsStation;",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;",
        "(Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;)V",
        "isValid",
        "",
        "init",
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
.field private b:Z


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rtmc/d;-><init>(Lcn/mucang/jiakaoyi/uilib/rtmc/f;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;->b:Z

    const-string v1, "init\u81ea\u5efa\u57fa\u7ad9"

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;->b:Z

    return v0
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;)I
    .locals 1

    const-string v0, "gga"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;->b:Z

    const-string v0, "start\u81ea\u5efa\u57fa\u7ad9"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->F(Lcn/mucang/jiakaoyi/uilib/socket/o;)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/rtmc/j/a;->b:Z

    const-string v0, "stop\u81ea\u5efa\u57fa\u7ad9"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->a:Lcn/mucang/jiakaoyi/uilib/rtmc/h;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->S(Lcn/mucang/jiakaoyi/uilib/socket/o;)V

    return-void
.end method
