.class public Lcom/noober/background/drawable/SelectorPre21DrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-static {v0}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 7
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 8
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v3, Lcom/noober/background/R$styleable;->background_bl_stroke_dashWidth:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 9
    iget-object v3, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_stroke_dashGap:I

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 10
    invoke-virtual {v0, p2, p3, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [I

    aput p4, p2, v2

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
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
    invoke-virtual {p0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3
    sget v1, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    const v3, 0x101009f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 4
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    const v3, -0x101009f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 5
    sget v1, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    const v3, 0x10100a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 6
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    const v3, -0x10100a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 7
    sget v1, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    const v3, 0x101009e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 8
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    const v3, -0x101009e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 9
    sget v1, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    const v3, 0x10100a1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 10
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    const v3, -0x10100a1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 11
    sget v1, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    const v3, 0x10100a7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 12
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    const v3, -0x10100a7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 13
    sget v1, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    const v3, 0x101009c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 14
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    const v3, -0x101009c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    return-object v0
.end method
