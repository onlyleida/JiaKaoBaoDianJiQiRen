.class public Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;
.super Lcn/mucang/android/jiakaoyi/signal/com/x/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private volatile b:Z

.field private final c:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

.field private d:J

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;-><init>(Ljava/io/OutputStream;Lcn/mucang/android/jiakaoyi/signal/com/u/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcn/mucang/android/jiakaoyi/signal/com/u/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/a;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->a:Ljava/io/OutputStream;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->c:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->e:I

    return-void
.end method


# virtual methods
.method public a([BIZIII)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->d:J

    sub-long v0, p5, v0

    .line 4
    iget p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->e:I

    int-to-long v2, p3

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    iget p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->e:I

    int-to-long v2, p3

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    .line 7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    :cond_1
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->d:J

    .line 9
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    if-nez p3, :cond_2

    return p4

    .line 10
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->a:Ljava/io/OutputStream;

    array-length p5, p1

    invoke-virtual {p3, p1, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 11
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    if-nez p3, :cond_3

    return p4

    .line 12
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->a:Ljava/io/OutputStream;

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 13
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    if-nez p3, :cond_4

    return p4

    .line 14
    :cond_4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->c:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    if-eqz p3, :cond_7

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->isSendOTAOrder(I)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->i()I

    move-result p2

    const/16 p3, 0x6a

    if-lt p2, p3, :cond_7

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;

    move-result-object p2

    array-length p1, p1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->c:Lcn/mucang/android/jiakaoyi/signal/com/u/a;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/x/a;->d(ILcn/mucang/android/jiakaoyi/signal/com/u/a;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 16
    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->e:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Landroid/os/SystemClock;->sleep(J)V

    .line 17
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    if-nez p2, :cond_5

    return p4

    .line 18
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->a:Ljava/io/OutputStream;

    array-length p3, p1

    invoke-virtual {p2, p1, p4, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 19
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    if-nez p1, :cond_6

    return p4

    .line 20
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->a:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/e;->b:Z

    return-void
.end method
