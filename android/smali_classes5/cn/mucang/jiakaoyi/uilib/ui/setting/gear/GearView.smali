.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private b:Landroid/graphics/Paint;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v8, v2

    if-nez v8, :cond_3

    return-void

    .line 3
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x43340000    # 180.0f

    .line 5
    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget v3, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-virtual {v9, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 6
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    const/high16 v3, 0x40d00000    # 6.5f

    invoke-virtual {v9, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 7
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    neg-float v1, v1

    iget v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->f:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    neg-float v2, v2

    iget v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->g:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v10, 0x0

    .line 8
    iput v10, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    const/4 v11, 0x2

    new-array v12, v11, [F

    .line 9
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v14, -0xffff01

    const/high16 v2, -0x10000

    const/4 v15, 0x1

    if-eqz v1, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v6, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    const/high16 v5, -0x1000000

    if-ne v1, v6, :cond_6

    .line 11
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 12
    :cond_6
    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_7

    .line 13
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const v2, -0xe644fd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 14
    :cond_7
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_8

    .line 15
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 16
    :cond_8
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_9

    .line 17
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const v2, -0x777800

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 18
    :cond_9
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_a

    .line 19
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const v2, -0xff7778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 20
    :cond_a
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_b

    .line 21
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 22
    :cond_b
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_c

    .line 23
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const v2, -0xff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 24
    :cond_c
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_d

    .line 25
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    :cond_d
    :goto_3
    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    aput v1, v12, v10

    .line 27
    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    aput v1, v12, v15

    .line 28
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 29
    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b(I)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_e

    .line 30
    iget v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    aget v3, v12, v10

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v3, v4

    aget v4, v12, v15

    const/high16 v14, 0x40f00000    # 7.5f

    add-float/2addr v4, v14

    iget-object v14, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    aget v1, v12, v10

    aget v3, v12, v15

    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 32
    :cond_e
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v16, v6

    .line 34
    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v5

    aput v4, v12, v10

    .line 35
    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    aput v3, v12, v15

    .line 36
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 37
    aget v3, v12, v10

    aget v4, v12, v15

    iget-object v5, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v6, v16

    const/high16 v5, -0x1000000

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    .line 38
    :goto_5
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    if-ge v1, v2, :cond_10

    .line 39
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v2

    .line 40
    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    aput v2, v12, v10

    aput v3, v12, v15

    .line 41
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 42
    aget v2, v12, v10

    .line 43
    aget v3, v12, v15

    .line 44
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    add-int/lit8 v14, v1, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v4

    .line 45
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    aput v1, v12, v10

    aput v4, v12, v15

    .line 46
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 47
    aget v4, v12, v10

    .line 48
    aget v5, v12, v15

    .line 49
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move-object v15, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v14

    move-object v6, v15

    const/4 v15, 0x1

    goto :goto_5

    :cond_10
    move-object v15, v6

    .line 50
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 51
    iget-object v1, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_12

    .line 52
    iget-object v1, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v1

    .line 53
    iget-object v2, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 54
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 55
    aget v2, v12, v10

    .line 56
    aget v3, v12, v1

    .line 57
    iget-object v4, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v4

    .line 58
    iget-object v5, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v5

    aput v4, v12, v10

    aput v5, v12, v1

    .line 59
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 60
    aget v4, v12, v10

    .line 61
    aget v5, v12, v1

    .line 62
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_11
    move-object v15, v6

    .line 63
    :cond_12
    :goto_6
    iget-object v1, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    iget-object v1, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget v2, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->startRoll:F

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v1

    .line 65
    iget v2, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->startRoll:F

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 66
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 67
    aget v2, v12, v10

    .line 68
    aget v3, v12, v1

    .line 69
    iget-object v4, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget v5, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v4

    .line 70
    iget v5, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    aput v4, v12, v10

    aput v5, v12, v1

    .line 71
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 72
    aget v4, v12, v10

    .line 73
    aget v5, v12, v1

    .line 74
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 76
    :cond_13
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v1

    const/high16 v11, 0x41f00000    # 30.0f

    if-eqz v1, :cond_14

    .line 78
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float/2addr v1, v11

    .line 79
    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o()F

    move-result v3

    add-float/2addr v2, v3

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 80
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 81
    aget v2, v12, v10

    .line 82
    aget v3, v12, v1

    .line 83
    iget v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v4, v11

    .line 84
    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o()F

    move-result v6

    add-float/2addr v5, v6

    aput v4, v12, v10

    aput v5, v12, v1

    .line 85
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 86
    aget v4, v12, v10

    .line 87
    aget v5, v12, v1

    .line 88
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float/2addr v1, v11

    .line 90
    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j()F

    move-result v3

    sub-float/2addr v2, v3

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 91
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 92
    aget v2, v12, v10

    .line 93
    aget v3, v12, v1

    .line 94
    iget v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v4, v11

    .line 95
    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j()F

    move-result v6

    sub-float/2addr v5, v6

    aput v4, v12, v10

    aput v5, v12, v1

    .line 96
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 97
    aget v4, v12, v10

    .line 98
    aget v5, v12, v1

    .line 99
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 100
    :cond_14
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float/2addr v1, v11

    .line 101
    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 102
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 103
    aget v2, v12, v10

    .line 104
    aget v3, v12, v1

    .line 105
    iget v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v4, v11

    .line 106
    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    aput v4, v12, v10

    aput v5, v12, v1

    .line 107
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 108
    aget v4, v12, v10

    .line 109
    aget v5, v12, v1

    .line 110
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 112
    iget v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    add-float/2addr v2, v11

    aput v1, v12, v10

    const/4 v1, 0x1

    aput v2, v12, v1

    .line 113
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 114
    aget v2, v12, v10

    .line 115
    aget v3, v12, v1

    .line 116
    iget v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 117
    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v5, v11

    aput v4, v12, v10

    aput v5, v12, v1

    .line 118
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 119
    aget v4, v12, v10

    .line 120
    aget v5, v12, v1

    .line 121
    iget-object v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 122
    :goto_7
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v2

    aput v2, v12, v10

    .line 124
    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v12, v2

    .line 125
    invoke-virtual {v9, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 126
    aget v1, v12, v10

    aget v2, v12, v2

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    and-int/2addr p1, v1

    .line 3
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto/16 :goto_7

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_3

    .line 5
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x2

    .line 6
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    :goto_1
    move v2, v1

    goto/16 :goto_7

    .line 7
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_5

    .line 8
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    or-int/lit8 p1, p1, 0x4

    .line 9
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto :goto_1

    .line 10
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_7

    .line 11
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    or-int/lit8 p1, p1, 0x8

    .line 12
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto :goto_1

    .line 13
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_9

    .line 14
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    or-int/lit8 p1, p1, 0x10

    .line 15
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto :goto_1

    .line 16
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_b

    .line 17
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    or-int/lit8 p1, p1, 0x20

    .line 18
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto :goto_1

    .line 19
    :cond_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne p1, v0, :cond_d

    .line 20
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    or-int/lit8 p1, p1, 0x40

    .line 21
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e:I

    goto :goto_1

    :cond_d
    :goto_7
    return v2
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->f()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->f:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->g:I

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->f()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public e(DD)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v1, p1

    .line 2
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, p3

    mul-double v1, v1, v1

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->c()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setChoose(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->a:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
