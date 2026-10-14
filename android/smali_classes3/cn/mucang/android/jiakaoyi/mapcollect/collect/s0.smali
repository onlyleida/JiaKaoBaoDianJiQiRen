.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:F

.field public f:F

.field public g:J

.field public h:D

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcn/mucang/android/jiakaoyi/signal/i/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e:F

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f:F

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->g:J

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->i:Ljava/util/List;

    return-void
.end method

.method private f(DI)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "f"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ecf\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , \u7eac\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 2
    invoke-direct {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , \u822a\u5411\u89d2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e:F

    float-to-double v1, v1

    const/4 v3, 0x2

    .line 3
    invoke-direct {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , gps\u7c7b\u578b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , \u4fef\u4ef0\u89d2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c(Z)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 6

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "\u5f53\u524dgps\u7cbe\u5ea6\u4e0d\u591f"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "\u5f53\u524dgps\u70b9\u662f2\u79d2\u4e4b\u524d\u7684\u5b9a\u4f4d\u70b9\uff0c\u8bf7\u68c0\u67e5gps\u7ec4\u4ef6\u662f\u5426\u8fde\u63a5\u5b8c\u597d"

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_5

    if-eqz p1, :cond_4

    const-string p1, "\u5f53\u524dgps\u70b9\u8fd8\u6ca1\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u91c7\u96c6"

    .line 7
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e(Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 8
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-object p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->f:F

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->e:F

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d:I

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->h:D

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 7
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 9
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(DDD)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    cmpg-double v6, v4, v2

    if-gez v6, :cond_4

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->g:J

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 20
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->j:Lcn/mucang/android/jiakaoyi/signal/i/b;

    if-nez p1, :cond_6

    .line 21
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->j:Lcn/mucang/android/jiakaoyi/signal/i/b;

    :cond_6
    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method
