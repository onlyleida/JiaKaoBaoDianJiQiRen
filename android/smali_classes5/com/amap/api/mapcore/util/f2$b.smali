.class public Lcom/amap/api/mapcore/util/f2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/autonavi/amap/mapcore/IPoint;

.field public f:I

.field public g:Z

.field public h:Ljava/nio/FloatBuffer;

.field public i:Landroid/graphics/Bitmap;

.field public j:Lcom/amap/api/mapcore/util/u3$a;

.field public k:I

.field private l:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private m:Lcom/amap/api/mapcore/util/ab;

.field private n:Lcom/amap/api/mapcore/util/s3;


# direct methods
.method public constructor <init>(IIIILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Lcom/amap/api/mapcore/util/ab;Lcom/amap/api/mapcore/util/s3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->f:I

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    .line 5
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->j:Lcom/amap/api/mapcore/util/u3$a;

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    .line 8
    iput p1, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    .line 9
    iput p2, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    .line 10
    iput p3, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    .line 11
    iput p4, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    .line 12
    iput-object p5, p0, Lcom/amap/api/mapcore/util/f2$b;->l:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 13
    iput-object p6, p0, Lcom/amap/api/mapcore/util/f2$b;->m:Lcom/amap/api/mapcore/util/ab;

    .line 14
    iput-object p7, p0, Lcom/amap/api/mapcore/util/f2$b;->n:Lcom/amap/api/mapcore/util/s3;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/f2$b;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->f:I

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    .line 19
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    .line 20
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->j:Lcom/amap/api/mapcore/util/u3$a;

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    .line 22
    iget v1, p1, Lcom/amap/api/mapcore/util/f2$b;->a:I

    iput v1, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    .line 23
    iget v1, p1, Lcom/amap/api/mapcore/util/f2$b;->b:I

    iput v1, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    .line 24
    iget v1, p1, Lcom/amap/api/mapcore/util/f2$b;->c:I

    iput v1, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    .line 25
    iget v1, p1, Lcom/amap/api/mapcore/util/f2$b;->d:I

    iput v1, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    .line 26
    iget-object v1, p1, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 27
    iget-object v1, p1, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    .line 28
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    .line 29
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f2$b;->m:Lcom/amap/api/mapcore/util/ab;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f2$b;->m:Lcom/amap/api/mapcore/util/ab;

    .line 30
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f2$b;->l:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f2$b;->l:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 31
    iget-object p1, p1, Lcom/amap/api/mapcore/util/f2$b;->n:Lcom/amap/api/mapcore/util/s3;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2$b;->n:Lcom/amap/api/mapcore/util/s3;

    return-void
.end method


# virtual methods
.method public b()Lcom/amap/api/mapcore/util/f2$b;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/f2$b;

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    iput v1, v0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    iput v1, v0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    .line 4
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    iput v1, v0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    .line 5
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    iput v1, v0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f2$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 10
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore/util/f2$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/f2$b;-><init>(Lcom/amap/api/mapcore/util/f2$b;)V

    return-object v0
.end method

.method public declared-synchronized c(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_1
    iput-object v2, p0, Lcom/amap/api/mapcore/util/f2$b;->j:Lcom/amap/api/mapcore/util/u3$a;

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2$b;->l:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v2, "TileOverlayDelegateImp"

    const-string v3, "setBitmap"

    .line 5
    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    iget p1, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    if-ge p1, v0, :cond_1

    add-int/2addr p1, v1

    .line 8
    iput p1, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2$b;->n:Lcom/amap/api/mapcore/util/s3;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v1, p0}, Lcom/amap/api/mapcore/util/u3;->h(ZLcom/amap/api/mapcore/util/f2$b;)V

    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    if-ge p1, v0, :cond_1

    add-int/2addr p1, v1

    .line 12
    iput p1, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f2$b;->n:Lcom/amap/api/mapcore/util/s3;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1, v1, p0}, Lcom/amap/api/mapcore/util/u3;->h(ZLcom/amap/api/mapcore/util/f2$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/f2$b;->b()Lcom/amap/api/mapcore/util/f2$b;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/u3;->c(Lcom/amap/api/mapcore/util/f2$b;)V

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f2$b;->m:Lcom/amap/api/mapcore/util/ab;

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->f:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ab;->c(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/f2$b;->g:Z

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->f:I

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->i:Landroid/graphics/Bitmap;

    .line 9
    iget-object v2, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->h:Ljava/nio/FloatBuffer;

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/f2$b;->j:Lcom/amap/api/mapcore/util/u3$a;

    .line 13
    iput v0, p0, Lcom/amap/api/mapcore/util/f2$b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/amap/api/mapcore/util/f2$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore/util/f2$b;

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/util/f2$b;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    iget v3, p1, Lcom/amap/api/mapcore/util/f2$b;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    iget v3, p1, Lcom/amap/api/mapcore/util/f2$b;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    iget p1, p1, Lcom/amap/api/mapcore/util/f2$b;->d:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v2, p0, Lcom/amap/api/mapcore/util/f2$b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p0, Lcom/amap/api/mapcore/util/f2$b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lcom/amap/api/mapcore/util/f2$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
