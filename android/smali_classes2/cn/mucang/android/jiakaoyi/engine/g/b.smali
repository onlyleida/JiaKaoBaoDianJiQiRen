.class public Lcn/mucang/android/jiakaoyi/engine/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:J

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    const-wide/32 v0, -0xf423f

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->c:J

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->f()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->a()V

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->b:J

    return-wide v0
.end method

.method public d()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->b:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->c:J

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->c:J

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/g/b;->a:Z

    return-void
.end method
