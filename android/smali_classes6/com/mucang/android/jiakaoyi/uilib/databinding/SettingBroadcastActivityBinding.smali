.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final angelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

.field public final distanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

.field public final leftLightTime:Landroid/widget/EditText;

.field public final leftLightTip:Landroid/widget/TextView;

.field public final llLight:Landroid/widget/LinearLayout;

.field public final needOrder:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final onlyUseDistance:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final saveLightTime:Landroid/widget/TextView;

.field public final teachAngelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

.field public final teachDistanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final warningLightTime:Landroid/widget/EditText;

.field public final warningLightTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->angelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->distanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->leftLightTime:Landroid/widget/EditText;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->leftLightTip:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->llLight:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->needOrder:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->onlyUseDistance:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->saveLightTime:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->teachAngelSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 12
    iput-object p11, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->teachDistanceSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 13
    iput-object p12, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 14
    iput-object p13, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->warningLightTime:Landroid/widget/EditText;

    .line 15
    iput-object p14, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->warningLightTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->angelSeekBar:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->distanceSeekBar:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->left_light_time:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->left_light_tip:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->ll_light:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->needOrder:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->onlyUseDistance:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->save_light_time:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->teachAngelSeekBar:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->teachDistanceSeekBar:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->titleLayout:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v15

    .line 24
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->warning_light_time:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/EditText;

    if-eqz v16, :cond_0

    .line 26
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->warning_light_tip:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 28
    new-instance v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;-><init>(Landroid/widget/LinearLayout;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v1

    .line 29
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->setting_broadcast_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingBroadcastActivityBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
