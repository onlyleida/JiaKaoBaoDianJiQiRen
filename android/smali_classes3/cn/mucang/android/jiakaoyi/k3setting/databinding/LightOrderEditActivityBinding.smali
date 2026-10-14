.class public final Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final descTv:Landroid/widget/EditText;

.field public final divider:Landroid/view/View;

.field public final divider2:Landroid/view/View;

.field public final playCodeTv:Landroid/widget/TextView;

.field public final playTv:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final saveTv:Landroid/widget/TextView;

.field public final sortTv:Landroid/widget/TextView;

.field public final standardTv:Landroid/widget/TextView;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final titleVoiceCode:Landroid/widget/TextView;

.field public final tvVoiceNumber:Landroid/widget/TextView;

.field public final voice:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->descTv:Landroid/widget/EditText;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->divider:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->divider2:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->playCodeTv:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->playTv:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->saveTv:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->sortTv:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->standardTv:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->titleVoiceCode:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->tvVoiceNumber:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->voice:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->descTv:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->divider:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->divider2:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->playCodeTv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->playTv:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->saveTv:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->sortTv:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->standardTv:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->titleLayout:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v13

    .line 20
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->title_voice_code:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 22
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->tv_voice_number:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 24
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->voice:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->light_order_edit_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
