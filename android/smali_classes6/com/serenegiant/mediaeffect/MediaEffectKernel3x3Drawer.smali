.class public Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_FILT3x3_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec4 sum = vec4(0.0);\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[0]) * uKernel[0];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[1]) * uKernel[1];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[2]) * uKernel[2];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[3]) * uKernel[3];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[4]) * uKernel[4];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[5]) * uKernel[5];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[6]) * uKernel[6];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[7]) * uKernel[7];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[8]) * uKernel[8];\n    gl_FragColor = sum + uColorAdjust;\n}\n"

.field public static final KERNEL_BRIGHTEN:[F

.field public static final KERNEL_EDGE_DETECT:[F

.field public static final KERNEL_EMBOSS:[F

.field public static final KERNEL_GAUSSIAN:[F

.field public static final KERNEL_LAPLACIAN:[F

.field public static final KERNEL_NULL:[F

.field public static final KERNEL_SHARPNESS:[F

.field public static final KERNEL_SIZE:I = 0x9

.field public static final KERNEL_SMOOTH:[F

.field public static final KERNEL_SOBEL2_H:[F

.field public static final KERNEL_SOBEL2_V:[F

.field public static final KERNEL_SOBEL_H:[F

.field public static final KERNEL_SOBEL_V:[F


# instance fields
.field private final mKernel:[F

.field private mTexHeight:F

.field private final mTexOffset:[F

.field private mTexWidth:F

.field private final muKernelLoc:I

.field private final muTexOffsetLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_NULL:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SOBEL_H:[F

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SOBEL_V:[F

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SOBEL2_H:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_4

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SOBEL2_V:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_5

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SHARPNESS:[F

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_6

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_EDGE_DETECT:[F

    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_7

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_EMBOSS:[F

    new-array v1, v0, [F

    .line 9
    fill-array-data v1, :array_8

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_SMOOTH:[F

    new-array v1, v0, [F

    .line 10
    fill-array-data v1, :array_9

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_GAUSSIAN:[F

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_a

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_BRIGHTEN:[F

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_b

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_LAPLACIAN:[F

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sampler2D"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec4 sum = vec4(0.0);\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[0]) * uKernel[0];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[1]) * uKernel[1];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[2]) * uKernel[2];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[3]) * uKernel[3];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[4]) * uKernel[4];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[5]) * uKernel[5];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[6]) * uKernel[6];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[7]) * uKernel[7];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[8]) * uKernel[8];\n    gl_FragColor = sum + uColorAdjust;\n}\n"

    .line 13
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v4

    .line 14
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x40000000    # 2.0f
        0x0
        -0x40000000    # -2.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_3
    .array-data 4
        0x40400000    # 3.0f
        0x0
        -0x3fc00000    # -3.0f
        0x41200000    # 10.0f
        0x0
        -0x3ee00000    # -10.0f
        0x40400000    # 3.0f
        0x0
        -0x3fc00000    # -3.0f
    .end array-data

    :array_4
    .array-data 4
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
        -0x3ee00000    # -10.0f
        -0x3fc00000    # -3.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x40a00000    # 5.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x41000000    # 8.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_7
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
    .end array-data

    :array_9
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x3f000000    # -8.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12

    new-array p2, p1, [F

    .line 4
    iput-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mKernel:[F

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexOffset:[F

    .line 6
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getProgram()I

    move-result p1

    const-string p2, "uKernel"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->muKernelLoc:I

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->muTexOffsetLoc:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getProgram()I

    move-result p1

    const-string p2, "uTexOffset"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->muTexOffsetLoc:I

    .line 9
    sget-object p1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->KERNEL_NULL:[F

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setKernel([FF)V

    const/16 p1, 0x100

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setTexSize(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected preDraw([I[FI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->preDraw([I[FI)V

    .line 2
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->muKernelLoc:I

    const/4 p2, 0x0

    const/16 p3, 0x9

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mKernel:[F

    invoke-static {p1, p3, v0, p2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    const-string p1, "set kernel"

    .line 4
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->muTexOffsetLoc:I

    if-ltz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexOffset:[F

    invoke-static {p1, p3, v0, p2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    :cond_1
    return-void
.end method

.method public setKernel([FF)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x9

    if-eqz p1, :cond_1

    .line 1
    array-length v2, p1

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mKernel:[F

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->setColorAdjust(F)V

    .line 5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kernel size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    array-length v0, p1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setTexSize(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexWidth:F

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexHeight:F

    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    int-to-float p2, p2

    .line 3
    iput p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexHeight:F

    .line 4
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p1, v1, p1

    div-float/2addr v1, p2

    .line 5
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->mTexOffset:[F

    const/4 v2, 0x0

    neg-float v3, p1

    aput v3, p2, v2

    const/4 v2, 0x1

    neg-float v4, v1

    aput v4, p2, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 6
    aput v5, p2, v2

    const/4 v2, 0x3

    aput v4, p2, v2

    const/4 v2, 0x4

    .line 7
    aput p1, p2, v2

    const/4 v2, 0x5

    aput v4, p2, v2

    const/4 v2, 0x6

    .line 8
    aput v3, p2, v2

    const/4 v2, 0x7

    aput v5, p2, v2

    const/16 v2, 0x8

    .line 9
    aput v5, p2, v2

    const/16 v2, 0x9

    aput v5, p2, v2

    const/16 v2, 0xa

    .line 10
    aput p1, p2, v2

    const/16 v2, 0xb

    aput v5, p2, v2

    const/16 v2, 0xc

    .line 11
    aput v3, p2, v2

    const/16 v2, 0xd

    aput v1, p2, v2

    const/16 v2, 0xe

    .line 12
    aput v5, p2, v2

    const/16 v2, 0xf

    aput v1, p2, v2

    const/16 v2, 0x10

    .line 13
    aput p1, p2, v2

    const/16 p1, 0x11

    aput v1, p2, p1

    .line 14
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
