.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final activityMain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final bottomInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final bottomOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final itemContent:Landroid/widget/TextView;

.field public final itemContentDefault:Landroid/widget/TextView;

.field public final leftInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final leftOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final rightInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final rightOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

.field public final topOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->activityMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->bottomInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->bottomOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->itemContent:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->itemContentDefault:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->leftInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->leftOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->rightInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 11
    iput-object p10, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->rightOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 12
    iput-object p11, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->topInnerBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    .line 13
    iput-object p12, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->topOuterBtn:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;
    .locals 13

    .line 1
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->bottom_inner_btn:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v3, :cond_0

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->bottom_outer_btn:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v4, :cond_0

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->item_content:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 8
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->item_content_default:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 10
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->left_inner_btn:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v7, :cond_0

    .line 12
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->left_outer_btn:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v8, :cond_0

    .line 14
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->right_inner_btn:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v9, :cond_0

    .line 16
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->right_outer_btn:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v10, :cond_0

    .line 18
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->top_inner_btn:I

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v11, :cond_0

    .line 20
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->top_outer_btn:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;

    if-eqz v12, :cond_0

    .line 22
    new-instance p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v12}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearItemHandleView;)V

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->gears__gear_schetch_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearSchetchItemBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
