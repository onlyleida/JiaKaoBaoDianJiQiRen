.class public Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;
.super Lcn/mucang/android/jiakaoyi/signal/com/x/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I

.field private c:J

.field private final d:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/x/a;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;-><init>()V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->a:I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->e:Z

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->c:J

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->b:I

    return-void
.end method


# virtual methods
.method public a([BIZIII)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->c:J

    .line 6
    array-length v0, p1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->b:I

    goto :goto_0

    .line 7
    :cond_1
    iget v6, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->b:I

    array-length v7, p1

    add-int/2addr v6, v7

    .line 8
    iget v7, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->a:I

    if-le v6, v7, :cond_2

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v2

    const-wide/16 v2, 0xc8

    .line 9
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->c:J

    .line 11
    array-length v0, p1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->b:I

    goto :goto_0

    .line 12
    :cond_2
    iput v6, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->b:I

    .line 13
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;->a([BIZIII)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/d/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/x/a;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
