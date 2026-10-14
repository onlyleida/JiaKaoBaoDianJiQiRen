.class public Lcom/serenegiant/glutils/Texture2dProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Texture2dProgram"


# instance fields
.field private mColorAdjust:F

.field private final mFlags:[I

.field protected mHasKernel2:Z

.field private final mKernel:[F

.field private final mLastTouchPosition:[F

.field private mProgramHandle:I

.field private final mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

.field private final mSummedTouchPosition:[F

.field private final mSync:Ljava/lang/Object;

.field private mTexHeight:F

.field private mTexOffset:[F

.field private mTexWidth:F

.field private mTextureTarget:I

.field private final maPositionLoc:I

.field private final maTextureCoordLoc:I

.field private muColorAdjustLoc:I

.field private muFlagsLoc:I

.field private muKernelLoc:I

.field private final muMVPMatrixLoc:I

.field private final muTexMatrixLoc:I

.field private muTexOffsetLoc:I

.field private muTouchPositionLoc:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;->TEXTURE_CUSTOM:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/serenegiant/glutils/Texture2dProgram;-><init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    const/16 v0, 0x12

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    .line 10
    iput-object p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    .line 11
    sget-object v0, Lcom/serenegiant/glutils/Texture2dProgram$1;->$SwitchMap$com$serenegiant$glutils$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xde1

    const v2, 0x8d65

    const-string v3, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unhandled type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target should be GL_TEXTURE_2D or GL_TEXTURE_EXTERNAL_OES"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 15
    invoke-static {p3, p4}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 16
    :pswitch_1
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 17
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 18
    :pswitch_2
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    vec2 s = sign(normCoord + uPosition);\n    normCoord = abs(normCoord);\n    normCoord = 0.5 * normCoord + 0.5 * smoothstep(0.25, 0.5, normCoord) * normCoord;\n    normCoord = s * normCoord;\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 19
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 20
    :pswitch_3
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    normCoord.x = normCoord.x * sign(normCoord.x + uPosition.x);\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 21
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 22
    :pswitch_4
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = 2.0 * r - r * smoothstep(0.0, 0.7, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 23
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 24
    :pswitch_5
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * r / sqrt(2.0);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 25
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto/16 :goto_1

    .line 26
    :pswitch_6
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * smoothstep(-0.1, 0.5, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 27
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 28
    :pswitch_7
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    if (r > 0.5) r = 0.5;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 29
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 30
    :pswitch_8
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    phi = phi + (1.0 - smoothstep(-0.5, 0.5, r)) * 4.0;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 31
    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 32
    :pswitch_9
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 33
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_SQUEEZE:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 34
    :pswitch_a
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 35
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_CHROMA_KEY:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 36
    :pswitch_b
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 37
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_NIGHT:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 38
    :pswitch_c
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 39
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_BW:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 40
    :pswitch_d
    iput v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 41
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 42
    :pswitch_e
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 43
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    goto :goto_1

    .line 44
    :pswitch_f
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    .line 45
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/serenegiant/glutils/GLHelper;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    .line 46
    :goto_1
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_2

    const-string p2, "aPosition"

    .line 47
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    .line 48
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 49
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "aTextureCoord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    .line 50
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 51
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uMVPMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muMVPMatrixLoc:I

    .line 52
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uTexMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexMatrixLoc:I

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/glutils/Texture2dProgram;->initLocation([F[F)V

    return-void

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to create program"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTextureObject()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 2
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 3
    aget v0, v1, v2

    .line 4
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 7
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 8
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 9
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    .line 10
    invoke-static {v1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public draw([FILjava/nio/FloatBuffer;IIII[FILjava/nio/FloatBuffer;II)V
    .locals 11

    move-object v1, p0

    const-string v0, "draw start"

    .line 1
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 2
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 3
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p11

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture"

    .line 6
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 7
    iget-object v2, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static {v0, v3, v4, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 9
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 10
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexMatrixLoc:I

    if-ltz v0, :cond_0

    move-object/from16 v5, p8

    move/from16 v6, p9

    .line 11
    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 12
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray"

    .line 14
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 15
    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move/from16 v6, p6

    move/from16 v9, p7

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 16
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 17
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray"

    .line 18
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 19
    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move/from16 v9, p12

    move-object/from16 v10, p10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer"

    .line 20
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 21
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    const/16 v5, 0x9

    if-ltz v0, :cond_2

    .line 22
    iget-boolean v6, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mHasKernel2:Z

    if-nez v6, :cond_1

    .line 23
    iget-object v6, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {v0, v5, v6, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_0

    :cond_1
    const/16 v6, 0x12

    .line 24
    iget-object v7, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {v0, v6, v7, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    :goto_0
    const-string v0, "set kernel"

    .line 25
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 26
    :cond_2
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    if-ltz v0, :cond_3

    iget-object v6, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTexOffset:[F

    if-eqz v6, :cond_3

    .line 27
    invoke-static {v0, v5, v6, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 28
    :cond_3
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    if-ltz v0, :cond_4

    .line 29
    iget v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 30
    :cond_4
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    if-ltz v0, :cond_5

    .line 31
    iget-object v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    invoke-static {v0, v3, v5, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 32
    :cond_5
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    if-ltz v0, :cond_6

    const/4 v3, 0x4

    .line 33
    iget-object v5, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    invoke-static {v0, v3, v5, v4}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 34
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p4

    move/from16 v2, p5

    .line 35
    invoke-virtual {p0, p4, v2}, Lcom/serenegiant/glutils/Texture2dProgram;->internal_draw(II)V

    .line 36
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 37
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 38
    iget v0, v1, Lcom/serenegiant/glutils/Texture2dProgram;->mTextureTarget:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getProgramHandle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    return v0
.end method

.method public getProgramType()Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramType:Lcom/serenegiant/glutils/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    aget v2, v1, v4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    iget v7, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    aput v2, v1, v4

    .line 6
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSummedTouchPosition:[F

    aget v2, v1, v3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    aget v8, v7, v3

    sub-float/2addr v5, v8

    mul-float v5, v5, v6

    iget v6, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    neg-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    aput v2, v1, v3

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v7, v4

    .line 9
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    .line 12
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mLastTouchPosition:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v3

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected initLocation([F[F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uKernel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muKernelLoc:I

    .line 3
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string v2, "uTexOffset"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    if-gez v0, :cond_1

    .line 5
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTexOffsetLoc:I

    :cond_1
    if-nez p1, :cond_2

    .line 6
    sget-object p1, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_NULL:[F

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/glutils/Texture2dProgram;->setKernel([FF)V

    const/16 p1, 0x100

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/serenegiant/glutils/Texture2dProgram;->setTexSize(II)V

    :goto_0
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, p2}, Lcom/serenegiant/glutils/Texture2dProgram;->setKernel2([F)V

    .line 10
    :cond_3
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uColorAdjust"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    if-gez p1, :cond_4

    .line 11
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muColorAdjustLoc:I

    .line 12
    :cond_4
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    if-gez p1, :cond_5

    .line 13
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muTouchPositionLoc:I

    .line 14
    :cond_5
    iget p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    const-string p2, "uFlags"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    if-gez p1, :cond_6

    .line 15
    iput v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->muFlagsLoc:I

    :cond_6
    return-void
.end method

.method protected internal_draw(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 2
    invoke-static {p1}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mProgramHandle:I

    return-void
.end method

.method public setColorAdjust(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFlag(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    aput p2, v1, p1

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setFlags([I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mFlags:[I

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setKernel([FF)V
    .locals 3

    .line 1
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mColorAdjust:F

    return-void

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setKernel2([F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    array-length v3, p1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mHasKernel2:Z

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mKernel:[F

    invoke-static {p1, v1, v3, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTexSize(II)V
    .locals 6

    int-to-float p2, p2

    .line 1
    iput p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexHeight:F

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    div-float/2addr v0, p2

    .line 3
    iget-object p2, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mSync:Ljava/lang/Object;

    monitor-enter p2

    const/16 v1, 0x12

    :try_start_0
    new-array v1, v1, [F

    const/4 v2, 0x0

    neg-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    neg-float v4, v0

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v5, v1, v2

    const/16 v2, 0x8

    aput v5, v1, v2

    const/16 v2, 0x9

    aput v5, v1, v2

    const/16 v2, 0xa

    aput p1, v1, v2

    const/16 v2, 0xb

    aput v5, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    const/16 v2, 0xe

    aput v5, v1, v2

    const/16 v2, 0xf

    aput v0, v1, v2

    const/16 v2, 0x10

    aput p1, v1, v2

    const/16 p1, 0x11

    aput v0, v1, p1

    .line 4
    iput-object v1, p0, Lcom/serenegiant/glutils/Texture2dProgram;->mTexOffset:[F

    .line 5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
