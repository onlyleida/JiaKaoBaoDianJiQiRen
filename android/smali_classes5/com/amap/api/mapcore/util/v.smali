.class public Lcom/amap/api/mapcore/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:I = 0xc8


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/amap/api/maps/model/BitmapDescriptor;

.field d:[F

.field private e:Ljava/nio/FloatBuffer;

.field private f:Ljava/nio/ShortBuffer;

.field private g:I

.field h:I

.field i:I

.field private j:Lcom/amap/api/mapcore/util/h2$a;

.field private k:Lcom/amap/api/mapcore/util/h2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([FLcom/amap/api/mapcore/util/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/v;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/v;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:[F

    .line 5
    iput p2, p0, Lcom/amap/api/mapcore/util/v;->g:I

    .line 6
    iput p2, p0, Lcom/amap/api/mapcore/util/v;->h:I

    .line 7
    iput p2, p0, Lcom/amap/api/mapcore/util/v;->i:I

    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->d:[F

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [I

    .line 2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    aget v0, v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const v0, 0x84c0

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    .line 7
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 8
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 9
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 10
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 11
    invoke-static {v3, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 12
    iget p1, p0, Lcom/amap/api/mapcore/util/v;->g:I

    if-eqz p1, :cond_3

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v;->b:Z

    :cond_3
    return-void
.end method

.method public static declared-synchronized e(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/amap/api/mapcore/util/v;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "amap"

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": glError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f([F)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 2
    array-length v0, p1

    sget v1, Lcom/amap/api/mapcore/util/v;->l:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    sget v2, Lcom/amap/api/mapcore/util/v;->l:I

    const/4 v3, 0x3

    if-ge v1, v2, :cond_4

    .line 7
    array-length v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget v6, p1, v4

    .line 8
    rem-int/lit8 v7, v5, 0x6

    if-ne v7, v3, :cond_2

    .line 9
    iget-object v6, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 10
    :cond_2
    iget-object v7, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    if-nez p1, :cond_6

    .line 13
    sget p1, Lcom/amap/api/mapcore/util/v;->l:I

    mul-int/lit8 p1, p1, 0x6

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    .line 16
    sget p1, Lcom/amap/api/mapcore/util/v;->l:I

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [S

    .line 17
    :goto_3
    sget v1, Lcom/amap/api/mapcore/util/v;->l:I

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v2, v1, 0x0

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v5, v4, 0x0

    int-to-short v5, v5

    .line 18
    aput-short v5, p1, v2

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-short v6, v6

    .line 19
    aput-short v6, p1, v2

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v6, v4, 0x2

    int-to-short v6, v6

    .line 20
    aput-short v6, p1, v2

    add-int/lit8 v2, v1, 0x3

    .line 21
    aput-short v5, p1, v2

    add-int/lit8 v2, v1, 0x4

    .line 22
    aput-short v6, p1, v2

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v4, v3

    int-to-short v2, v4

    .line 23
    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    :cond_6
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/v;->a:Z

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 3
    aget v2, v1, v2

    iput v2, p0, Lcom/amap/api/mapcore/util/v;->h:I

    const/4 v3, 0x1

    .line 4
    aget v1, v1, v3

    iput v1, p0, Lcom/amap/api/mapcore/util/v;->i:I

    const v1, 0x8892

    .line 5
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 7
    iget v1, p0, Lcom/amap/api/mapcore/util/v;->i:I

    const v2, 0x8893

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 8
    sget v1, Lcom/amap/api/mapcore/util/v;->l:I

    mul-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    invoke-static {v2, v1, v0, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v0, "bindVbo"

    .line 9
    invoke-static {v0}, Lcom/amap/api/mapcore/util/v;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->k:Lcom/amap/api/mapcore/util/h2;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/h2;->b(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/h2$a;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    const/4 v1, 0x1

    .line 3
    sput v1, Lcom/amap/api/mapcore/util/v;->l:I

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->k:Lcom/amap/api/mapcore/util/h2;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/h2;->b(I)Lcom/amap/api/mapcore/util/g2;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/h2$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:[F

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/v;->a:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/v;->f([F)V

    :cond_0
    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->k:Lcom/amap/api/mapcore/util/h2;

    return-void
.end method

.method public d(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->c:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public g([F[F[FFFFFI)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/v;->b(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g2;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v;->l()V

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v;->k()V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/g2;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget v0, v0, Lcom/amap/api/mapcore/util/h2$a;->k:I

    invoke-static {v0, p4, p5, p6, p7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 10
    iget-object p4, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p4, p4, Lcom/amap/api/mapcore/util/h2$a;->j:I

    const/4 p5, 0x0

    invoke-static {p4, p8, p3, p5}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const/16 p3, 0xb71

    .line 11
    invoke-static {p3}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 p3, 0xbe2

    .line 12
    invoke-static {p3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p3, 0x302

    const/16 p4, 0x303

    .line 13
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p3, p3, p3, p3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const p3, 0x84c0

    .line 15
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 16
    iget p3, p0, Lcom/amap/api/mapcore/util/v;->g:I

    const/16 p4, 0xde1

    invoke-static {p4, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 17
    iget-object p3, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p3, p3, Lcom/amap/api/mapcore/util/h2$a;->g:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 18
    iget p3, p0, Lcom/amap/api/mapcore/util/v;->h:I

    const p6, 0x8892

    invoke-static {p6, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 19
    iget-object p3, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget v0, p3, Lcom/amap/api/mapcore/util/h2$a;->g:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 20
    iget-object p3, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p3, p3, Lcom/amap/api/mapcore/util/h2$a;->i:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 21
    iget-object p3, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget v0, p3, Lcom/amap/api/mapcore/util/h2$a;->i:I

    const/4 v1, 0x2

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 22
    iget-object p3, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p3, p3, Lcom/amap/api/mapcore/util/h2$a;->h:I

    const/4 p7, 0x1

    invoke-static {p3, p7, p5, p1, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 23
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$a;->l:I

    invoke-static {p1, p7, p5, p2, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x8893

    .line 24
    iget p2, p0, Lcom/amap/api/mapcore/util/v;->i:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 p1, 0x4

    mul-int/lit8 p8, p8, 0x6

    const/16 p2, 0x1403

    .line 25
    invoke-static {p1, p8, p2, p5}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 26
    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    invoke-static {p6, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 28
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$a;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 29
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v;->j:Lcom/amap/api/mapcore/util/h2$a;

    iget p1, p1, Lcom/amap/api/mapcore/util/h2$a;->i:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 30
    invoke-static {p5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v;->a:Z

    return v0
.end method

.method public i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->c:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_2
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 7
    iget v3, p0, Lcom/amap/api/mapcore/util/v;->h:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/amap/api/mapcore/util/v;->i:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 8
    iget v0, p0, Lcom/amap/api/mapcore/util/v;->g:I

    if-eqz v0, :cond_3

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 9
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 10
    :cond_3
    iput v4, p0, Lcom/amap/api/mapcore/util/v;->h:I

    .line 11
    iput v4, p0, Lcom/amap/api/mapcore/util/v;->i:I

    .line 12
    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->d:[F

    .line 13
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/v;->a:Z

    .line 14
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/v;->b:Z

    .line 15
    iput v4, p0, Lcom/amap/api/mapcore/util/v;->h:I

    .line 16
    iput v4, p0, Lcom/amap/api/mapcore/util/v;->i:I

    .line 17
    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->k:Lcom/amap/api/mapcore/util/h2;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->k:Lcom/amap/api/mapcore/util/h2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
