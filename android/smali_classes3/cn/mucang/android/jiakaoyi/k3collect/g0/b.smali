.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/b;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Path;

.field private s:D

.field private t:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p4, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->ARROW:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->q:Landroid/graphics/Paint;

    const-string p4, "\u70b91"

    invoke-virtual {p0, p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->q:Landroid/graphics/Paint;

    const-string p4, "\u70b92"

    invoke-virtual {p0, p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3f100000    # -7.5f

    const/high16 v3, -0x3d100000    # -120.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e900000    # -15.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 8
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private s()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3f100000    # -7.5f

    const/high16 v4, -0x3d100000    # -120.0f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3e100000    # -30.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, -0x3e900000    # -15.0f

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x427c0000    # 63.0f

    if-lt v1, v6, :cond_0

    .line 7
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v10, -0x3d900000    # -60.0f

    const/high16 v11, 0x42040000    # 33.0f

    const/4 v12, 0x0

    const/high16 v13, 0x42ba0000    # 93.0f

    const/high16 v14, -0x3dcc0000    # -45.0f

    const/high16 v15, -0x3cf90000    # -135.0f

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v10, -0x3de00000    # -40.0f

    invoke-virtual {v9, v2, v10, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 9
    :goto_0
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v10, 0x42a60000    # 83.0f

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, -0x3d6a0000    # -75.0f

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, -0x3dae0000    # -52.5f

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v7, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v7, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, -0x3dcc0000    # -45.0f

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    if-lt v1, v6, :cond_1

    .line 16
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v13, -0x3dcc0000    # -45.0f

    const/high16 v14, 0x42400000    # 48.0f

    const/high16 v15, -0x3e900000    # -15.0f

    const/high16 v16, 0x429c0000    # 78.0f

    const/high16 v17, 0x43340000    # 180.0f

    const/high16 v18, 0x43340000    # 180.0f

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5, v4, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 18
    :goto_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 21
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 22
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 23
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 24
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private t()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3f100000    # -7.5f

    const/high16 v3, -0x3d100000    # -120.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e900000    # -15.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, -0x3da40000    # -55.0f

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, -0x3d6a0000    # -75.0f

    const/high16 v5, 0x42aa0000    # 85.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, 0x42e60000    # 115.0f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private u()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e900000    # -15.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    const/high16 v3, -0x3d100000    # -120.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x425c0000    # 55.0f

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x42960000    # 75.0f

    const/high16 v5, 0x42aa0000    # 85.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, 0x42e60000    # 115.0f

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private v()V
    .locals 15

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/high16 v4, -0x3dcc0000    # -45.0f

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v7, -0x3dcc0000    # -45.0f

    const/4 v8, 0x0

    const/high16 v9, 0x42340000    # 45.0f

    const/4 v10, 0x0

    const/high16 v11, -0x3ccc0000    # -180.0f

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 4
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3d240000    # -110.0f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3d600000    # -80.0f

    const/high16 v7, 0x432f0000    # 175.0f

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3db80000    # -50.0f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3d740000    # -70.0f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, -0x3e600000    # -20.0f

    if-lt v0, v2, :cond_1

    .line 10
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v8, -0x3d740000    # -70.0f

    const/4 v9, 0x0

    const/high16 v10, -0x3e600000    # -20.0f

    const/high16 v11, 0x42480000    # 50.0f

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v3, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3da40000    # -55.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3d2e0000    # -105.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3d6a0000    # -75.0f

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e900000    # -15.0f

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x43430000    # 195.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 10
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4068600000000000L    # 195.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private x()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3da40000    # -55.0f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, -0x3d2e0000    # -105.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, -0x3d6a0000    # -75.0f

    const/high16 v4, -0x3e380000    # -25.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3e900000    # -15.0f

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v5, -0x3d900000    # -60.0f

    const/16 v6, 0x15

    const/high16 v7, 0x42960000    # 75.0f

    if-lt v1, v6, :cond_0

    .line 9
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, -0x3d900000    # -60.0f

    const/high16 v10, 0x42340000    # 45.0f

    const/4 v11, 0x0

    const/high16 v12, 0x42ce0000    # 103.0f

    const/high16 v13, -0x3dcc0000    # -45.0f

    const/high16 v14, -0x3cf90000    # -135.0f

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, -0x3de00000    # -40.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v8, v9, v10, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 11
    :goto_0
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v9, 0x42be0000    # 95.0f

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3dae0000    # -52.5f

    const/high16 v8, 0x43430000    # 195.0f

    invoke-virtual {v3, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v5, -0x3e100000    # -30.0f

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v10, -0x3dcc0000    # -45.0f

    invoke-virtual {v3, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v3, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    if-lt v1, v6, :cond_1

    .line 17
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v12, -0x3dcc0000    # -45.0f

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, -0x3e900000    # -15.0f

    const/high16 v15, 0x42b40000    # 90.0f

    const/high16 v16, 0x43340000    # 180.0f

    const/high16 v17, 0x43340000    # 180.0f

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v4, v2, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 19
    :goto_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 22
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v3, 0x4068600000000000L    # 195.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 23
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 24
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 25
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, -0x3de00000    # -40.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, -0x3d740000    # -70.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, -0x3cea0000    # -150.0f

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v6, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3f100000    # -7.5f

    const/high16 v7, -0x3d900000    # -60.0f

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3da40000    # -55.0f

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v4, -0x3d6a0000    # -75.0f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, -0x3e900000    # -15.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 17
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4062c00000000000L    # 150.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x425c0000    # 55.0f

    const/high16 v2, -0x3da40000    # -55.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, -0x3d2e0000    # -105.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x42960000    # 75.0f

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/high16 v2, 0x43430000    # 195.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 10
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    const-wide v2, 0x4068600000000000L    # 195.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    const v3, -0xb350b0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s:D

    .line 8
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v3, v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L    # 90.0

    sub-double/2addr v3, v5

    double-to-float v0, v3

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->d:I

    .line 15
    sget-object v5, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->Companion:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType$a;

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType$a;->a(I)Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    sget-object v5, Lcn/mucang/android/jiakaoyi/k3collect/g0/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 17
    :pswitch_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->y()V

    goto :goto_1

    .line 18
    :pswitch_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->x()V

    goto :goto_1

    .line 19
    :pswitch_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->s()V

    goto :goto_1

    .line 20
    :pswitch_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->u()V

    goto :goto_1

    .line 21
    :pswitch_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t()V

    goto :goto_1

    .line 22
    :pswitch_5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->v()V

    goto :goto_1

    .line 23
    :pswitch_6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->z()V

    goto :goto_1

    .line 24
    :pswitch_7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->w()V

    goto :goto_1

    .line 25
    :pswitch_8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r()V

    .line 26
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float v0, v0

    sget v5, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, v0, v5}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 27
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    neg-double v3, v3

    double-to-float v0, v3

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 30
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    neg-float v0, v0

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object v0

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne v0, v3, :cond_3

    .line 33
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v0, :cond_3

    .line 34
    invoke-direct {p0, p1, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v2, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v2, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    const-wide v4, 0x42374876e8000000L    # 1.0E11

    .line 3
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v6, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v4, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    cmpl-double p1, v4, p2

    if-lez p1, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v2

    if-nez p3, :cond_3

    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 6
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v4, v5, v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->q:Landroid/graphics/Paint;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->o:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->r:Landroid/graphics/Path;

    .line 7
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/b;->t:Landroid/graphics/Matrix;

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x41c80000    # 25.0f

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
