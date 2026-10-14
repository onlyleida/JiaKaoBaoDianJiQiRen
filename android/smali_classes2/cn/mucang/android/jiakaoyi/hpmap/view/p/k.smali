.class public abstract Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field protected c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field public d:Z

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->b:Z

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    return-void
.end method


# virtual methods
.method protected a(FLandroid/graphics/Matrix;)F
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
.end method

.method protected c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide v2, -0x3dc8b78918000000L    # -1.0E11

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method protected h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget p2, v0, v2

    float-to-double v2, p2

    aget p2, v0, v1

    float-to-double v0, p2

    invoke-direct {p1, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object p1
.end method
