.class public final Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final backLayout:Landroid/widget/LinearLayout;

.field public final brand:Landroid/widget/TextView;

.field public final brandLayout:Landroid/widget/LinearLayout;

.field public final closeIv:Landroid/widget/ImageView;

.field public final etBack:Landroid/widget/EditText;

.field public final etFront:Landroid/widget/EditText;

.field public final etYear:Landroid/widget/EditText;

.field public final frontLayout:Landroid/widget/LinearLayout;

.field public final line1:Landroid/widget/ImageView;

.field public final okTv:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final series:Landroid/widget/TextView;

.field public final seriesLayout:Landroid/widget/LinearLayout;

.field public final titleTv:Landroid/widget/TextView;

.field public final yearLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->backLayout:Landroid/widget/LinearLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->brand:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->brandLayout:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->closeIv:Landroid/widget/ImageView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->etBack:Landroid/widget/EditText;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->etFront:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->etYear:Landroid/widget/EditText;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->frontLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->line1:Landroid/widget/ImageView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->okTv:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->series:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->seriesLayout:Landroid/widget/LinearLayout;

    .line 15
    iput-object p14, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->titleTv:Landroid/widget/TextView;

    .line 16
    iput-object p15, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->yearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->backLayout:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->brand:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->brandLayout:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->closeIv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->etBack:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->etFront:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->etYear:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->frontLayout:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->line1:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->okTv:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->series:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->seriesLayout:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->titleTv:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->yearLayout:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 30
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->dialog_collect_new_car_model:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/DialogCollectNewCarModelBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
