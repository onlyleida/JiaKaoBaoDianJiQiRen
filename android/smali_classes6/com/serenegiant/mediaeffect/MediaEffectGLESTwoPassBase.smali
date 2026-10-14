.class public Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "SourceFile"


# instance fields
.field protected final mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

.field protected mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(IZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance p1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    invoke-direct {p1, p2, p5, p6}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Lcom/serenegiant/mediaeffect/ISource;)V
    .locals 5

    .line 34
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getOutputTexture()Lcom/serenegiant/glutils/TextureOffscreen;

    move-result-object v0

    .line 36
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getSourceTexId()[I

    move-result-object v1

    .line 37
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getWidth()I

    move-result v2

    .line 38
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getHeight()I

    move-result p1

    .line 39
    iget-object v3, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 40
    new-instance v3, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {v3, v2, p1, v4}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v3, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    .line 44
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 45
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v1

    aput v1, p1, v4

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v1, p1, v2, v4}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v1, p1, v2, v4}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1

    :catchall_1
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public apply([IIII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {v0, p2, p3, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    .line 7
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-direct {p1, p2, p3, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result p1

    if-ne p4, p1, :cond_3

    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 10
    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getWidth()I

    move-result p1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 11
    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->getHeight()I

    move-result p1

    if-eq p3, p1, :cond_4

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1, p4, p2, p3}, Lcom/serenegiant/glutils/TextureOffscreen;->assignTexture(III)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 14
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result p2

    aput p2, p1, v1

    .line 15
    :try_start_1
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    if-eqz p2, :cond_5

    .line 16
    iget-object p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p3}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object p3

    invoke-virtual {p2, p1, p3, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    iget-object p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p3}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object p3

    invoke-virtual {p2, p1, p3, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1

    :catchall_1
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public apply([ILcom/serenegiant/glutils/TextureOffscreen;)V
    .locals 4

    .line 20
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/serenegiant/glutils/TextureOffscreen;

    .line 23
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/serenegiant/glutils/TextureOffscreen;-><init>(IIZ)V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    iget-object v2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    .line 27
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->bind()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 28
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result v0

    aput v0, p1, v1

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexMatrix()[F

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->apply([I[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1

    :catchall_1
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->mOutputOffscreen:Lcom/serenegiant/glutils/TextureOffscreen;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->unbind()V

    throw p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/serenegiant/glutils/TextureOffscreen;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mOutputOffscreen2:Lcom/serenegiant/glutils/TextureOffscreen;

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->release()V

    return-void
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectGLESTwoPassBase;->mDrawer2:Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setTexSize(II)V

    :cond_0
    return-object p0
.end method
