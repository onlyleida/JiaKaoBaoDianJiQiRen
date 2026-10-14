.class public abstract Lorg/opencv/android/CameraGLRendererBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# instance fields
.field private FBO:[I

.field protected final LOGTAG:Ljava/lang/String;

.field private final fss2D:Ljava/lang/String;

.field private final fssOES:Ljava/lang/String;

.field protected mCameraHeight:I

.field protected mCameraIndex:I

.field protected mCameraWidth:I

.field protected mEnabled:Z

.field protected mFBOHeight:I

.field protected mFBOWidth:I

.field protected mHaveFBO:Z

.field protected mHaveSurface:Z

.field protected mIsStarted:Z

.field protected mMaxCameraHeight:I

.field protected mMaxCameraWidth:I

.field protected mSTexture:Landroid/graphics/SurfaceTexture;

.field protected mUpdateST:Z

.field protected mView:Lorg/opencv/android/CameraGLSurfaceView;

.field private prog2D:I

.field private progOES:I

.field private tex2D:Ljava/nio/FloatBuffer;

.field private texCamera:[I

.field private final texCoord2D:[F

.field private final texCoordOES:[F

.field private texDraw:[I

.field private texFBO:[I

.field private texOES:Ljava/nio/FloatBuffer;

.field private vPos2D:I

.field private vPosOES:I

.field private vTC2D:I

.field private vTCOES:I

.field private vert:Ljava/nio/FloatBuffer;

.field private final vertices:[F

.field private final vss:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/opencv/android/CameraGLSurfaceView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraGLRendererBase"

    .line 2
    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->LOGTAG:Ljava/lang/String;

    const-string v0, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    .line 3
    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vss:Ljava/lang/String;

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    .line 4
    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->fssOES:Ljava/lang/String;

    const-string v0, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    .line 5
    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->fss2D:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vertices:[F

    new-array v2, v0, [F

    .line 7
    fill-array-data v2, :array_1

    iput-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoordOES:[F

    new-array v3, v0, [F

    .line 8
    fill-array-data v3, :array_2

    iput-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->texCoord2D:[F

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    .line 9
    iput-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    new-array v5, v4, [I

    aput v6, v5, v6

    iput-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    new-array v5, v4, [I

    aput v6, v5, v6

    iput-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    new-array v5, v4, [I

    aput v6, v5, v6

    .line 10
    iput-object v5, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    const/4 v5, -0x1

    .line 11
    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    .line 12
    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    .line 13
    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    .line 14
    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraWidth:I

    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraHeight:I

    .line 15
    iput v5, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    .line 16
    iput-boolean v6, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 17
    iput-boolean v6, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 18
    iput-boolean v6, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 19
    iput-boolean v4, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 20
    iput-boolean v6, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 21
    iput-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    .line 22
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x20

    div-int/2addr p1, v0

    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    .line 24
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    .line 25
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    .line 26
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private deleteFBO()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFBO("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGLRendererBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 3
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 4
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    .line 5
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    .line 6
    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    return-void
.end method

.method private deleteSurfaceTexture()V
    .locals 2

    const-string v0, "CameraGLRendererBase"

    const-string v1, "deleteSurfaceTexture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    invoke-static {v0}, Lorg/opencv/android/CameraGLRendererBase;->deleteTex([I)V

    :cond_0
    return-void
.end method

.method private static deleteTex([I)V
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method private drawTex(IZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x8d40

    .line 1
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    iget-object v2, v0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v2

    iget-object v4, v0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v4

    invoke-static {v3, v3, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    iget v4, v0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    invoke-static {v3, v3, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_0
    const/16 v2, 0x4000

    .line 4
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    if-eqz p2, :cond_1

    .line 5
    iget v2, v0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    iget v4, v0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v9, v0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 7
    iget v10, v0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x8

    iget-object v15, v0, Lorg/opencv/android/CameraGLRendererBase;->texOES:Ljava/nio/FloatBuffer;

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, v0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 9
    iget v4, v0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v9, v0, Lorg/opencv/android/CameraGLRendererBase;->vert:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 10
    iget v10, v0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x8

    iget-object v15, v0, Lorg/opencv/android/CameraGLRendererBase;->tex2D:Ljava/nio/FloatBuffer;

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :goto_1
    const v2, 0x84c0

    .line 11
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string v2, "sTexture"

    if-eqz p2, :cond_2

    const v4, 0x8d65

    .line 12
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    iget v1, v0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_2

    :cond_2
    const/16 v4, 0xde1

    .line 14
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    iget v1, v0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_2
    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 16
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 17
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method private initFBO(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFBO("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "CameraGLRendererBase"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteFBO()V

    .line 3
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v13, v1, v14}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 4
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    aget v1, v1, v14

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 5
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v9, 0x2802

    const v8, 0x812f

    .line 6
    invoke-static {v15, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2803

    .line 7
    invoke-static {v15, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2801

    const/16 v5, 0x2600

    .line 8
    invoke-static {v15, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 9
    invoke-static {v15, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 10
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    invoke-static {v13, v1, v14}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 11
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget v1, v1, v14

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v18, 0x1401

    const/16 v19, 0x0

    const/16 v13, 0x2800

    move/from16 v4, p1

    const/16 v14, 0x2600

    move/from16 v5, p2

    const/16 v13, 0x2801

    move/from16 v6, v16

    const/16 v13, 0x2803

    move/from16 v7, v17

    const v14, 0x812f

    move/from16 v8, v18

    const/16 v13, 0x2802

    move-object/from16 v9, v19

    .line 12
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 13
    invoke-static {v15, v13, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 14
    invoke-static {v15, v1, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    const/16 v2, 0x2600

    .line 15
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 16
    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 17
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 18
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    aget v1, v1, v3

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 19
    iget-object v1, v0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget v1, v1, v3

    const v4, 0x8ce0

    invoke-static {v2, v4, v15, v1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFBO error status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFBO failed, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    iput v10, v0, Lorg/opencv/android/CameraGLRendererBase;->mFBOWidth:I

    .line 24
    iput v11, v0, Lorg/opencv/android/CameraGLRendererBase;->mFBOHeight:I

    return-void
.end method

.method private initShaders()V
    .locals 4

    const/16 v0, 0x1f02

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenGL ES version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGLRendererBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const-string v0, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    .line 4
    invoke-static {v0, v1}, Lorg/opencv/android/CameraGLRendererBase;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    const-string v2, "vPosition"

    .line 5
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    .line 6
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->progOES:I

    const-string v3, "vTexCoord"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    .line 7
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vPosOES:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->vTCOES:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    .line 9
    invoke-static {v0, v1}, Lorg/opencv/android/CameraGLRendererBase;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    .line 10
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    .line 11
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->prog2D:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    .line 12
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vPos2D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 13
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->vTC2D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private initSurfaceTexture()V
    .locals 3

    const-string v0, "CameraGLRendererBase"

    const-string v1, "initSurfaceTexture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteSurfaceTexture()V

    .line 3
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    invoke-direct {p0, v0}, Lorg/opencv/android/CameraGLRendererBase;->initTexOES([I)V

    .line 4
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method private initTexOES([I)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    aget p1, p1, v0

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 4
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 5
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const/16 v1, 0x2600

    .line 6
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 7
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_0
    return-void
.end method

.method private static loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "CameraGLRendererBase"

    const-string v1, "loadShader"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x8b31

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 3
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x1

    new-array p0, p0, [I

    const v2, 0x8b81

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v2, p0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 6
    aget v4, p0, v3

    if-nez v4, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not compile vertex shader: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3

    :cond_0
    const v4, 0x8b30

    .line 9
    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v4

    .line 10
    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 11
    invoke-static {v4}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 12
    invoke-static {v4, v2, p0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 13
    aget p1, p0, v3

    if-nez p1, :cond_1

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not compile fragment shader:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 16
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3

    .line 17
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    .line 18
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 19
    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 20
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 21
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 22
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const v1, 0x8b82

    .line 23
    invoke-static {p1, v1, p0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 24
    aget v1, p0, v3

    if-nez v1, :cond_2

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not link shader program: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 26
    :cond_2
    invoke-static {p1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const v1, 0x8b83

    .line 27
    invoke-static {p1, v1, p0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 28
    aget p0, p0, v3

    if-nez p0, :cond_3

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shader program validation error: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v3

    :cond_3
    const-string p0, "Shader program is built OK"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method protected abstract closeCamera()V
.end method

.method public declared-synchronized disableView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "disableView"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 3
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStart()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "doStart"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->initSurfaceTexture()V

    .line 3
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    invoke-virtual {p0, v0}, Lorg/opencv/android/CameraGLRendererBase;->openCamera(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 5
    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/opencv/android/CameraGLRendererBase;->setPreviewSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doStop()V
    .locals 2

    const-string v0, "CameraGLRendererBase"

    const-string v1, "doStop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 4
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    .line 5
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 6
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->closeCamera()V

    .line 7
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->deleteSurfaceTexture()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v0}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraViewStopped()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized enableView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraGLRendererBase"

    const-string v1, "enableView"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    .line 3
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 5
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    :cond_1
    const/16 p1, 0x4000

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 7
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {p1}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 8
    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/opencv/android/CameraGLRendererBase;->FBO:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v1, v3}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    .line 9
    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    aget v2, v2, v0

    iget v3, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v4, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraTexture(IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->texDraw:[I

    aget p1, p1, v0

    invoke-direct {p0, p1, v0, v0}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->texFBO:[I

    aget p1, p1, v0

    invoke-direct {p0, p1, v0, v0}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    goto :goto_0

    :cond_3
    const-string p1, "CameraGLRendererBase"

    const-string v2, "texCamera(OES) -> screen"

    .line 12
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->texCamera:[I

    aget p1, p1, v0

    invoke-direct {p0, p1, v1, v0}, Lorg/opencv/android/CameraGLRendererBase;->drawTex(IZI)V

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mUpdateST:Z

    .line 2
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "CameraGLRendererBase"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 3
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    iput v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "CameraGLRendererBase"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraGLRendererBase"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    .line 3
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->updateState()V

    .line 4
    invoke-virtual {p0, p2, p3}, Lorg/opencv/android/CameraGLRendererBase;->setPreviewSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p1, "CameraGLRendererBase"

    const-string p2, "onSurfaceCreated"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lorg/opencv/android/CameraGLRendererBase;->initShaders()V

    return-void
.end method

.method protected abstract openCamera(I)V
.end method

.method public setCameraIndex(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->disableView()V

    .line 2
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraIndex:I

    .line 3
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->enableView()V

    return-void
.end method

.method protected abstract setCameraPreviewSize(II)V
.end method

.method public setMaxCameraPreviewSize(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->disableView()V

    .line 2
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraWidth:I

    .line 3
    iput p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mMaxCameraHeight:I

    .line 4
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->enableView()V

    return-void
.end method

.method protected setPreviewSize(II)V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 3
    iput p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    .line 4
    iput p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/CameraGLRendererBase;->setCameraPreviewSize(II)V

    .line 6
    iget p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraGLRendererBase;->initFBO(II)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveFBO:Z

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {p1}, Lorg/opencv/android/CameraGLSurfaceView;->getCameraTextureListener()Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget p2, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraWidth:I

    iget v0, p0, Lorg/opencv/android/CameraGLRendererBase;->mCameraHeight:I

    invoke-interface {p1, p2, v0}, Lorg/opencv/android/CameraGLSurfaceView$CameraTextureListener;->onCameraViewStarted(II)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected updateState()V
    .locals 3

    const-string v0, "CameraGLRendererBase"

    const-string v1, "updateState"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHaveSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mHaveSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/opencv/android/CameraGLRendererBase;->mView:Lorg/opencv/android/CameraGLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-boolean v2, p0, Lorg/opencv/android/CameraGLRendererBase;->mIsStarted:Z

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStart()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/opencv/android/CameraGLRendererBase;->doStop()V

    goto :goto_1

    :cond_2
    const-string v1, "keeping State unchanged"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "updateState end"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
