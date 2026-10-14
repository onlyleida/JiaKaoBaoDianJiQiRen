.class public Lcom/amap/api/mapcore/util/h2$b;
.super Lcom/amap/api/mapcore/util/g2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/g2;-><init>()V

    const-string v0, "precision highp float;\n        attribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\n        attribute vec2 aTexture;\n        uniform mat4 aMVPMatrix;//mvp\u77e9\u9635\n        varying vec2 texture;//\n        void main(){\n            gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n            texture = aTexture;\n        }"

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/h2$b;->e:Ljava/lang/String;

    const-string v1, "        precision highp float;\n        varying vec2 texture;//\n        uniform sampler2D aTextureUnit0;//\u7eb9\u7406id\n        void main(){\n            gl_FragColor = texture2D(aTextureUnit0, texture);\n        }"

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h2$b;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/g2;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/g2;->a:I

    const-string v1, "aVertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$b;->g:I

    .line 6
    iget v0, p0, Lcom/amap/api/mapcore/util/g2;->a:I

    const-string v1, "aTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$b;->i:I

    .line 7
    iget v0, p0, Lcom/amap/api/mapcore/util/g2;->a:I

    const-string v1, "aMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h2$b;->h:I

    return-void
.end method
