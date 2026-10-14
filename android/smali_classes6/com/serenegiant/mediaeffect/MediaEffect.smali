.class public Lcom/serenegiant/mediaeffect/MediaEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/serenegiant/mediaeffect/IEffect;


# instance fields
.field protected mEffect:Landroid/media/effect/Effect;

.field protected final mEffectContext:Landroid/media/effect/EffectContext;

.field protected mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    .line 3
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 4
    invoke-virtual {p1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object p1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/serenegiant/mediaeffect/ISource;)V
    .locals 4

    .line 8
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getSourceTexId()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 10
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getHeight()I

    move-result v3

    .line 11
    invoke-interface {p1}, Lcom/serenegiant/mediaeffect/ISource;->getOutputTexId()I

    move-result p1

    .line 12
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/media/effect/Effect;->apply(IIII)V

    :cond_0
    return-void
.end method

.method public apply([IIII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aget p1, p1, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/effect/Effect;->apply(IIII)V

    :cond_0
    return-void
.end method

.method public apply([ILcom/serenegiant/glutils/TextureOffscreen;)V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    aget p1, p1, v1

    .line 5
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getHeight()I

    move-result v2

    .line 6
    invoke-virtual {p2}, Lcom/serenegiant/glutils/TextureOffscreen;->getTexture()I

    move-result p2

    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/media/effect/Effect;->apply(IIII)V

    :cond_0
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/effect/Effect;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    :cond_0
    return-void
.end method

.method public bridge synthetic resize(II)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffect;->resize(II)Lcom/serenegiant/mediaeffect/MediaEffect;

    move-result-object p1

    return-object p1
.end method

.method public resize(II)Lcom/serenegiant/mediaeffect/MediaEffect;
    .locals 0

    return-object p0
.end method

.method public setEnable(Z)Lcom/serenegiant/mediaeffect/IEffect;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEnabled:Z

    return-object p0
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffect;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method
