.class public Lcn/mucang/android/jiakaoyi/signal/c/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;


# instance fields
.field private a:J

.field private b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->a:J

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method public static d()Lcn/mucang/android/jiakaoyi/signal/c/g/a;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/c/g/a;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->d:Lcn/mucang/android/jiakaoyi/signal/c/g/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v0, 0x1388

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->a:J

    return-void
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->a:J

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;BLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq p2, v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->c:J

    .line 4
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->c:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->a:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    move-object p3, p1

    .line 5
    :cond_2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/c/g/a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p3
.end method
