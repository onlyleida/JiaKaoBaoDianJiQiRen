.class public Lcn/mucang/android/jiakaoyi/mapcollect/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final G:F

.field private static H:F


# instance fields
.field private A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private B:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private E:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private F:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final a:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:J

.field private f:F

.field private g:F

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private k:F

.field private l:F

.field private m:F

.field private final n:J

.field public final o:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

.field public final p:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private q:I

.field private r:F

.field private s:I

.field private final t:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;

.field private u:Lcn/mucang/android/jiakaoyi/mapcollect/c/l/a;

.field private v:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private w:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private x:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private y:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private z:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->G:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->H:F

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/i;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f:F

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g:F

    .line 9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    .line 10
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v1, -0x34e76980    # -1.0E7f

    .line 12
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->k:F

    .line 13
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    .line 14
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->m:F

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->q:I

    .line 16
    iput v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->s:I

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;

    .line 18
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->o:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    .line 19
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->p:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 20
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/e;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/e;-><init>(I)V

    .line 21
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/e;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/e;-><init>(I)V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->n:J

    .line 23
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    .line 24
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    sput p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->H:F

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    add-double/2addr v4, v6

    goto :goto_0

    :cond_1
    cmpl-double v3, v4, v1

    if-nez v3, :cond_2

    return-wide v1

    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    div-double/2addr v6, v4

    sub-double/2addr v1, v6

    return-wide v1
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)F
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v2, p0

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/c/i;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)V

    return-void
.end method

.method private static d(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v2

    .line 5
    sget v5, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->H:F

    float-to-double v5, v5

    cmpg-double v7, v2, v5

    if-gez v7, :cond_1

    return v4

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_2

    return v4

    .line 7
    :cond_2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    mul-double v5, v5, v2

    div-double/2addr v7, v5

    .line 8
    sget p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->G:F

    float-to-double v2, p0

    cmpg-double p0, v7, v2

    if-gez p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->s:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->s:I

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->o:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->p:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-byte v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    .line 6
    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    float-to-double v4, v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_4

    .line 7
    iget v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->s:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    const-string v2, "\u4e3b\u5929\u7ebf\u5230\u4ece\u5929\u7ebf\u7684\u8ddd\u79bb\u6709\u95ee\u9898"

    .line 8
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e3b\u5929\u7ebf\u548c\u4ece\u5929\u7ebf\u8ddd\u79bb\u6709\u95ee\u9898:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 11
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 12
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    .line 13
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e:J

    .line 14
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->k:F

    .line 15
    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    return-void

    :cond_5
    cmp-long v8, v6, v4

    if-nez v8, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v6

    .line 17
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v7, v9

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v11, v7, v9

    if-gez v11, :cond_a

    iget-wide v7, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    sub-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v11, v7, v9

    if-gez v11, :cond_a

    .line 19
    :cond_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-nez v2, :cond_9

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->m:F

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->m:F

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    .line 22
    iput v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 23
    iget v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    iput v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    .line 24
    iput v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->k:F

    .line 25
    iput v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    .line 26
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->q:I

    return-void

    .line 27
    :cond_a
    iget v7, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    float-to-double v14, v7

    .line 28
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 29
    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    const v7, -0x34e76980    # -1.0E7f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b

    .line 30
    iget v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    .line 31
    :cond_b
    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g:F

    const/16 v19, 0x0

    cmpl-float v6, v6, v19

    if-eqz v6, :cond_e

    .line 32
    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f:F

    cmpl-float v6, v6, v19

    if-nez v6, :cond_c

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    const-wide v10, 0x4040800000000000L    # 33.0

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    const-wide v12, 0x401ccccccccccccdL    # 7.2

    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g:F

    float-to-double v2, v6

    mul-double v2, v2, v12

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f:F

    .line 34
    :cond_c
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iget v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f:F

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    mul-float v6, v6, v8

    float-to-double v8, v6

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-double/2addr v8, v10

    cmpl-double v6, v2, v8

    if-lez v6, :cond_d

    .line 36
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    return-void

    .line 37
    :cond_d
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->l:F

    .line 38
    :cond_e
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->p:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 39
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 40
    iget v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 41
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    div-double/2addr v10, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpl-double v6, v10, v8

    if-lez v6, :cond_f

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_f

    .line 43
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 44
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e:J

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->q:I

    return-void

    .line 46
    :cond_f
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 47
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v8, 0x4

    if-le v6, v8, :cond_10

    .line 48
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 49
    :cond_10
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->a(Ljava/util/List;)D

    move-result-wide v8

    .line 50
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->i:Ljava/util/LinkedList;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d(Ljava/util/List;)Z

    move-result v6

    .line 51
    sget v12, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->H:F

    float-to-double v12, v12

    cmpg-double v17, v10, v12

    if-ltz v17, :cond_12

    const-wide v10, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v12, v8, v10

    if-gtz v12, :cond_12

    if-eqz v6, :cond_11

    goto :goto_0

    :cond_11
    const/4 v6, 0x0

    goto :goto_1

    :cond_12
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    if-eqz v6, :cond_14

    .line 52
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v8, :cond_13

    .line 53
    invoke-virtual {v3, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_2

    .line 54
    :cond_13
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v9, v9, v22

    iget-wide v11, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v11, v11, v22

    add-double/2addr v9, v11

    iput-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 55
    iget-wide v8, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v8, v8, v22

    iget-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v10, v10, v22

    add-double/2addr v8, v10

    iput-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 56
    :goto_2
    iget v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    iput v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    goto/16 :goto_4

    .line 57
    :cond_14
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;->a()Z

    .line 58
    iget v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    float-to-double v8, v8

    .line 59
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v16, v10, v12

    if-gez v16, :cond_15

    .line 60
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 61
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v10

    .line 62
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    cmpl-double v13, v11, v16

    if-ltz v13, :cond_17

    .line 63
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v8, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)F

    move-result v8

    float-to-double v8, v8

    .line 64
    iget-object v11, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v11, :cond_16

    iget-object v12, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 65
    invoke-virtual {v2, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpl-double v13, v11, v20

    if-lez v13, :cond_16

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    mul-double v8, v8, v11

    .line 66
    :cond_16
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 67
    :cond_17
    invoke-static {v8, v9, v10}, Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/pitch/d;->a(DLcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)D

    move-result-wide v8

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    cmpg-double v16, v10, v12

    if-gez v16, :cond_18

    goto :goto_3

    :cond_18
    move-wide/from16 v8, v20

    :goto_3
    double-to-float v8, v8

    .line 69
    iput v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    .line 70
    iput v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->r:F

    .line 71
    :goto_4
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->o:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    iget v9, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    float-to-double v10, v9

    iget v9, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    float-to-double v12, v9

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    move-wide/from16 v24, v4

    int-to-double v4, v7

    move-object v7, v9

    move-object v9, v3

    move-object/from16 v16, v7

    move-wide/from16 v17, v4

    invoke-virtual/range {v8 .. v18}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->update(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDDLcn/mucang/android/jiakaoyi/hpmap/car/CarData$a;D)Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    .line 72
    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v5, v7

    iput v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 73
    iget v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g:F

    cmpl-float v5, v5, v19

    if-nez v5, :cond_19

    .line 74
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    double-to-float v5, v7

    iput v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g:F

    .line 75
    :cond_19
    iget v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->m:F

    const v7, -0x34e76980    # -1.0E7f

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1a

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v7, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    goto :goto_5

    .line 77
    :cond_1a
    iget v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iget v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->k:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v5

    float-to-double v7, v5

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v9, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v9, v9

    add-double/2addr v9, v7

    double-to-float v7, v9

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->b(FF)F

    move-result v7

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 80
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c:Ljava/lang/Float;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v7, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    .line 82
    iget v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->q:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 83
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 84
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 85
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 86
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 87
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 88
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 89
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 90
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 91
    :cond_1b
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 92
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 93
    :cond_1c
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 94
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 95
    :cond_1d
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 96
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 97
    :cond_1e
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_6

    .line 98
    :cond_1f
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->w:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 99
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->v:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 100
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->y:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 101
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->x:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 102
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->z:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 103
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 104
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->B:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_20

    .line 105
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 106
    :cond_20
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_21

    .line 107
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 108
    :cond_21
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_22

    .line 109
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 110
    :cond_22
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->E:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_23

    .line 111
    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 112
    :cond_23
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->F:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 113
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    .line 114
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->v:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 115
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->w:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 116
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->y:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 117
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->x:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 118
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->z:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 119
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v5, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->A:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 120
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 121
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 122
    :cond_24
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 123
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->B:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 124
    :cond_25
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 125
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->E:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_7

    :cond_26
    const/4 v7, 0x0

    .line 126
    :goto_7
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 127
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 128
    :cond_27
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->F:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v6, :cond_28

    .line 129
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_8

    .line 130
    :cond_28
    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v5, v9

    .line 131
    iget-wide v9, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v9, v11

    .line 132
    iget-object v8, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v11, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v12, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v14, v8, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v15, v8

    iget-wide v7, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v12, v7

    mul-double v12, v12, v22

    move-object v7, v15

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    iget-wide v3, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v1, v3

    mul-double v1, v1, v22

    sub-double/2addr v12, v1

    .line 133
    iget-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v3, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v1, v3

    mul-double v1, v1, v22

    iget-wide v3, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v3, v7

    mul-double v3, v3, v22

    sub-double/2addr v1, v3

    mul-double v5, v5, v12

    mul-double v9, v9, v1

    add-double/2addr v5, v9

    cmpl-double v1, v5, v20

    if-ltz v1, :cond_29

    .line 134
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 135
    :cond_29
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2a

    .line 137
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 138
    :cond_2a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v2, :cond_32

    .line 139
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :cond_2b
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 140
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v4, v5, :cond_2c

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 141
    :cond_2c
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v4, v5, :cond_2d

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 142
    :cond_2d
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v4, v5, :cond_2b

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_2e
    if-lt v7, v2, :cond_2f

    if-lt v7, v3, :cond_2f

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 144
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_32

    .line 145
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_a

    :cond_2f
    const/4 v1, 0x0

    if-lt v2, v3, :cond_30

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 147
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_a

    .line 148
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 149
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 151
    :cond_31
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 152
    :cond_32
    :goto_a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->q:I

    .line 154
    const-class v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    move-wide/from16 v1, v24

    .line 155
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->e:J

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    move-object v2, v15

    .line 157
    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->k:F

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->m:F

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->s(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->s(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->u:Lcn/mucang/android/jiakaoyi/mapcollect/c/l/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/l/a;->a()V

    throw v1
.end method
