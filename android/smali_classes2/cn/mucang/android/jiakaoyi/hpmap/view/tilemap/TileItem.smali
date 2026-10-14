.class public Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;
    }
.end annotation


# instance fields
.field public final col:I

.field public final dst:Landroid/graphics/RectF;

.field public final name:Ljava/lang/String;

.field private final rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public final row:I

.field public final size:I

.field public final tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(IIIIILcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->row:I

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->col:I

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->size:I

    .line 5
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->name:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    .line 7
    iget p6, p6, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    mul-int p5, p5, p6

    int-to-float p5, p5

    const/high16 p6, 0x41200000    # 10.0f

    div-float/2addr p5, p6

    sub-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p5

    const/high16 p4, 0x40000000    # 2.0f

    div-float p4, p5, p4

    sub-float/2addr p2, p4

    .line 8
    iput p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->x:F

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p1, p1, p5

    sub-float/2addr p1, p4

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->y:F

    .line 10
    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double p6, p2

    float-to-double v0, p1

    invoke-direct {p4, p6, p7, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance p6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v0, p2

    add-float p7, p1, p5

    float-to-double v2, p7

    invoke-direct {p6, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance p7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-float v0, p2, p5

    float-to-double v0, v0

    add-float v2, p1, p5

    float-to-double v2, v2

    invoke-direct {p7, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-float v1, p2, p5

    float-to-double v1, v1

    float-to-double v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {p3, p4, p6, p7, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 11
    new-instance p3, Landroid/graphics/RectF;

    add-float p4, p2, p5

    add-float/2addr p5, p1

    invoke-direct {p3, p2, p1, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->dst:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->row:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->row:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->col:I

    iget v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->col:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->tileScale:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public isVisible(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method
