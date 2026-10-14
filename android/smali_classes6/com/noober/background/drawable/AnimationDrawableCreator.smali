.class public Lcom/noober/background/drawable/AnimationDrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private animationTa:Landroid/content/res/TypedArray;

.field private drawable:Landroid/graphics/drawable/AnimationDrawable;

.field private duration:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    .line 3
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    return-void
.end method

.method private addFrame(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    iget v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/AnimationDrawable;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 4
    sget v3, Lcom/noober/background/R$styleable;->bl_anim_bl_duration:I

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    goto :goto_1

    .line 6
    :cond_0
    sget v3, Lcom/noober/background/R$styleable;->bl_anim_bl_oneshot:I

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item0:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v5, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->animationTa:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    iget v3, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->duration:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 13
    :cond_4
    :goto_2
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item0:I

    invoke-direct {p0, v2, v0}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 14
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item1:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item1:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 15
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item2:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item2:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 16
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item3:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item3:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 17
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item4:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item4:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 18
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item5:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item5:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 19
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item6:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item6:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 20
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item7:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item7:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 21
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item8:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item8:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 22
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item9:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item9:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 23
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item10:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item10:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 24
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item11:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item11:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 25
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item12:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item12:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 26
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item13:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item13:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 27
    sget v0, Lcom/noober/background/R$styleable;->bl_anim_bl_frame_drawable_item14:I

    sget v1, Lcom/noober/background/R$styleable;->bl_anim_bl_duration_item14:I

    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/AnimationDrawableCreator;->addFrame(II)V

    .line 28
    iget-object v0, p0, Lcom/noober/background/drawable/AnimationDrawableCreator;->drawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method public bridge synthetic create()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/noober/background/drawable/AnimationDrawableCreator;->create()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    return-object v0
.end method
