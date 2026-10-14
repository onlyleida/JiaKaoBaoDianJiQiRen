.class public Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$b;
    }
.end annotation


# static fields
.field private static i:Z = false

.field private static volatile j:Z = false


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:D

.field private volatile d:Z

.field private volatile e:Z

.field private f:I

.field private g:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->c:D

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->e:Z

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CalibrateSteeringWheel"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->e:Z

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->g(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    return-object p0
.end method

.method private d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->e:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const-string v1, "\u5f00\u59cb\u65b9\u5411\u76d8\u6821\u51c6..."

    .line 6
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-float v4, v2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;FJLcn/mucang/android/jiakaoyi/teachingk2/z0/f$a;)V

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private e(D)Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4650

    :goto_0
    int-to-double v1, v0

    add-double/2addr p1, v1

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6821\u51c6\u65b9\u5411\u76d8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u5df2+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0csize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    double-to-int p1, p1

    int-to-short p1, p1

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;

    invoke-direct {v1, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/b;-><init>(SLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x3e8

    .line 7
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calibrate error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u65b9\u5411\u76d8\u6821\u51c6\u5931\u8d25\uff1a\u8d85\u65f6"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private g(Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->r()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->i(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 9
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j:Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    .line 12
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int v5, v8

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->b:F

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->c:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5224\u65ad\u51fa\u6765\u5728\u8d70\u76f4\u7ebf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->q()D

    move-result-wide v1

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u504f\u79fb\u89d2\u5ea6:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double p1, v4, v6

    if-gez p1, :cond_4

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5728\u8d70\u76f4\u7ebf\uff0c\u4f46\u65b9\u5411\u76d8\u89d2\u5ea6\u5f88\u5c0f\uff0c\u4e0d\u9700\u8981\u6821\u51c6\u3002\u65b9\u5411\u76d8\u89d2\u5ea6\u662f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 20
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    return-void

    .line 21
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p1, v4, v6

    if-lez p1, :cond_6

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->c:D

    sub-double v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p1, v4, v6

    if-lez p1, :cond_6

    .line 22
    sput-boolean v3, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j:Z

    .line 23
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->i:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->e(D)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u65b9\u5411\u76d8\u81ea\u52a8\u6821\u51c6\u6210\u529f"

    .line 24
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65b9\u5411\u76d8\u6821\u51c6\u6210\u529f : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j:Z

    .line 27
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->c:D

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 29
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    goto :goto_2

    .line 30
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v3, 0x4075e00000000000L    # 350.0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_6

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    .line 32
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_6

    .line 33
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public static h(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b9\u5411\u76d8\u6821\u51c6\u521d\u59cb\u5316:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->i:Z

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->h:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private i(Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide v8, 0x4071800000000000L    # 280.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x2

    .line 3
    div-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_2

    return v3

    .line 4
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    neg-double v7, v7

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance v13, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;

    invoke-direct {v13}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;-><init>()V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    .line 11
    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v9, v2

    move-object v10, v5

    move-wide v11, v15

    move-object v6, v13

    move-wide v13, v7

    .line 12
    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v9, v10, v11, v12}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->add(DD)V

    move-object v13, v6

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v13

    .line 14
    invoke-static {v4}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    move-result-object v2

    .line 15
    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->toList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->fit(Ljava/util/Collection;)[D

    move-result-object v2

    .line 16
    aget-wide v7, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpl-double v5, v7, v9

    if-lez v5, :cond_4

    .line 17
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    return v3

    :cond_4
    const-wide v9, 0x3edd5c31593e5fb7L    # 7.0E-6

    cmpl-double v5, v7, v9

    if-lez v5, :cond_5

    .line 19
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    return v3

    .line 20
    :cond_5
    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->toList()Ljava/util/List;

    move-result-object v5

    .line 21
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    .line 22
    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v13

    invoke-static {v2, v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->s([DD)D

    move-result-wide v13

    invoke-virtual {v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    goto :goto_1

    .line 23
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v5, v2

    div-double/2addr v11, v5

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7cfb\u6570:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " , \u5dee\u5f02:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide v5, 0x3e8421f5f40d8376L    # 1.5E-7

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_7

    const-wide v5, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v11, v5

    if-gez v2, :cond_7

    const-string v2, "\u6821\u51c6\u76f4\u63a5\u901a\u8fc7"

    .line 25
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 26
    iput v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const-wide v5, 0x3ed0c6f7a0b5ed8dL    # 4.0E-6

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_8

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v11, v5

    if-gez v2, :cond_8

    .line 27
    iput v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    goto :goto_2

    :cond_8
    const-wide v5, 0x3ed4f8b588e368f0L    # 4.9999999999999996E-6

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_9

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v11, v5

    if-gez v2, :cond_9

    .line 28
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    .line 29
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    .line 30
    :goto_3
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f:I

    if-lt v2, v4, :cond_d

    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v6, v9

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    .line 32
    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->b:F

    float-to-double v11, v4

    add-double/2addr v6, v11

    goto :goto_4

    .line 33
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v11, v2

    div-double/2addr v6, v11

    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    .line 35
    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->b:F

    float-to-double v11, v4

    sub-double/2addr v11, v6

    float-to-double v13, v4

    sub-double/2addr v13, v6

    mul-double v11, v11, v13

    add-double/2addr v9, v11

    goto :goto_5

    .line 36
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v9, v1

    .line 37
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u65b9\u5411\u76d8\u5747\u503c:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " ,\u65b9\u5411\u76d8\u89d2\u5ea6\u503c\u65b9\u5dee:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x408f400000000000L    # 1000.0

    cmpl-double v4, v6, v10

    if-lez v4, :cond_c

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    :cond_c
    cmpg-double v4, v1, v8

    if-gez v4, :cond_d

    const/4 v3, 0x1

    :cond_d
    return v3
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic k(SLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/e;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/e;-><init>(S)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;

    invoke-direct {v6, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/c;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;

    invoke-direct {v7, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method private synthetic l(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7184\u706b\u4e86\uff0c\u9700\u8981\u91cd\u65b0\u6821\u51c6\uff0c\u5f53\u524d\u65b9\u5411\u76d8\u89d2\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d:Z

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic n(S)Lkotlin/v;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/calibration/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/calibration/b;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->CENTER:Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/calibration/WheelAction;->getAction()B

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/signal/calibration/b;->a(BS)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic o(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;
    .locals 4

    const-string v0, "\u65b9\u5411\u76d8\u6821\u51c6\u8d85\u65f6"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic p(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;
    .locals 4

    .line 1
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private q()D
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x6

    mul-int/lit8 v0, v0, 0x5

    .line 3
    div-int/lit8 v0, v0, 0x6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->b:F

    float-to-double v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-double v0, v4

    div-double/2addr v2, v0

    return-wide v2
.end method

.method private r()V
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f$c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide v5, 0x4075e00000000000L    # 350.0

    cmpl-double v0, v2, v5

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_0

    :goto_0
    return-void
.end method

.method private static s([DD)D
    .locals 4

    const/4 v0, 0x2

    .line 1
    aget-wide v0, p0, v0

    mul-double v0, v0, p1

    mul-double v0, v0, p1

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    const/4 p1, 0x0

    aget-wide p1, p0, p1

    add-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public synthetic m(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->l(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
