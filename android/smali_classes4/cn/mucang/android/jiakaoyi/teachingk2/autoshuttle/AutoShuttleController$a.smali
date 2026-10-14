.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->I(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController$startAutoShuttle$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/IAutoDriveCallBack;",
        "onDriving",
        "",
        "onEnd",
        "onError",
        "msg",
        "",
        "onPause",
        "onRecover",
        "onStart",
        "state",
        "",
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
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    const-string v1, "AutoDrive onRecover: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->b()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->y(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    const-string v1, "AutoDrive onEnd"

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_order_shuttle_end:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_order_shuttle_end)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->B(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/socket/u;->g(JJBB)Z

    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoDrive onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->d()J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->f(JB)Z

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->c()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    move-result-object p1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->e(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->d()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->f(JB)Z

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->c()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->f()V

    .line 6
    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->f(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    const-string v1, "AutoDrive onPause: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->g(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    const-string v1, "AutoDrive onDriving"

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->z(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;

    const-string v1, "AutoDrive onError: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->e(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->B(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->c()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->f()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleController;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/u;->d(J)Z

    return-void
.end method
