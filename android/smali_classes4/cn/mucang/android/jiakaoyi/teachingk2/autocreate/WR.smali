.class public Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;
    }
.end annotation


# instance fields
.field public wheelRBack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;",
            ">;"
        }
    .end annotation
.end field

.field public wheelRFront:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private hasThisWheel(Ljava/util/List;D)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;",
            ">;D)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    .line 2
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    sub-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized addWR(DDDDZ)Z
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v12, p7

    move/from16 v0, p9

    monitor-enter p0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const/4 v4, 0x0

    cmpg-double v5, v12, v2

    if-lez v5, :cond_6

    .line 1
    :try_start_0
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v2, v5

    if-gez v7, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    invoke-direct {v1, v2, v14, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->hasThisWheel(Ljava/util/List;D)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 6
    monitor-exit p0

    return v4

    .line 7
    :cond_2
    :try_start_1
    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    const/16 v16, 0x1

    move-object v2, v9

    move-wide v3, v14

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object v0, v9

    move-wide/from16 v9, p7

    move-object v12, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;-><init>(DDDDZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    .line 11
    :cond_4
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    invoke-direct {v1, v0, v14, v15}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->hasThisWheel(Ljava/util/List;D)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 12
    monitor-exit p0

    return v4

    .line 13
    :cond_5
    :try_start_2
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    const/4 v11, 0x0

    move-object v2, v12

    move-wide v3, v14

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;-><init>(DDDDZ)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/b;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b66\u4e60\u65b9\u5411\u76d8: \u65b9\u5411\u76d8\u89d2\u5ea6="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u534a\u5f84="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u89d2\u5ea6="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u8f74\u8ddd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",\u524d\u8fdb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 16
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 17
    :cond_6
    :goto_1
    monitor-exit p0

    return v4
.end method

.method public declared-synchronized clear(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMaxR(Z)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    .line 2
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    .line 5
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    const-wide v4, 0x407f900000000000L    # 505.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->r:D

    const-wide v6, 0x407f400000000000L    # 500.0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_2

    .line 6
    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;->create(DD)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getR(ZD)D
    .locals 11

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRFront:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR;->wheelRBack:Ljava/util/List;

    .line 2
    :goto_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    return-wide v1

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    .line 5
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-double v3, p2, v3

    cmpl-double v5, v3, v1

    if-ltz v5, :cond_3

    const-wide/high16 p1, 0x403e000000000000L    # 30.0

    cmpl-double p3, v3, p1

    if-lez p3, :cond_2

    .line 6
    monitor-exit p0

    return-wide v1

    .line 7
    :cond_2
    :try_start_2
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->r:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :try_start_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    cmpg-double v5, p2, v3

    if-gtz v5, :cond_4

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->r:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 10
    :cond_4
    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;

    .line 13
    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    cmpl-double v7, p2, v5

    if-ltz v7, :cond_4

    iget-wide v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->w:D

    cmpg-double v9, p2, v7

    if-gtz v9, :cond_4

    .line 14
    iget-wide v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->a:D

    sub-double/2addr p2, v5

    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->a:D

    sub-double/2addr v9, v0

    mul-double p2, p2, v9

    sub-double/2addr v7, v5

    div-double/2addr p2, v7

    add-double/2addr v0, p2

    .line 15
    iget-wide p1, v3, Lcn/mucang/android/jiakaoyi/teachingk2/autocreate/WR$MotionArg;->l:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    div-double/2addr p1, v0

    monitor-exit p0

    return-wide p1

    .line 16
    :cond_5
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
