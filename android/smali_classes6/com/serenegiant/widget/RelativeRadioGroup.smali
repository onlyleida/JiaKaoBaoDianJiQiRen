.class public Lcom/serenegiant/widget/RelativeRadioGroup;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;,
        Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;,
        Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 4
    invoke-direct {p0}, Lcom/serenegiant/widget/RelativeRadioGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 8
    invoke-direct {p0}, Lcom/serenegiant/widget/RelativeRadioGroup;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/serenegiant/widget/RelativeRadioGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/serenegiant/widget/RelativeRadioGroup;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/serenegiant/widget/RelativeRadioGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    return p0
.end method

.method static synthetic access$500(Lcom/serenegiant/widget/RelativeRadioGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/serenegiant/widget/RelativeRadioGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/serenegiant/widget/RelativeRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/widget/RelativeRadioGroup$CheckedStateTracker;-><init>(Lcom/serenegiant/widget/RelativeRadioGroup;Lcom/serenegiant/widget/RelativeRadioGroup$1;)V

    iput-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    new-instance v0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/serenegiant/widget/RelativeRadioGroup;Lcom/serenegiant/widget/RelativeRadioGroup$1;)V

    iput-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mPassThroughListener:Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;

    .line 3
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mOnCheckedChangeListener:Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/serenegiant/widget/RelativeRadioGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 5
    iget v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 6
    invoke-direct {p0, v1, v3}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedStateForView(IZ)V

    .line 7
    :cond_0
    iput-boolean v3, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 8
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedId(I)V

    .line 9
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedStateForView(IZ)V

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;

    return p1
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/RelativeRadioGroup;->check(I)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/widget/RelativeRadioGroup;->generateDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/serenegiant/widget/RelativeRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mProtectFromCheckedChange:Z

    .line 6
    iget v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/serenegiant/widget/RelativeRadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mOnCheckedChangeListener:Lcom/serenegiant/widget/RelativeRadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup;->mPassThroughListener:Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
