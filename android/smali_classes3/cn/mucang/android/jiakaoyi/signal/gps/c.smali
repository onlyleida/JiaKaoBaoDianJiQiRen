.class public Lcn/mucang/android/jiakaoyi/signal/gps/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F = 100000.0f

.field private static b:F = 100000.0f

.field private static c:F = 100000.0f

.field private static final d:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

.field private static e:D = 0.0

.field private static f:D = 0.0

.field private static g:I = 0x0

.field private static h:Z = false

.field private static final i:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static j:D

.field private static k:D

.field private static l:D

.field private static m:I

.field private static n:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private static volatile o:Z

.field private static final p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "gps_station_is_self"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->i:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-wide/16 v0, 0x0

    .line 3
    sput-wide v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    .line 4
    sput-wide v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->k:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5
    sput-wide v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->l:D

    const/4 v0, 0x0

    .line 6
    sput v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 9
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->o:Z

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/a;->a:Lcn/mucang/android/jiakaoyi/signal/gps/a;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private static a(Landroid/location/Location;FF)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n(F)F

    move-result p2

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a:F

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    float-to-double v1, p1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    sub-float p1, p2, v0

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a:F

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearing(F)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Landroid/location/Location;->setBearing(F)V

    .line 7
    sput p2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a:F

    return-void
.end method

.method private static b(Ljava/io/InputStream;JLcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xfa0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x1

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    const-string p0, "gps\u8d85\u8fc74\u79d2\u6ca1\u8f93\u5165\uff0c\u91cd\u8fde"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorCom:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    const-string p2, "GPS\u957f\u65f6\u95f4\u6ca1\u6570\u636e\u8f93\u5165"

    invoke-direct {p0, p3, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;)D
    .locals 5

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "\\."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    aget-object v2, p0, v0

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5
    aget-object v0, p0, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    add-double/2addr v3, v1

    return-wide v3
.end method

.method private static d(F)F
    .locals 3

    const/high16 v0, 0x41e80000    # 29.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v1

    if-gtz v2, :cond_0

    return v0

    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    const/high16 p0, 0x41700000    # 15.0f

    return p0

    :cond_1
    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr p0, v1

    mul-float p0, p0, v2

    const/high16 v1, 0x41980000    # 19.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static e()D
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    return-wide v0
.end method

.method static synthetic f()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->GpsNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->O(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sput-object p0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private static h(Ljava/lang/String;F)F
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private static i(Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return p1
.end method

.method public static j(Ljava/io/BufferedReader;Ljava/io/InputStream;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    const-string v1, " : "

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->o:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    sput-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->o:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    :cond_0
    invoke-static/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->o(Ljava/io/BufferedReader;Ljava/io/InputStream;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    const-string v3, ""

    const/4 v4, 0x0

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static {v14, v12, v13, v15}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b(Ljava/io/InputStream;JLcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v12}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 9
    rem-int/lit8 v12, v5, 0x5

    if-nez v12, :cond_2

    const-string v12, "\u6d41\u52a8\u7ad9\u8f93\u51fa\u6570\u636e\u4e3a\u7a7a"

    .line 10
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :cond_2
    const/16 v12, 0x14

    if-le v5, v12, :cond_1

    const-string v5, "\u6d41\u52a8\u7ad9\u8f93\u51fa\u6570\u636e\u957f\u65f6\u95f4\u4e3a\u7a7a\uff0c\u91cd\u542fgps\u7f51\u53e3"

    .line 11
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 12
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/gps/b;->a:Lcn/mucang/android/jiakaoyi/signal/gps/b;

    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string v13, "$GPGGA"

    .line 13
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 14
    const-class v9, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v9

    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;

    invoke-direct {v13, v12}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    move-object v9, v12

    goto :goto_2

    :cond_4
    const-string v13, "$GPRMC"

    .line 15
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v7, v7, 0x1

    move-object v10, v12

    goto :goto_2

    :cond_5
    const-string v13, "#HEADINGA"

    .line 16
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    move-object v11, v12

    .line 17
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_26

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_26

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_26

    .line 18
    :try_start_0
    invoke-static {v9, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, ","

    .line 19
    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x7

    .line 20
    :try_start_1
    aget-object v12, v8, v12

    const/4 v13, 0x0

    .line 21
    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v12

    const v14, 0x3f03b2a1

    mul-float v12, v12, v14

    .line 22
    aget-object v14, v8, v2

    invoke-static {v14, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v14

    .line 23
    sget-object v15, Lcn/mucang/android/jiakaoyi/signal/gps/c;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    const v16, 0x40666666    # 3.6f

    mul-float v12, v12, v16

    invoke-virtual {v15, v12, v14}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a(FF)F

    move-result v12

    div-float v12, v12, v16

    const/16 v15, 0x8

    .line 24
    aget-object v8, v8, v15

    .line 25
    invoke-static {v8, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    float-to-int v8, v8

    int-to-float v8, v8

    :try_start_2
    const-string v15, ";"

    .line 26
    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 27
    aget-object v15, v15, v2

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 28
    aget-object v15, v7, v2

    invoke-static {v15}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 29
    aget-object v15, v7, v2

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_8

    const-string v5, "ins"

    .line 30
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v2, 0x4

    if-eqz v15, :cond_9

    const-string v6, "float"

    .line 31
    invoke-virtual {v15, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    const/4 v5, 0x5

    .line 32
    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    goto :goto_5

    :cond_9
    if-eqz v15, :cond_a

    const-string v6, "int"

    .line 33
    invoke-virtual {v15, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "fixed"

    invoke-virtual {v15, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    if-eqz v5, :cond_c

    .line 34
    :cond_b
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    goto :goto_5

    .line 35
    :cond_c
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    .line 36
    :goto_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v5

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m(I)V

    const/4 v5, 0x2

    .line 37
    aget-object v5, v7, v5

    invoke-static {v5, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v5

    const/4 v6, 0x3

    .line 38
    aget-object v6, v7, v6

    invoke-static {v6, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v6

    .line 39
    aget-object v15, v7, v2

    invoke-static {v15, v13}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v15

    .line 40
    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    .line 41
    iput v15, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->e:F

    .line 42
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n(F)F

    move-result v6

    iput v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 43
    array-length v6, v7

    const/16 v15, 0xc

    if-le v6, v15, :cond_e

    const/16 v6, 0x9

    .line 44
    aget-object v6, v7, v6

    invoke-static {v6, v4}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->i(Ljava/lang/String;I)I

    move-result v6

    .line 45
    sget-object v15, Lcn/mucang/android/jiakaoyi/framework/e/o;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v15, 0xb

    .line 46
    aget-object v7, v7, v15

    invoke-static {v7, v4}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->i(Ljava/lang/String;I)I

    move-result v7

    .line 47
    sget-object v15, Lcn/mucang/android/jiakaoyi/framework/e/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v15, 0x26

    if-lt v6, v15, :cond_d

    if-ge v7, v15, :cond_e

    :cond_d
    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    .line 48
    :goto_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v7, 0x1

    :goto_8
    const-string v15, "\n"

    if-nez v6, :cond_13

    .line 49
    :try_start_3
    iget v13, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    if-ne v13, v2, :cond_11

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    if-eq v4, v2, :cond_12

    :cond_11
    if-eqz v7, :cond_13

    :cond_12
    if-eq v13, v2, :cond_16

    .line 50
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_14

    const-string v6, "(\u641c\u661f\u6570\u5c11)"

    goto :goto_9

    :cond_14
    move-object v6, v3

    :goto_9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    if-eq v6, v2, :cond_15

    const-string v3, "(\u5b9a\u5411\u89e3\u4e0d\u56fa\u5b9a)"

    :cond_15
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "gps\u6570\u636e\u4e0d\u6b63\u5e38:\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 51
    :cond_16
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, ",bearing="

    const-wide v17, 0x3fb999999999999aL    # 0.1

    const-wide/16 v19, 0x0

    if-ne v3, v2, :cond_1c

    :try_start_4
    iget v13, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    if-eq v13, v2, :cond_1c

    move/from16 v21, v3

    float-to-double v2, v5

    const-wide v22, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpl-double v24, v2, v22

    if-lez v24, :cond_1d

    if-nez v7, :cond_1d

    float-to-double v2, v14

    .line 52
    sput-wide v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->k:D

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last: baseDistance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcn/mucang/android/jiakaoyi/signal/gps/c;->e:D

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",bearingDiff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ",calHeading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",heading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 54
    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->e:D

    cmpl-double v5, v2, v19

    if-lez v5, :cond_17

    double-to-float v2, v2

    .line 55
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    goto :goto_a

    :cond_17
    const v2, 0x3f4a3d71    # 0.79f

    .line 56
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    .line 57
    :goto_a
    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    cmpl-double v5, v2, v19

    if-eqz v5, :cond_1b

    float-to-double v5, v12

    cmpl-double v7, v5, v17

    if-lez v7, :cond_19

    .line 58
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v6, :cond_18

    const/16 v4, 0xb4

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    :goto_b
    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v2, v8

    .line 59
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n(F)F

    move-result v2

    sput v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b:F

    .line 60
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    goto :goto_c

    .line 61
    :cond_19
    sget v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b:F

    const v3, 0x47c35000    # 100000.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v4, v2, v17

    if-lez v4, :cond_1a

    .line 62
    sget v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b:F

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    goto :goto_c

    :cond_1a
    const-string v2, "\u6ca1\u6709\u5b9a\u5411\u89e31"

    .line 63
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1b
    const-string v2, "\u6ca1\u6709\u5b9a\u5411\u89e32"

    .line 64
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :goto_c
    const v2, 0x47c35000    # 100000.0f

    .line 65
    sput v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    const/4 v2, 0x0

    .line 66
    sput v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    goto/16 :goto_11

    :cond_1c
    move/from16 v21, v3

    .line 67
    :cond_1d
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_24

    move/from16 v2, v21

    if-ne v2, v3, :cond_24

    if-nez v7, :cond_1e

    float-to-double v2, v14

    .line 68
    sget-wide v13, Lcn/mucang/android/jiakaoyi/signal/gps/c;->k:D

    sub-double/2addr v2, v13

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    cmpg-double v21, v2, v13

    if-gez v21, :cond_1e

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u822a\u5411\u89d2\u6b63\u5e38\u524d10\u79d2:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    :goto_d
    float-to-double v13, v12

    cmpl-double v3, v13, v17

    if-lez v3, :cond_21

    if-nez v7, :cond_21

    .line 70
    sget-wide v13, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v4, :cond_1f

    const/16 v3, 0xb4

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    :goto_e
    int-to-double v3, v3

    add-double/2addr v13, v3

    double-to-float v3, v13

    add-float/2addr v3, v8

    .line 71
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->n(F)F

    move-result v3

    .line 72
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    sub-float v4, v3, v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v16, v16, v12

    .line 73
    invoke-static/range {v16 .. v16}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->d(F)F

    move-result v13

    cmpl-float v14, v4, v13

    if-lez v14, :cond_21

    .line 74
    iget v14, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    sub-float v14, v3, v14

    const/high16 v16, 0x43340000    # 180.0f

    add-float v14, v14, v16

    invoke-static {v14}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_21

    .line 75
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v1

    :try_start_5
    const-string v1, "\u822a\u5411\u89d2\u548cbearing\u76f8\u5dee\u8fc7\u5927:heading="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",calHead="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",diff="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",threshold="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\u5761\u9053="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/h/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    if-nez v2, :cond_20

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u822a\u5411\u89d2\u4e0d\u6b63\u5e38:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 79
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    goto :goto_f

    :cond_21
    move-object/from16 v16, v1

    :goto_f
    if-nez v7, :cond_23

    .line 80
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    sget v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 81
    sget v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_22

    const/high16 v2, 0x420c0000    # 35.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_22

    sget v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    const v3, 0x47c35000    # 100000.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_22

    sget-wide v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->l:D

    cmpl-double v6, v3, v19

    if-lez v6, :cond_22

    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->j:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_22

    float-to-double v6, v6

    sub-double/2addr v6, v3

    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpg-double v9, v6, v3

    if-gez v9, :cond_22

    .line 82
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u822a\u5411\u89d2\u7a81\u53d8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_10

    .line 84
    :cond_22
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    .line 85
    :cond_23
    :goto_10
    sget-wide v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->f:D

    float-to-double v3, v5

    add-double/2addr v1, v3

    sput-wide v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->f:D

    .line 86
    sget v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->g:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->g:I

    int-to-double v5, v3

    div-double/2addr v1, v5

    .line 87
    sput-wide v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->e:D

    .line 88
    sget v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    add-int/2addr v1, v4

    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    goto :goto_11

    :cond_24
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .line 89
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    const v1, 0x47c35000    # 100000.0f

    .line 90
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :goto_11
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->j:F

    .line 92
    sget-wide v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->l:D

    cmpl-double v4, v2, v19

    if-lez v4, :cond_25

    float-to-double v4, v1

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v6, v4, v2

    if-lez v6, :cond_25

    const v2, 0x47c35000    # 100000.0f

    .line 93
    sput v2, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a:F

    .line 94
    :cond_25
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v2, v12, v8}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->a(Landroid/location/Location;FF)V

    float-to-double v1, v1

    .line 95
    sput-wide v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->l:D

    .line 96
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n(D)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 97
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790Heading\u5305\u5f02\u5e38 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    const v1, 0x47c35000    # 100000.0f

    .line 98
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    const/4 v1, 0x0

    .line 99
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    :goto_13
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    move-object v2, v1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790GPRMC\u5305\u5f02\u5e38 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    const v1, 0x47c35000    # 100000.0f

    .line 101
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    const/4 v1, 0x0

    .line 102
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790GPGGA\u5305\u5f02\u5e38 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    const v1, 0x47c35000    # 100000.0f

    .line 104
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c:F

    const/4 v1, 0x0

    .line 105
    sput v1, Lcn/mucang/android/jiakaoyi/signal/gps/c;->m:I

    goto :goto_13

    :cond_26
    move-object v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int v12, v7, v6

    add-int/2addr v12, v8

    const/16 v13, 0xa

    if-le v12, v13, :cond_27

    .line 106
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gps\u6570\u636e\u89e3\u6790\u5f02\u5e38 : gpgga Count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , gprmc Count = "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , heading count = "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gga = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nrmc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nheading = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    move-object v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_27
    move-object v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private static k(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 7

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    aget-object v0, p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h(Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->j:F

    const/4 v0, 0x2

    .line 3
    aget-object v0, p0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v2, 0x3

    .line 4
    aget-object v2, p0, v2

    const-string v3, "N"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    neg-double v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    :goto_0
    const/4 v2, 0x4

    .line 7
    aget-object v2, p0, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->c(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x5

    .line 8
    aget-object v4, p0, v4

    const-string v5, "E"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    neg-double v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    :goto_1
    const/4 v4, 0x6

    .line 11
    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v4, 0x7

    .line 12
    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    .line 13
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    const/16 v5, 0x9

    aget-object p0, p0, v5

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setAltitude(D)V

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p0

    iget v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o(I)V

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p0

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p(I)V

    const-wide/16 p0, 0x0

    cmpl-double v4, v0, p0

    if-eqz v4, :cond_2

    cmpl-double v0, v2, p0

    if-nez v0, :cond_3

    .line 16
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d()V

    :cond_3
    return-void
.end method

.method public static l(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5929\u7ebf\u89d2\u548c\u8f66\u8eab\u89d2\u7684\u5939\u89d2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 2
    sput-wide p0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j:D

    return-void
.end method

.method public static m(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u4e3a\u662f\u5426\u4e91\u57fa\u7ad9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->i:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static n(F)F
    .locals 2

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    return p0
.end method

.method private static o(Ljava/io/BufferedReader;Ljava/io/InputStream;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h:Z

    if-nez v0, :cond_0

    const-string v0, "\u5f00\u59cb\u5bf9\u9f50gps\u5e27"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 3
    :cond_1
    :goto_0
    sget-boolean v3, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h:Z

    if-nez v3, :cond_8

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1, v3, v4, p2}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->b(Ljava/io/InputStream;JLcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    const-string v4, "$GPGGA"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\u5bf9\u9f50gps\u5e27:"

    const-string v6, ","

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 11
    aget-object v4, v2, v7

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v2, v7

    aget-object v1, v1, v7

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sput-boolean v7, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h:Z

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v2, v7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    const-string v4, "$GPRMC"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 17
    aget-object v4, v1, v7

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v1, v7

    aget-object v2, v2, v7

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    sput-boolean v7, Lcn/mucang/android/jiakaoyi/signal/gps/c;->h:Z

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move-object v2, v0

    :cond_7
    move-object v1, v3

    goto/16 :goto_0

    :cond_8
    :goto_1
    return-void
.end method
