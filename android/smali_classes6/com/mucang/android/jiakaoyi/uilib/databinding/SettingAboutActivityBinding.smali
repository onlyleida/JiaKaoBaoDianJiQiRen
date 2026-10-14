.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final actionLog:Landroid/widget/TextView;

.field public final actionLogLayout:Landroid/widget/FrameLayout;

.field public final betaVersionTv:Landroid/widget/TextView;

.field public final faceRecordFl:Landroid/widget/FrameLayout;

.field public final iconIv:Landroid/widget/ImageView;

.field public final qrScan:Landroid/widget/TextView;

.field public final recordIv:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final tvPolicy:Landroid/widget/TextView;

.field public final versionTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->actionLog:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->actionLogLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->betaVersionTv:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->faceRecordFl:Landroid/widget/FrameLayout;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->iconIv:Landroid/widget/ImageView;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->qrScan:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->recordIv:Landroid/widget/ImageView;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 11
    iput-object p10, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->tvPolicy:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->versionTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;
    .locals 14

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->actionLog:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->actionLogLayout:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->betaVersionTv:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->faceRecordFl:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->iconIv:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->qrScan:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->recordIv:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->titleLayout:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v11

    .line 18
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tvPolicy:I

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 20
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->versionTv:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 22
    new-instance v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->setting_about_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
