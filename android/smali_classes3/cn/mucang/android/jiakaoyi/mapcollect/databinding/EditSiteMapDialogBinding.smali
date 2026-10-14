.class public final Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final cityName:Landroid/widget/TextView;

.field public final cityNameLayout:Landroid/widget/LinearLayout;

.field public final closeIv:Landroid/widget/ImageView;

.field public final gpsBase:Landroid/widget/TextView;

.field public final gpsBaseLayout:Landroid/widget/LinearLayout;

.field public final isPublicIv:Landroid/widget/ImageView;

.field public final line1:Landroid/widget/ImageView;

.field public final line3:Landroid/widget/ImageView;

.field public final nameLayout:Landroid/widget/LinearLayout;

.field public final nameSchool:Landroid/widget/EditText;

.field public final nameSite:Landroid/widget/EditText;

.field public final okTv:Landroid/widget/TextView;

.field public final publicLayout:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final siteNameLayout:Landroid/widget/LinearLayout;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityName:Landroid/widget/TextView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->cityNameLayout:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->closeIv:Landroid/widget/ImageView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBase:Landroid/widget/TextView;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->gpsBaseLayout:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->isPublicIv:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->line1:Landroid/widget/ImageView;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->line3:Landroid/widget/ImageView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameLayout:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSchool:Landroid/widget/EditText;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->nameSite:Landroid/widget/EditText;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->okTv:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->publicLayout:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->siteNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->cityName:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->cityNameLayout:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->closeIv:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->gpsBase:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->gpsBaseLayout:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->isPublicIv:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->line1:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->line3:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->nameLayout:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->nameSchool:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/EditText;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->nameSite:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/EditText;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->okTv:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->publicLayout:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/FrameLayout;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->siteNameLayout:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->titleTv:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v19}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v1

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->edit_site_map_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/EditSiteMapDialogBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
