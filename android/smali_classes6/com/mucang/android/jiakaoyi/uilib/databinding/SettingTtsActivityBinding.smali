.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final pitchSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final speed30:Landroid/widget/RadioButton;

.field public final speed40:Landroid/widget/RadioButton;

.field public final speed50:Landroid/widget/RadioButton;

.field public final speed60:Landroid/widget/RadioButton;

.field public final speed70:Landroid/widget/RadioButton;

.field public final speedRadio:Landroid/widget/RadioGroup;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

.field public final tryListen:Landroid/widget/TextView;

.field public final voiceClearTv:Landroid/widget/TextView;

.field public final voiceDebugTv:Landroid/widget/TextView;

.field public final voicePackDebugTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->rootView:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->pitchSeekBar:Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed30:Landroid/widget/RadioButton;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed40:Landroid/widget/RadioButton;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed50:Landroid/widget/RadioButton;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed60:Landroid/widget/RadioButton;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speed70:Landroid/widget/RadioButton;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->speedRadio:Landroid/widget/RadioGroup;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    .line 11
    iput-object p10, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->tryListen:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceClearTv:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voiceDebugTv:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->voicePackDebugTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->pitchSeekBar:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speed30:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speed40:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speed50:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speed60:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speed70:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->speedRadio:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RadioGroup;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->titleLayout:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v12

    .line 18
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->tryListen:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 20
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->voiceClearTv:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 22
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->voiceDebugTv:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 24
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->voicePackDebugTv:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 26
    new-instance v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;-><init>(Landroid/widget/LinearLayout;Lcn/mucang/jiakaoyi/uilib/ui/widget/JSeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->setting_tts_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsActivityBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
