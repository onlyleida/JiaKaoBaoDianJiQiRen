.class public Lcom/serenegiant/glutils/GLDrawer2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/glutils/IDrawer2dES2;


# static fields
.field private static final FLOAT_SZ:I = 0x4

.field private static final TEXCOORD:[F

.field private static final VERTICES:[F


# instance fields
.field private final VERTEX_NUM:I

.field private final VERTEX_SZ:I

.field private hProgram:I

.field private final mMvpMatrix:[F

.field private final mTexTarget:I

.field maPositionLoc:I

.field maTextureCoordLoc:I

.field muMVPMatrixLoc:I

.field muTexMatrixLoc:I

.field private final pTexCoord:Ljava/nio/FloatBuffer;

.field private final pVertex:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/serenegiant/glutils/GLDrawer2D;->VERTICES:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/serenegiant/glutils/GLDrawer2D;->TEXCOORD:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTICES:[F

    sget-object v1, Lcom/serenegiant/glutils/GLDrawer2D;->TEXCOORD:[F

    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>([F[FZ)V

    return-void
.end method

.method public constructor <init>([F[FZ)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length v3, p2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTEX_NUM:I

    mul-int/lit8 v2, v2, 0x2

    .line 5
    iput v2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTEX_SZ:I

    if-eqz p3, :cond_2

    const v3, 0x8d65

    goto :goto_2

    :cond_2
    const/16 v3, 0xde1

    .line 6
    :goto_2
    iput v3, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mTexTarget:I

    mul-int/lit8 v3, v2, 0x4

    .line 7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/serenegiant/glutils/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    .line 9
    invoke-virtual {v3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    mul-int/lit8 v2, v2, 0x4

    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/glutils/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    .line 13
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 14
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    const-string p1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eqz p3, :cond_3

    const-string p2, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 15
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    goto :goto_3

    :cond_3
    const-string p2, "#version 100\nprecision mediump float;\nuniform sampler2D sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 16
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    .line 17
    :goto_3
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 18
    invoke-direct {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->init()V

    return-void
.end method

.method private init()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maPositionLoc:I

    .line 3
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maTextureCoordLoc:I

    .line 4
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->muMVPMatrixLoc:I

    .line 5
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    const-string v2, "uTexMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->muTexMatrixLoc:I

    .line 6
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->muMVPMatrixLoc:I

    iget-object v2, v0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 7
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->muTexMatrixLoc:I

    iget-object v2, v0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 8
    iget v5, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maPositionLoc:I

    iget v9, v0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTEX_SZ:I

    iget-object v10, v0, Lcom/serenegiant/glutils/GLDrawer2D;->pVertex:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget v11, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maTextureCoordLoc:I

    iget v15, v0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTEX_SZ:I

    iget-object v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->pTexCoord:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 10
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 11
    iget v1, v0, Lcom/serenegiant/glutils/GLDrawer2D;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public deleteTex(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->deleteTex(I)V

    return-void
.end method

.method public declared-synchronized draw(I[FI)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget v2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->muTexMatrixLoc:I

    invoke-static {v2, v0, v1, p2, p3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 4
    :cond_1
    iget p2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->muMVPMatrixLoc:I

    iget-object p3, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    invoke-static {p2, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p2, 0x84c0

    .line 5
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    iget p2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mTexTarget:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x5

    .line 7
    iget p2, p0, Lcom/serenegiant/glutils/GLDrawer2D;->VERTEX_NUM:I

    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 8
    iget p1, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mTexTarget:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public draw(Lcom/serenegiant/glutils/ITexture;)V
    .locals 2

    .line 11
    invoke-interface {p1}, Lcom/serenegiant/glutils/ITexture;->getTexture()I

    move-result v0

    invoke-interface {p1}, Lcom/serenegiant/glutils/ITexture;->getTexMatrix()[F

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    return-void
.end method

.method public draw(Lcom/serenegiant/glutils/TextureOffscreen;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/serenegiant/glutils/GLDrawer2D;->draw(I[FI)V

    return-void
.end method

.method public getMvpMatrix([FI)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getMvpMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    return-object v0
.end method

.method public glGetAttribLocation(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetUniformLocation(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glUseProgram()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public initTex()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mTexTarget:I

    const/16 v1, 0x2600

    invoke-static {v0, v1}, Lcom/serenegiant/glutils/GLHelper;->initTex(II)I

    move-result v0

    return v0
.end method

.method public isOES()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mTexTarget:I

    const v1, 0x8d65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    if-ltz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    return-void
.end method

.method public resetShader()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->isOES()Z

    move-result v0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eqz v0, :cond_0

    const-string v0, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 3
    invoke-static {v1, v0}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    goto :goto_0

    :cond_0
    const-string v0, "#version 100\nprecision mediump float;\nuniform sampler2D sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    .line 4
    invoke-static {v1, v0}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->init()V

    return-void
.end method

.method public setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/GLDrawer2D;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public updateShader(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/glutils/GLDrawer2D;->updateShader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    .line 2
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/GLDrawer2D;->hProgram:I

    .line 3
    invoke-direct {p0}, Lcom/serenegiant/glutils/GLDrawer2D;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
