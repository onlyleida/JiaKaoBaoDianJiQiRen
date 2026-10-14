.class public final Lcom/serenegiant/widget/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# static fields
.field private static sDefaultValue:I = 0x1


# instance fields
.field private final mDefaultValue:I

.field private final mFmtStr:Ljava/lang/String;

.field private final mLabelTvId:I

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mScaleValue:F

.field private final mSeekbarId:I

.field private final mSeekbarLayoutId:I

.field private mTextView:Landroid/widget/TextView;

.field private preferenceValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "%f"

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Lcom/serenegiant/widget/SeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/serenegiant/widget/SeekBarPreference$1;-><init>(Lcom/serenegiant/widget/SeekBarPreference;)V

    iput-object v1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    sget-object v1, Lcom/serenegiant/common/R$styleable;->SeekBarPreference:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_seekbar_layout:I

    sget p3, Lcom/serenegiant/common/R$layout;->seekbar_preference:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarLayoutId:I

    .line 6
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_seekbar_id:I

    sget p3, Lcom/serenegiant/common/R$id;->seekbar:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarId:I

    .line 7
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_seekbar_label_id:I

    sget p3, Lcom/serenegiant/common/R$id;->seekbar_value_label:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mLabelTvId:I

    .line 8
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_min_value:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMinValue:I

    .line 9
    sget p3, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_max_value:I

    const/16 v1, 0x64

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMaxValue:I

    .line 10
    sget p3, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_default_value:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mDefaultValue:I

    .line 11
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_scale_value:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mScaleValue:F

    .line 12
    sget p2, Lcom/serenegiant/common/R$styleable;->SeekBarPreference_value_format:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    .line 14
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    move-object v0, p2

    :cond_0
    iput-object v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mFmtStr:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/SeekBarPreference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/SeekBarPreference;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    return p0
.end method

.method static synthetic access$102(Lcom/serenegiant/widget/SeekBarPreference;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/SeekBarPreference;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMinValue:I

    return p0
.end method

.method static synthetic access$300(Lcom/serenegiant/widget/SeekBarPreference;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/serenegiant/widget/SeekBarPreference;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/widget/SeekBarPreference;->setValueLabel(IZ)V

    return-void
.end method

.method private setValueLabel(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/widget/SeekBarPreference;->formatValueLabel(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected formatValueLabel(IZ)Ljava/lang/String;
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mFmtStr:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    int-to-float v3, p1

    iget v4, p0, Lcom/serenegiant/widget/SeekBarPreference;->mScaleValue:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    int-to-float p1, p1

    iget v2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mScaleValue:F

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "%f"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 2
    iget v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarLayoutId:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarId:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 7
    move-object v0, v2

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 9
    iget v2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const v4, 0x1020010

    .line 11
    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mSeekbarId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 14
    iget v1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 15
    iget v1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    iget v2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 18
    iget-object v1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 20
    :cond_4
    sget v0, Lcom/serenegiant/common/R$id;->seekbar_value_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 21
    iget p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    invoke-direct {p0, p1, v3}, Lcom/serenegiant/widget/SeekBarPreference;->setValueLabel(IZ)V

    .line 22
    iget-object p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/SeekBarPreference;->mDefaultValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->mDefaultValue:I

    iput p2, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    .line 4
    :cond_0
    iget p1, p0, Lcom/serenegiant/widget/SeekBarPreference;->preferenceValue:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    return-void
.end method
