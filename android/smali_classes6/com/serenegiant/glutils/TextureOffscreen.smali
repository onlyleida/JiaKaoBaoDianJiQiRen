.class public Lcom/serenegiant/glutils/TextureOffscreen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_ADJUST_POWER2:Z = false

.field private static final TAG:Ljava/lang/String; = "TextureOffscreen"


# instance fields
.field private final TEX_TARGET:I

.field private final TEX_UNIT:I

.field private final mAdjustPower2:Z

.field private mDepthBufferObj:I

.field private mFBOTextureName:I

.field private mFrameBufferObj:I

.field private final mHasDepthBuffer:Z

.field private mHeight:I

.field private final mResultMatrix:[F

.field private mTexHeight:I

.field private final mTexMatrix:[F

.field private mTexWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 8

    const/16 v1, 0xde1

    const v2, 0x84c0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    const/16 v1, 0xde1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    const/16 v1, 0xde1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZZ)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    .line 11
    iput v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mDepthBufferObj:I

    iput v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 12
    iput-object v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mResultMatrix:[F

    .line 14
    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    .line 15
    iput p2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    .line 16
    iput p4, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mWidth:I

    .line 17
    iput p5, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHeight:I

    .line 18
    iput-boolean p6, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHasDepthBuffer:Z

    .line 19
    iput-boolean p7, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mAdjustPower2:Z

    .line 20
    invoke-direct {p0, p4, p5}, Lcom/serenegiant/glutils/TextureOffscreen;->createFrameBuffer(II)V

    if-gez p3, :cond_0

    .line 21
    iget p3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    iget p6, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    invoke-static {p1, p2, p3, p6}, Lcom/serenegiant/glutils/TextureOffscreen;->genTexture(IIII)I

    move-result p3

    .line 22
    :cond_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/serenegiant/glutils/TextureOffscreen;->assignTexture(III)V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 8

    const/16 v1, 0xde1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 8

    const/16 v1, 0xde1

    const/4 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 8

    const/16 v1, 0xde1

    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 8

    const/16 v1, 0xde1

    const v2, 0x84c0

    const/4 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 8

    const/16 v1, 0xde1

    const v2, 0x84c0

    const/4 v3, -0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIIIIZZ)V

    return-void
.end method

.method private final createFrameBuffer(II)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget-boolean v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mAdjustPower2:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    iget p2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    if-ne p2, v2, :cond_2

    iget p2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    if-eq p2, p1, :cond_4

    .line 3
    :cond_2
    iput v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    .line 4
    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    goto :goto_2

    .line 5
    :cond_3
    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    .line 6
    iput p2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    .line 7
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHasDepthBuffer:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 8
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 9
    aget p1, v1, p2

    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mDepthBufferObj:I

    const v2, 0x8d41

    .line 10
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const p1, 0x81a5

    .line 11
    iget v3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    iget v4, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    invoke-static {v2, p1, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 12
    :cond_5
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string p1, "glGenFramebuffers"

    .line 13
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 14
    aget p1, v1, p2

    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    const v0, 0x8d40

    .line 15
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glBindFramebuffer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private static genTexture(IIII)I
    .locals 9

    const/16 v0, 0x2601

    const v1, 0x812f

    .line 1
    invoke-static {p0, p1, v0, v0, v1}, Lcom/serenegiant/glutils/GLHelper;->initTex(IIIII)I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v0, p0

    move v3, p2

    move v4, p3

    .line 2
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string p0, "glTexImage2D"

    .line 3
    invoke-static {p0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    return p1
.end method

.method private final releaseFrameBuffer()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mDepthBufferObj:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    aput v2, v1, v4

    .line 2
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 3
    iput v3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mDepthBufferObj:I

    .line 4
    :cond_0
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    if-ltz v2, :cond_1

    aput v2, v1, v4

    .line 5
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 6
    iput v3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    .line 7
    :cond_1
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    if-ltz v2, :cond_2

    aput v2, v1, v4

    .line 8
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 9
    iput v3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    :cond_2
    return-void
.end method


# virtual methods
.method public assignTexture(III)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    if-le p3, v0, :cond_1

    .line 2
    :cond_0
    iput p2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mWidth:I

    .line 3
    iput p3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHeight:I

    .line 4
    invoke-direct {p0}, Lcom/serenegiant/glutils/TextureOffscreen;->releaseFrameBuffer()V

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/serenegiant/glutils/TextureOffscreen;->createFrameBuffer(II)V

    .line 6
    :cond_1
    iput p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    .line 7
    iget p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 8
    iget p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glBindFramebuffer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    const p1, 0x8ce0

    .line 10
    iget v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string p1, "glFramebufferTexture2D"

    .line 11
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 12
    iget-boolean p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHasDepthBuffer:Z

    if-eqz p1, :cond_2

    const p1, 0x8d00

    const v1, 0x8d41

    .line 13
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mDepthBufferObj:I

    invoke-static {v0, p1, v1, v2}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const-string p1, "glFramebufferRenderbuffer"

    .line 14
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const v1, 0x8cd5

    if-ne p1, v1, :cond_3

    .line 16
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 17
    iget-object p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 18
    iget-object p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    int-to-float p2, p2

    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    aput p2, p1, v3

    const/4 p2, 0x5

    int-to-float p3, p3

    .line 19
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    aput p3, p1, p2

    return-void

    .line 20
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Framebuffer not complete, status="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bind()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    iget v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFrameBufferObj:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 4
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mWidth:I

    iget v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHeight:I

    return v0
.end method

.method public getRawTexMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    return-object v0
.end method

.method public getTexHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    return v0
.end method

.method public getTexMatrix([FI)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getTexMatrix()[F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    iget-object v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mResultMatrix:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mResultMatrix:[F

    return-object v0
.end method

.method public getTexTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    return v0
.end method

.method public getTexUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    return v0
.end method

.method public getTexWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    return v0
.end method

.method public getTexture()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mWidth:I

    return v0
.end method

.method public loadBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    if-le v1, v2, :cond_1

    .line 4
    :cond_0
    iput v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mWidth:I

    .line 5
    iput v1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mHeight:I

    .line 6
    invoke-direct {p0}, Lcom/serenegiant/glutils/TextureOffscreen;->releaseFrameBuffer()V

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/glutils/TextureOffscreen;->createFrameBuffer(II)V

    .line 8
    :cond_1
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 9
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    iget v3, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mFBOTextureName:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 11
    iget p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    iget-object p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 13
    iget-object p1, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexMatrix:[F

    int-to-float v0, v0

    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    aput v0, p1, v3

    const/4 v0, 0x5

    int-to-float v1, v1

    .line 14
    iget v2, p0, Lcom/serenegiant/glutils/TextureOffscreen;->mTexHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/glutils/TextureOffscreen;->releaseFrameBuffer()V

    return-void
.end method

.method public unbind()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_UNIT:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 3
    iget v0, p0, Lcom/serenegiant/glutils/TextureOffscreen;->TEX_TARGET:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
