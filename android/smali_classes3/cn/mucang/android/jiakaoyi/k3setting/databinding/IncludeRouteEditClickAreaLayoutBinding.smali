.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final addTv:Landroid/widget/TextView;

.field public final alignTv:Landroid/widget/TextView;

.field public final cbJudgeBrake:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final cbJudgeLight:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final cbPlayVoice:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final deleteTv:Landroid/widget/TextView;

.field public final etGroupNum:Landroid/widget/EditText;

.field public final etStepDistance:Landroid/widget/EditText;

.field public final llJudge:Landroid/widget/LinearLayout;

.field public final moveTv:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final switchTv:Landroid/widget/TextView;

.field public final tvSelectStep:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->addTv:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->alignTv:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->cbJudgeBrake:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->cbJudgeLight:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->cbPlayVoice:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->deleteTv:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->etGroupNum:Landroid/widget/EditText;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->etStepDistance:Landroid/widget/EditText;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->llJudge:Landroid/widget/LinearLayout;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->moveTv:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->switchTv:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->tvSelectStep:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->addTv:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->alignTv:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->cb_judge_brake:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->cb_judge_light:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->cb_play_voice:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->deleteTv:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->etGroupNum:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->et_step_distance:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->ll_judge:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->moveTv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->switchTv:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_select_step:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->include_route_edit_click_area_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
