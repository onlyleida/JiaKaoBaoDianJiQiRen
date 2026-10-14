.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2;->invoke()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;->l()I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x2

    .line 4
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report: shuttleId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", distance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->b(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;->a(Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;)J

    move-result-wide v5

    int-to-long v7, v1

    invoke-static/range {v5 .. v10}, Lcn/mucang/jiakaoyi/uilib/socket/u;->g(JJBB)Z

    const-wide/16 v1, 0x3e8

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method
