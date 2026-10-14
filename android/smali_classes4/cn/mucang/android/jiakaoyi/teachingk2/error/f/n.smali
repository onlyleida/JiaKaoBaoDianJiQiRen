.class public final Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;
.super Lcn/mucang/android/jiakaoyi/teachingk2/error/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/remind/RemindWheelLoss;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/error/BaseCheck;",
        "()V",
        "changedDeg",
        "",
        "count",
        "lastDeg",
        "Ljava/lang/Integer;",
        "maxDeg",
        "secondFrameTime",
        "",
        "isTriggered",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
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
.field private h:J

.field private i:I

.field private j:I

.field private k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v1, Lkotlin/Pair;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_remind_wheel_loss:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->WheelLoss:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "keyPlayGlobalRemind"

    const/16 v7, 0x14

    const/4 v8, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;-><init>(Lkotlin/Pair;ZZZZLjava/lang/String;ILkotlin/jvm/internal/o;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    return-void
.end method


# virtual methods
.method public h(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 7

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/error/b;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->a:Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->k:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->k:Ljava/lang/Integer;

    return v2

    .line 7
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->k:Ljava/lang/Integer;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->k:Ljava/lang/Integer;

    .line 9
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->h:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->h:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    .line 10
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->h:J

    .line 11
    :try_start_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_3

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xb4

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    .line 12
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    .line 13
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    return p1

    .line 14
    :cond_3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    .line 15
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    .line 17
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    throw p1

    .line 18
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->k:Ljava/lang/Integer;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->h:J

    .line 20
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->i:I

    .line 21
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/error/f/n;->j:I

    :cond_5
    :goto_1
    return v2
.end method
