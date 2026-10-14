.class Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/d/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:F

.field volatile c:F

.field volatile d:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->a:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->c:F

    return-void
.end method

.method static synthetic c(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->g(F)V

    return-void
.end method

.method static synthetic d(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->g(F)V

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a()Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->d()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const-wide v1, 0x40ac200000000000L    # 3600.0

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-long v0, v1

    sub-long/2addr p1, p3

    long-to-double p1, p1

    const-wide p3, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double p1, p1, p3

    mul-double p1, p1, v3

    const-wide p3, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e()F

    move-result p2

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->f(F)F

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e()F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->d:F

    float-to-int p2, p2

    if-eq p1, p2, :cond_2

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e()F

    move-result p2

    add-float/2addr p1, p2

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a()Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/d/k/b;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/d/k/b;-><init>(F)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->e()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->d:F

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public b(JJ)J
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a()Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->b(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const-wide v1, 0x40ac200000000000L    # 3600.0

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-long v0, v1

    sub-long/2addr p1, p3

    long-to-double p1, p1

    const-wide p3, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double p1, p1, p3

    mul-double p1, p1, v3

    const-wide p3, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    add-float/2addr p2, p1

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    .line 4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    float-to-int p1, p1

    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->c:F

    float-to-int p2, p2

    if-eq p1, p2, :cond_2

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->a()Lcn/mucang/android/jiakaoyi/signal/d/k/c;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/d/k/c;->c(Lcn/mucang/android/jiakaoyi/signal/d/k/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/d/k/a;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/d/k/a;-><init>(F)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->c:F

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->a:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->a(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/k/c$a;->b(JJ)J

    move-result-wide v0

    :goto_1
    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x1e

    .line 7
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method
