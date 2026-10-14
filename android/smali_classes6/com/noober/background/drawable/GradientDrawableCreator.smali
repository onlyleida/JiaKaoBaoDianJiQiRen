.class public Lcom/noober/background/drawable/GradientDrawableCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method private hasSetRadius([F)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
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
    invoke-virtual {p0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/GradientDrawable;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 4
    :goto_0
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v8, v5, :cond_1a

    .line 5
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 6
    sget v6, Lcom/noober/background/R$styleable;->background_bl_shape:I

    if-ne v5, v6, :cond_0

    .line 7
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    move/from16 v25, v14

    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 8
    :cond_0
    sget v6, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    if-ne v5, v6, :cond_1

    .line 9
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 10
    :cond_1
    sget v6, Lcom/noober/background/R$styleable;->background_bl_corners_radius:I

    if-ne v5, v6, :cond_2

    .line 11
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move/from16 v25, v14

    goto/16 :goto_4

    :cond_2
    const/4 v7, 0x0

    .line 12
    sget v6, Lcom/noober/background/R$styleable;->background_bl_corners_bottomLeftRadius:I

    if-ne v5, v6, :cond_3

    const/4 v6, 0x6

    move/from16 v25, v14

    .line 13
    iget-object v14, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v14, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    aput v14, v3, v6

    const/4 v6, 0x7

    .line 14
    iget-object v14, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v14, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v6

    goto/16 :goto_4

    :cond_3
    move/from16 v25, v14

    .line 15
    sget v6, Lcom/noober/background/R$styleable;->background_bl_corners_bottomRightRadius:I

    if-ne v5, v6, :cond_4

    const/4 v6, 0x4

    .line 16
    iget-object v14, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v14, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    aput v14, v3, v6

    const/4 v6, 0x5

    .line 17
    iget-object v14, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v14, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v6

    goto/16 :goto_4

    .line 18
    :cond_4
    sget v6, Lcom/noober/background/R$styleable;->background_bl_corners_topLeftRadius:I

    if-ne v5, v6, :cond_5

    .line 19
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v14, 0x0

    aput v6, v3, v14

    .line 20
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v6, 0x1

    aput v5, v3, v6

    goto/16 :goto_4

    .line 21
    :cond_5
    sget v6, Lcom/noober/background/R$styleable;->background_bl_corners_topRightRadius:I

    if-ne v5, v6, :cond_6

    .line 22
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v14, 0x2

    aput v6, v3, v14

    .line 23
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v6, 0x3

    aput v5, v3, v6

    goto/16 :goto_1

    .line 24
    :cond_6
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    if-ne v5, v6, :cond_7

    .line 25
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v22

    :goto_3
    move/from16 v14, v25

    goto/16 :goto_2

    .line 26
    :cond_7
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    if-ne v5, v6, :cond_8

    .line 27
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto :goto_3

    :cond_8
    const/high16 v7, -0x40800000    # -1.0f

    .line 28
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    if-ne v5, v6, :cond_9

    .line 29
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    goto :goto_3

    .line 30
    :cond_9
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    if-ne v5, v6, :cond_a

    .line 31
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v14, 0x0

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    .line 32
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    if-ne v5, v6, :cond_b

    .line 33
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    goto :goto_3

    .line 34
    :cond_b
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    if-ne v5, v6, :cond_c

    .line 35
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto :goto_3

    .line 36
    :cond_c
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_gradientRadius:I

    if-ne v5, v6, :cond_d

    .line 37
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_1

    .line 38
    :cond_d
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_type:I

    if-ne v5, v6, :cond_e

    .line 39
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 40
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    move/from16 v21, v5

    goto :goto_3

    .line 41
    :cond_e
    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_useLevel:I

    if-ne v5, v6, :cond_f

    .line 42
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_1

    .line 43
    :cond_f
    sget v6, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    if-ne v5, v6, :cond_10

    .line 44
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    :cond_10
    const/4 v7, 0x0

    .line 45
    sget v6, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    if-ne v5, v6, :cond_11

    .line 46
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 47
    :cond_11
    sget v6, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    if-ne v5, v6, :cond_12

    .line 48
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 49
    :cond_12
    sget v6, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    if-ne v5, v6, :cond_13

    .line 50
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 51
    :cond_13
    sget v6, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    if-ne v5, v6, :cond_14

    .line 52
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    goto :goto_4

    .line 53
    :cond_14
    sget v6, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    if-ne v5, v6, :cond_15

    .line 54
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    goto :goto_4

    .line 55
    :cond_15
    sget v6, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    if-ne v5, v6, :cond_16

    .line 56
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    goto :goto_4

    .line 57
    :cond_16
    sget v6, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    if-ne v5, v6, :cond_17

    .line 58
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v14, 0x0

    invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move v14, v5

    goto :goto_5

    .line 59
    :cond_17
    sget v6, Lcom/noober/background/R$styleable;->background_bl_stroke_dashWidth:I

    if-ne v5, v6, :cond_18

    .line 60
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    goto :goto_4

    .line 61
    :cond_18
    sget v6, Lcom/noober/background/R$styleable;->background_bl_stroke_dashGap:I

    if-ne v5, v6, :cond_19

    .line 62
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    :cond_19
    :goto_4
    move/from16 v14, v25

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1a
    move/from16 v25, v14

    .line 63
    invoke-direct {v1, v3}, Lcom/noober/background/drawable/GradientDrawableCreator;->hasSetRadius([F)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 64
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 65
    :cond_1b
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    .line 66
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    float-to-int v3, v9

    float-to-int v5, v10

    .line 67
    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_1c
    const v9, 0x101009e

    const v10, -0x10100a0

    const v14, 0x10100a0

    const v23, -0x101009f

    const v24, 0x101009f

    const v26, -0x10100a7

    const v27, 0x10100a7

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2d

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 71
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1d
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 74
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1e
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 77
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1f
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 80
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_20
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 83
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_21
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 86
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_22
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_23
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_24

    const v6, -0x101009e

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_24
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_25

    const v6, 0x10100a1

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_25
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_26

    const v6, -0x10100a1

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_26
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_27

    const v6, 0x101009c

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_27
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_28

    const v6, -0x101009c

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2c

    .line 107
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 108
    iget-object v7, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_29

    add-int/lit8 v6, v6, 0x1

    .line 109
    :cond_29
    new-array v7, v6, [[I

    .line 110
    new-array v6, v6, [I

    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, 0x0

    aput v28, v10, v9

    .line 112
    aput-object v10, v7, v8

    .line 113
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    const v9, 0x101009e

    const v10, -0x10100a0

    goto :goto_6

    .line 114
    :cond_2a
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    new-array v5, v3, [I

    .line 115
    aput-object v5, v7, v8

    .line 116
    aput v11, v6, v8

    .line 117
    :cond_2b
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 118
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 119
    :cond_2c
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 120
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_7

    .line 121
    :cond_2d
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 122
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 123
    :cond_2e
    :goto_7
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_38

    const/16 v3, 0x15

    if-lt v0, v3, :cond_37

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    .line 127
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 128
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2f
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    .line 133
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 134
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_30
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    .line 139
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 140
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, -0x10100a0

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_31
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    .line 145
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_32

    const v6, 0x101009e

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, -0x101009e

    .line 147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_32
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    .line 151
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_33

    const v6, 0x10100a1

    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, -0x10100a1

    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_33
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v8, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    .line 157
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_34

    const v6, 0x101009c

    .line 158
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v6, -0x101009c

    .line 159
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_36

    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [[I

    .line 164
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 165
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v14, 0x0

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    .line 166
    aput-object v10, v6, v14

    .line 167
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v14

    add-int/2addr v14, v9

    goto :goto_8

    .line 168
    :cond_35
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    float-to-int v5, v12

    .line 169
    invoke-virtual {v2, v5, v3, v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_9

    .line 170
    :cond_36
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_38

    float-to-int v3, v12

    move/from16 v7, v25

    .line 171
    invoke-virtual {v2, v3, v7, v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    goto :goto_9

    :cond_37
    move/from16 v7, v25

    .line 172
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_38

    float-to-int v3, v12

    .line 173
    invoke-virtual {v2, v3, v7, v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 174
    :cond_38
    :goto_9
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    .line 175
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_39

    move/from16 v6, v16

    move/from16 v3, v17

    .line 176
    invoke-virtual {v2, v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 177
    :cond_39
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/16 v5, 0x10

    if-eqz v3, :cond_3b

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    .line 178
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-lt v0, v5, :cond_3b

    .line 179
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v6, 0x0

    aput v19, v3, v6

    const/4 v7, 0x1

    aput v18, v3, v7

    const/4 v8, 0x2

    aput v20, v3, v8

    goto :goto_a

    :cond_3a
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v3, v8, [I

    aput v19, v3, v6

    aput v20, v3, v7

    .line 180
    :goto_a
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_3b
    if-nez v21, :cond_45

    .line 181
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    .line 182
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_45

    if-lt v0, v5, :cond_45

    move/from16 v7, v22

    .line 183
    rem-int/lit16 v3, v7, 0x168

    .line 184
    rem-int/lit8 v5, v3, 0x2d

    if-nez v5, :cond_44

    .line 185
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v3, :cond_43

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_42

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_41

    const/16 v6, 0x87

    if-eq v3, v6, :cond_40

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_3f

    const/16 v6, 0xe1

    if-eq v3, v6, :cond_3e

    const/16 v6, 0x10e

    if-eq v3, v6, :cond_3d

    const/16 v6, 0x13b

    if-eq v3, v6, :cond_3c

    goto :goto_b

    .line 186
    :cond_3c
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 187
    :cond_3d
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 188
    :cond_3e
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 189
    :cond_3f
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 190
    :cond_40
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 191
    :cond_41
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_b

    .line 192
    :cond_42
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 193
    :cond_43
    :goto_b
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_c

    .line 194
    :cond_44
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<gradient> tag requires \'angle\' attribute to be a multiple of 45"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_45
    :goto_c
    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    .line 196
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    .line 197
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v5, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    .line 198
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_46

    .line 199
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setPadding(IIII)V

    goto :goto_d

    .line 200
    :cond_46
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mPadding"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d

    :catch_1
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_47
    :goto_d
    return-object v2
.end method
