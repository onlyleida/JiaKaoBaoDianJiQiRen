.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/view/p/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;)V

    return-void
.end method


# virtual methods
.method protected i(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->g:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    .line 5
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p2

    .line 6
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p2, v2, v0

    const/4 p2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
