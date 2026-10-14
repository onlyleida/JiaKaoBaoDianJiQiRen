.class public final Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bigThan:Landroid/widget/RadioButton;

.field public final disRadio:Landroid/widget/RadioGroup;

.field public final disValue:Landroid/widget/EditText;

.field public final equal:Landroid/widget/RadioButton;

.field public final equalLayout:Landroid/widget/LinearLayout;

.field public final equalValue:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final smallThan:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/RadioButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->bigThan:Landroid/widget/RadioButton;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->disRadio:Landroid/widget/RadioGroup;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->disValue:Landroid/widget/EditText;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->equal:Landroid/widget/RadioButton;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->equalLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->equalValue:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->smallThan:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;
    .locals 11

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->bigThan:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->disRadio:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioGroup;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->disValue:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->equal:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->equalLayout:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->equalValue:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->smallThan:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_0

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/RadioButton;)V

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->teach_collect_v_item_dis2line:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachCollectVItemDis2lineBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
