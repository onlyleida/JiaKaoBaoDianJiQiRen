.class public Lcn/mucang/android/jiakaoyi/signal/center/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcn/mucang/android/jiakaoyi/signal/center/model/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a:I

    const/16 v0, 0x1f4

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->b:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/signal/center/model/a;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;-><init>()V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    return-object v0
.end method


# virtual methods
.method public b(II)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->c(III)V

    return-void
.end method

.method public c(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a:I

    const/16 p1, 0x7d0

    if-lez p2, :cond_0

    .line 2
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->c:I

    :cond_0
    if-lez p3, :cond_1

    .line 3
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->b:I

    :cond_1
    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne v0, v3, :cond_1

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    if-gt v0, v2, :cond_0

    const/16 v0, 0x3e8

    .line 4
    iput v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    :cond_0
    return v2

    :cond_1
    return v1

    .line 5
    :cond_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->b:I

    if-gtz v0, :cond_6

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a:I

    if-gez v0, :cond_4

    .line 7
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    goto :goto_0

    .line 8
    :cond_4
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    if-le p1, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    goto :goto_0

    .line 9
    :cond_6
    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a:I

    const-wide/16 v5, 0x0

    if-le v3, v4, :cond_8

    .line 10
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    .line 11
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    cmp-long v3, v0, v5

    if-gtz v3, :cond_7

    .line 12
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    .line 13
    :cond_7
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    sub-long/2addr v0, v3

    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->c:I

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-lez p1, :cond_a

    .line 14
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    goto :goto_0

    .line 15
    :cond_8
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_9

    .line 16
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    .line 17
    :cond_9
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    .line 18
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    sub-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long p1, v2, v4

    if-lez p1, :cond_a

    .line 19
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    .line 20
    :cond_a
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->f:Z

    return p1
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d:J

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->e:J

    const/16 v0, 0x1f4

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->b:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->c:I

    return-void
.end method
