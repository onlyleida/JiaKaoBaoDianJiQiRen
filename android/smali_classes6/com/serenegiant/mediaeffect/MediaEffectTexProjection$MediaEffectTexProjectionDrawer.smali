.class Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaEffectTexProjectionDrawer"
.end annotation


# instance fields
.field private final muTexMatrixLoc2:I

.field private texMatrix2:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->texMatrix2:[F

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->getProgram()I

    move-result p1

    const-string p2, "uTexMatrix2"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->muTexMatrixLoc2:I

    .line 4
    invoke-static {p1, p2}, Lcom/serenegiant/glutils/GLHelper;->checkLocation(ILjava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->reset()V

    return-void
.end method


# virtual methods
.method protected preDraw([I[FI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->muTexMatrixLoc2:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->texMatrix2:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const-string v0, "glUniformMatrix3fv"

    .line 3
    invoke-static {v0}, Lcom/serenegiant/glutils/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->preDraw([I[FI)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->setTexProjection([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTexProjection([F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
