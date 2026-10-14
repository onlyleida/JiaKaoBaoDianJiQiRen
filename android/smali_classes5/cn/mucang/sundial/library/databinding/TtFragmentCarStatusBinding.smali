.class public final Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final accController:Landroid/widget/TextView;

.field public final accStatus:Landroid/widget/TextView;

.field public final carNum:Landroid/widget/TextView;

.field public final carSpeed:Landroid/widget/TextView;

.field public final flameOutTime:Landroid/widget/TextView;

.field public final gps:Landroid/widget/TextView;

.field public final powerStatus:Landroid/widget/TextView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final rpm:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->accController:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->accStatus:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->carNum:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->carSpeed:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->flameOutTime:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->gps:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->powerStatus:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->rpm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;
    .locals 11

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->acc_controller:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->acc_status:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->car_num:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->car_speed:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->flame_out_time:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->gps:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->power_status:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->rpm:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    move-object v2, p0

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "rpm"

    goto :goto_0

    :cond_1
    const-string p0, "powerStatus"

    goto :goto_0

    :cond_2
    const-string p0, "gps"

    goto :goto_0

    :cond_3
    const-string p0, "flameOutTime"

    goto :goto_0

    :cond_4
    const-string p0, "carSpeed"

    goto :goto_0

    :cond_5
    const-string p0, "carNum"

    goto :goto_0

    :cond_6
    const-string p0, "accStatus"

    goto :goto_0

    :cond_7
    const-string p0, "accController"

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__fragment_car_status:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
