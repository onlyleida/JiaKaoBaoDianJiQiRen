.class public final Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final idCardNumber:Landroid/widget/EditText;

.field public final ignore:Landroid/widget/TextView;

.field public final okBtn:Landroid/widget/Button;

.field public final otherWay:Landroid/widget/TextView;

.field public final realNameEt:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/ScrollView;

.field public final titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

.field public final tvCardNumber:Landroid/widget/TextView;

.field public final tvCardType:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->rootView:Landroid/widget/ScrollView;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->idCardNumber:Landroid/widget/EditText;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->ignore:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->okBtn:Landroid/widget/Button;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->otherWay:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->realNameEt:Landroid/widget/EditText;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->titleBar:Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->tvCardNumber:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->tvCardType:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;
    .locals 13

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->id_card_number:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/framework/account/R$id;->ignore:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->ok_btn:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/framework/account/R$id;->other_way:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/framework/account/R$id;->real_name_et:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/framework/account/R$id;->title_bar:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;

    move-result-object v9

    .line 14
    sget v0, Lcn/mucang/android/framework/account/R$id;->tv_card_number:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 16
    sget v0, Lcn/mucang/android/framework/account/R$id;->tv_card_type:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 18
    sget v0, Lcn/mucang/android/framework/account/R$id;->tv_name:I

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 20
    new-instance v0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Lcn/mucang/android/framework/account/databinding/AccountIncludeTitleBarBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/framework/account/R$layout;->account__activity_auth_real_name:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->bind(Landroid/view/View;)Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/framework/account/databinding/AccountActivityAuthRealNameBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
