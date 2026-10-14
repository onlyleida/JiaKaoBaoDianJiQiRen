.class public Lcom/noober/background/drawable/PressDrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private pressTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 3
    iput-object p3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 4
    iput-object p2, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

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
    invoke-virtual {p0}, Lcom/noober/background/drawable/PressDrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 5
    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_pressed_color:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-static {v4}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v3, v5, [I

    const v5, 0x10100a7

    aput v5, v3, v1

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10
    :cond_0
    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_unpressed_color:I

    if-ne v3, v4, :cond_1

    .line 11
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v3, v5, [I

    const v4, -0x10100a7

    aput v4, v3, v1

    .line 13
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
