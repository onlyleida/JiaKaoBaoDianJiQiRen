.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;
    }
.end annotation


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Bitmap;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IILcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;",
            ">;II",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->i:Ljava/util/List;

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->k:I

    .line 4
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->l:I

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->n:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__bg:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->m:I

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->scheck__bg_auto:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->m:I

    .line 9
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->o:Landroid/graphics/Rect;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->p:Landroid/graphics/Rect;

    return-void
.end method

.method private i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->a:I

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->f:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 3
    iget v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->g:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 4
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->j:Landroid/graphics/RectF;

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->h:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->i:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->j:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "TAG"

    const-string p2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 6
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private j(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->n:Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a$a;->a(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->i:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->m:I

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->p:Landroid/graphics/Rect;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->k:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->l:I

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->p:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;

    .line 12
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->b:Z

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 14
    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->c:I

    int-to-float v3, v3

    iget v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->f:I

    int-to-float v4, v4

    iget v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->h:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iget v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->g:I

    int-to-float v5, v5

    iget v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;->i:I

    int-to-float v7, v7

    mul-float v7, v7, v6

    add-float/2addr v5, v7

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 15
    invoke-direct {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-direct {p0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/f1/c;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
