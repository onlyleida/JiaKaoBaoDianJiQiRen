.class public final Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final closeIv:Landroid/widget/ImageView;

.field public final line1:Landroid/widget/ImageView;

.field public final modelLayout:Landroid/widget/LinearLayout;

.field public final modelNameTv:Landroid/widget/TextView;

.field public final nameLayout:Landroid/widget/LinearLayout;

.field public final nameSchoolTv:Landroid/widget/EditText;

.field public final numberLayout:Landroid/widget/LinearLayout;

.field public final numberTv:Landroid/widget/EditText;

.field public final okTv:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->closeIv:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->line1:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->modelLayout:Landroid/widget/LinearLayout;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->modelNameTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->nameLayout:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->nameSchoolTv:Landroid/widget/EditText;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->numberLayout:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->numberTv:Landroid/widget/EditText;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->okTv:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;
    .locals 14

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->closeIv:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->line1:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->modelLayout:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->modelNameTv:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->nameLayout:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->nameSchoolTv:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->numberLayout:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->numberTv:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->okTv:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 19
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->titleTv:I

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 21
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->edit_car_data_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditCarDataDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
