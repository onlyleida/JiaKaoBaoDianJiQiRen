.class public Lcom/noober/background/drawable/ColorStateCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/noober/background/drawable/ICreateColorState;


# instance fields
.field private colors:[I

.field private index:I

.field private states:[[I

.field private textTa:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setStateColor(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    iget v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    aput-object v3, v0, v1

    .line 2
    iget-object p2, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    aput p1, p2, v1

    .line 3
    iget p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    return-void
.end method


# virtual methods
.method public create()Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    .line 2
    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 4
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 5
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checkable_textColor:I

    if-ne v1, v2, :cond_0

    const v2, 0x101009f

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 7
    :cond_0
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unCheckable_textColor:I

    if-ne v1, v2, :cond_1

    const v2, -0x101009f

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 9
    :cond_1
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checked_textColor:I

    if-ne v1, v2, :cond_2

    const v2, 0x10100a0

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 11
    :cond_2
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unChecked_textColor:I

    if-ne v1, v2, :cond_3

    const v2, -0x10100a0

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 13
    :cond_3
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_enabled_textColor:I

    if-ne v1, v2, :cond_4

    const v2, 0x101009e

    .line 14
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 15
    :cond_4
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unEnabled_textColor:I

    if-ne v1, v2, :cond_5

    const v2, -0x101009e

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 17
    :cond_5
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_selected_textColor:I

    if-ne v1, v2, :cond_6

    const v2, 0x10100a1

    .line 18
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 19
    :cond_6
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unSelected_textColor:I

    if-ne v1, v2, :cond_7

    const v2, -0x10100a1

    .line 20
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto/16 :goto_1

    .line 21
    :cond_7
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_pressed_textColor:I

    if-ne v1, v2, :cond_8

    const v2, 0x10100a7

    .line 22
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 23
    :cond_8
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unPressed_textColor:I

    if-ne v1, v2, :cond_9

    const v2, -0x10100a7

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 25
    :cond_9
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_focused_textColor:I

    if-ne v1, v2, :cond_a

    const v2, 0x101009c

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 27
    :cond_a
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unFocused_textColor:I

    if-ne v1, v2, :cond_b

    const v2, -0x101009c

    .line 28
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 29
    :cond_b
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_activated_textColor:I

    if-ne v1, v2, :cond_c

    const v2, 0x10102fe

    .line 30
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 31
    :cond_c
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActivated_textColor:I

    if-ne v1, v2, :cond_d

    const v2, -0x10100a2

    .line 32
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 33
    :cond_d
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_active_textColor:I

    if-ne v1, v2, :cond_e

    const v2, 0x10100a2

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 35
    :cond_e
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActive_textColor:I

    if-ne v1, v2, :cond_f

    const v2, -0x10102fe

    .line 36
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 37
    :cond_f
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_expanded_textColor:I

    if-ne v1, v2, :cond_10

    const v2, 0x10100a8

    .line 38
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    goto :goto_1

    .line 39
    :cond_10
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unExpanded_textColor:I

    if-ne v1, v2, :cond_11

    const v2, -0x10100a8

    .line 40
    invoke-direct {p0, v1, v2}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(II)V

    :cond_11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 41
    :cond_12
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method
