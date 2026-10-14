.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAR_TYPE:I = -0x63

.field private static final Radius:D = 1.5915494309189535

.field public static carHeight:D


# instance fields
.field public backDistance:D

.field public carPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public frontDistance:D

.field public leftBackOffset:D

.field public leftBackWidth:D

.field public leftFrontOffset:D

.field public leftFrontWidth:D

.field public leftMirrorPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public mainPosDegree:D

.field public mainPosDistance:D

.field public mainPosHeight:D

.field public name:Ljava/lang/String;

.field public pitch:D

.field public rightBackOffset:D

.field public rightBackWidth:D

.field public rightFrontOffset:D

.field public rightFrontWidth:D

.field public rightMirrorPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public stepId:I

.field public time:J

.field public wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->stepId:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->time:J

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    const-wide v1, 0x4034800000000000L    # 20.5

    const-wide v3, 0x4032800000000000L    # 18.5

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    const-wide v1, 0x4047800000000000L    # 47.0

    if-eqz v0, :cond_2

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v3

    :goto_2
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v3, v1

    :cond_3
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    return-void
.end method

.method private static transform(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;-><init>()V

    .line 2
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v7

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->backFrontDistance:D

    .line 3
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->mainPosHeight:D

    .line 4
    sput-wide v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carHeight:D

    .line 5
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 6
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    double-to-float v4, v7

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    sget-object v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 12
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v8, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 14
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide v8, 0x3ff976fc893c3aa4L    # 1.5915494309189535

    const/4 v4, 0x1

    .line 15
    invoke-static {v7, v8, v9, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->H(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    .line 16
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 17
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    invoke-virtual {v12, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v15

    mul-double v8, v15, v5

    .line 19
    iget-object v15, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->carPoints:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v3, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    move-object v12, v7

    sub-double v6, v21, v13

    invoke-direct {v5, v8, v9, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    invoke-interface {v15, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object v7, v12

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3ff976fc893c3aa4L    # 1.5915494309189535

    goto :goto_1

    .line 20
    :cond_2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v5

    const-wide v6, 0x4004bb7e449e1d52L    # 2.5915494309189535

    if-eqz v5, :cond_5

    .line 21
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorPoints:Ljava/util/Map;

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    sget-object v8, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 26
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v9, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    invoke-interface {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_4
    invoke-static {v8, v6, v7, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->H(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    .line 29
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 30
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 31
    invoke-virtual {v9, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    mul-double v10, v10, v19

    .line 32
    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->leftMirrorPoints:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v3, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v22

    sub-double v6, v22, v13

    invoke-direct {v4, v10, v11, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    invoke-interface {v12, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    const-wide v6, 0x4004bb7e449e1d52L    # 2.5915494309189535

    goto :goto_3

    .line 33
    :cond_5
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 34
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorPoints:Ljava/util/Map;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    sget-object v5, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/c;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 39
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v6, :cond_6

    goto :goto_4

    .line 40
    :cond_6
    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-wide v6, 0x4004bb7e449e1d52L    # 2.5915494309189535

    const/4 v8, 0x1

    .line 41
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->H(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x0

    .line 42
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_8

    .line 43
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 44
    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v8

    .line 45
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->rightMirrorPoints:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v15, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    sub-double v8, v19, v13

    invoke-direct {v15, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 46
    :cond_8
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 47
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 48
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 49
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 50
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v9, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v10, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    .line 51
    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->l(D)V

    .line 52
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    const-wide v9, 0x3ff976fc893c3aa4L    # 1.5915494309189535

    sub-double v7, v9, v7

    invoke-static {v4, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 53
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    sub-double v7, v9, v7

    invoke-static {v5, v1, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 54
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    sub-double v7, v9, v7

    invoke-static {v6, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 55
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    sub-double v8, v9, v7

    invoke-static {v1, v5, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 56
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    invoke-static {v4, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 57
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    invoke-static {v5, v1, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    .line 58
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    invoke-static {v6, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 59
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    invoke-static {v1, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v18

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v7, v3

    move-object v8, v4

    move-wide v9, v13

    .line 60
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object v8, v5

    .line 61
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object v8, v6

    .line 62
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object v8, v1

    .line 63
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object v8, v15

    .line 64
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object/from16 v8, v16

    .line 65
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object/from16 v8, v17

    .line 66
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-object v7, v3

    move-object/from16 v8, v18

    .line 67
    invoke-static/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    .line 68
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleToInZ(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 70
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    sub-double/2addr v0, v3

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;->antennaAngle:D

    return-object v2
.end method

.method private static trimPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    const-wide v0, -0x4006890376c3c55cL    # -1.5915494309189535

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p3, v1, v3

    if-ltz p3, :cond_0

    return-object v0

    :cond_0
    const-wide v0, 0x3ff976fc893c3aa4L    # 1.5915494309189535

    .line 3
    invoke-static {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method private static trimWheelOffset(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    mul-double v0, v0, p4

    .line 2
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    sub-double/2addr p0, p2

    invoke-direct {p4, v0, v1, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    return-object p4
.end method


# virtual methods
.method public canTurnOrientation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;
    .locals 1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    move-result-object v0

    return-object v0
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public generateCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q(D)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->transform(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->time:J

    return-wide v0
.end method

.method public giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDistance:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->carPoints:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->name:Ljava/lang/String;

    .line 12
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->time:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->time:J

    .line 13
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    .line 14
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    .line 15
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    .line 16
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    .line 17
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    .line 18
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    .line 19
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    .line 20
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    .line 21
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    .line 22
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    .line 23
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    .line 24
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->pitch:D

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    .line 26
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftMirrorPoints:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    .line 29
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightMirrorPoints:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->time:J

    return-void
.end method

.method public stepId()I
    .locals 1

    const/16 v0, -0x63

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
