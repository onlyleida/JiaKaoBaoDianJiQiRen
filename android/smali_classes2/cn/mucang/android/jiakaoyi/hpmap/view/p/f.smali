.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;
    }
.end annotation


# instance fields
.field public final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:F

.field protected final r:Landroid/graphics/Paint;

.field protected final s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;FFFFFFLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->l:F

    .line 5
    iput p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->m:F

    .line 6
    iput p5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->n:F

    .line 7
    iput p6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->o:F

    .line 8
    iput p7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->p:F

    .line 9
    iput p8, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->q:F

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->l:F

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v2

    .line 3
    iget v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->m:F

    invoke-virtual {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v5, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->b:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    iget-boolean v8, v6, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->c:Z

    if-eqz v8, :cond_0

    .line 10
    iget v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->d:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v6

    .line 11
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v6

    .line 12
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    iget v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->e:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v8

    .line 13
    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v8

    .line 14
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/DashPathEffect;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v6, v11, v12

    aput v8, v11, v7

    const/4 v6, 0x0

    invoke-direct {v10, v11, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 15
    :cond_0
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->a:F

    invoke-virtual {v0, v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v1

    .line 16
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v8, v2

    sub-double/2addr v6, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v1, v10

    float-to-double v11, v11

    sub-double/2addr v6, v11

    double-to-float v6, v6

    .line 18
    iget-wide v13, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v13, v8

    sub-double/2addr v13, v11

    double-to-float v4, v13

    .line 19
    new-instance v14, Landroid/graphics/RectF;

    mul-float v2, v2, v10

    add-float v7, v6, v2

    add-float/2addr v7, v1

    add-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-direct {v14, v6, v4, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->n:F

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentRotateDegrees()D

    move-result-wide v6

    double-to-float v4, v6

    add-float v15, v2, v4

    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->o:F

    const/16 v17, 0x0

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 21
    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v8, v3

    sub-double/2addr v6, v8

    sub-double/2addr v6, v11

    double-to-float v2, v6

    .line 22
    iget-wide v4, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, v8

    sub-double/2addr v4, v11

    double-to-float v4, v4

    .line 23
    new-instance v12, Landroid/graphics/RectF;

    mul-float v3, v3, v10

    add-float v5, v2, v3

    add-float/2addr v5, v1

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-direct {v12, v2, v4, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->p:F

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentRotateDegrees()D

    move-result-wide v2

    double-to-float v2, v2

    add-float v13, v1, v2

    iget v14, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->q:F

    const/4 v15, 0x0

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->r:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
