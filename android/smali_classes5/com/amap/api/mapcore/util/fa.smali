.class public Lcom/amap/api/mapcore/util/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/ShortBuffer;

.field c:[F

.field d:[S

.field private e:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fa;->c:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fa;->d:[S

    .line 4
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fa;->b:Ljava/nio/ShortBuffer;

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fa;->d:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fa;->b:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fa;->c:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fa;->a:Ljava/nio/FloatBuffer;

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/fa;->c:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fa;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public b(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fa;->e:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fa;->e:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/fa;->e:Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    return-void
.end method
