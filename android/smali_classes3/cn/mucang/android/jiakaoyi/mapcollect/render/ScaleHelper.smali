.class public Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

.field private d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

.field private e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

.field private f:J

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Landroidx/lifecycle/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->a:F

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->Out:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->i:Z

    .line 7
    const-class p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/render/d;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setClickViewListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->In:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->IsInning:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->i:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->h:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->i:Z

    :goto_0
    return-void
.end method

.method private f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v1

    float-to-double v5, p3

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr p1, v3

    mul-double p1, p1, v5

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v5

    mul-double v5, v5, v3

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v1, v2, v5, v6, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    .line 2
    iget v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->a:F

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-eqz v3, :cond_2

    .line 4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->g:F

    div-float/2addr v2, v5

    .line 5
    iget v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->h:F

    mul-float v4, v4, v2

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->h:F

    div-float/2addr v2, v3

    .line 7
    :cond_0
    iget v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->a:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    .line 9
    :cond_2
    :goto_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v5

    int-to-double v5, v5

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v3, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v3

    mul-float v3, v3, v2

    move-object/from16 v2, p1

    .line 10
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_d

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-eqz v9, :cond_d

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 12
    :cond_3
    iget-boolean v10, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->b:Z

    const v11, 0x44bb8000    # 1500.0f

    const-wide/16 v12, 0x5dc

    if-eqz v10, :cond_7

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 14
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    cmp-long v4, v5, v7

    if-gtz v4, :cond_4

    .line 15
    iput-wide v14, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    .line 16
    :cond_4
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    sub-long v6, v14, v4

    cmp-long v8, v6, v12

    if-ltz v8, :cond_5

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    return-void

    .line 18
    :cond_5
    sget-object v6, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->IsOuting:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    sub-long/2addr v14, v4

    long-to-float v4, v14

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v11

    sub-float/2addr v1, v3

    mul-float v1, v1, v4

    add-float/2addr v1, v3

    .line 19
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    if-nez v3, :cond_6

    goto/16 :goto_4

    .line 20
    :cond_6
    invoke-direct {v0, v9, v2, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    goto/16 :goto_4

    .line 21
    :cond_7
    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->a:Z

    if-eqz v4, :cond_c

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 23
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    cmp-long v6, v14, v7

    if-gtz v6, :cond_8

    .line 24
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    .line 25
    :cond_8
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    sub-long v14, v4, v6

    cmp-long v8, v14, v12

    if-ltz v8, :cond_a

    .line 26
    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->In:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 27
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget-boolean v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, v9

    .line 28
    :goto_1
    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_5

    .line 29
    :cond_a
    sget-object v8, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->IsInning:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v11

    sub-float/2addr v3, v1

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    .line 30
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    if-nez v3, :cond_b

    goto :goto_2

    .line 31
    :cond_b
    invoke-direct {v0, v9, v2, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 32
    :goto_2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    iget v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->d:F

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    goto :goto_5

    .line 33
    :cond_c
    sget-object v3, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->Out:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 34
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    .line 35
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    goto :goto_4

    .line 36
    :cond_d
    :goto_3
    sget-object v4, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;->Out:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->e:Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper$State;

    .line 37
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->f:J

    .line 38
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->g:J

    const v4, 0x3dcccccd    # 0.1f

    sub-float/2addr v3, v4

    .line 39
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 40
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v3

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    cmpl-double v7, v3, v5

    if-gez v7, :cond_e

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->c:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_f

    :cond_e
    float-to-double v3, v1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    add-double/2addr v3, v5

    double-to-float v1, v3

    :cond_f
    :goto_4
    const v3, 0x47c35000    # 100000.0f

    .line 41
    :goto_5
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->i:Z

    if-nez v4, :cond_11

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->h:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_11

    .line 43
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const v1, 0x47c35000    # 100000.0f

    sub-float v1, v3, v1

    .line 44
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_10

    .line 45
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->t(FFF)V

    .line 46
    :cond_10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v4

    invoke-virtual {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 47
    :cond_11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method
