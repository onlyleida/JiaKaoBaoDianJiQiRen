.class public Lcom/noober/background/drawable/SelectorDrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private selectorTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 3
    iput-object p2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 3
    :catch_1
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    const/4 p4, 0x1

    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array p2, p4, [I

    aput p5, p2, v0

    .line 6
    invoke-virtual {p3, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    new-array p1, p4, [I

    aput p5, p1, v0

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/noober/background/drawable/SelectorDrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge v7, v0, :cond_10

    .line 4
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 5
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checkable_drawable:I

    if-ne v4, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009f

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 7
    :cond_0
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unCheckable_drawable:I

    if-ne v4, v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009f

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 9
    :cond_1
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checked_drawable:I

    if-ne v4, v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 11
    :cond_2
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unChecked_drawable:I

    if-ne v4, v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 13
    :cond_3
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_enabled_drawable:I

    if-ne v4, v0, :cond_4

    .line 14
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009e

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 15
    :cond_4
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unEnabled_drawable:I

    if-ne v4, v0, :cond_5

    .line 16
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009e

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 17
    :cond_5
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_selected_drawable:I

    if-ne v4, v0, :cond_6

    .line 18
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a1

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 19
    :cond_6
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unSelected_drawable:I

    if-ne v4, v0, :cond_7

    .line 20
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a1

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 21
    :cond_7
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_pressed_drawable:I

    if-ne v4, v0, :cond_8

    .line 22
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a7

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 23
    :cond_8
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unPressed_drawable:I

    if-ne v4, v0, :cond_9

    .line 24
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a7

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    .line 25
    :cond_9
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_drawable:I

    if-ne v4, v0, :cond_a

    .line 26
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009c

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    .line 27
    :cond_a
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_drawable:I

    if-ne v4, v0, :cond_b

    .line 28
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009c

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    .line 29
    :cond_b
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_hovered:I

    if-ne v4, v0, :cond_c

    .line 30
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x1010367

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    .line 31
    :cond_c
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_hovered:I

    if-ne v4, v0, :cond_d

    .line 32
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x1010367

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    .line 33
    :cond_d
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_activated:I

    if-ne v4, v0, :cond_e

    .line 34
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10102fe

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    .line 35
    :cond_e
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_activated:I

    if-ne v4, v0, :cond_f

    .line 36
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10102fe

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    :cond_f
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_10
    return-object v6
.end method
