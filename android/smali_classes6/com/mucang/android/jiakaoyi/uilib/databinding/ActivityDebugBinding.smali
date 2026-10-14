.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final btnClear:Landroid/widget/TextView;

.field public final btnDown:Landroid/widget/TextView;

.field public final btnUp:Landroid/widget/TextView;

.field public final etSearch:Landroid/widget/EditText;

.field public final llArrows:Landroid/widget/LinearLayout;

.field public final llSearch:Landroid/widget/LinearLayout;

.field public final lock:Landroid/widget/CheckBox;

.field public final logInfo:Landroidx/recyclerview/widget/RecyclerView;

.field public final rbFilter:Landroid/widget/RadioButton;

.field public final rbLocation:Landroid/widget/RadioButton;

.field public final rgSearchMode:Landroid/widget/RadioGroup;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final spType:Landroid/widget/Spinner;

.field public final titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/Spinner;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnClear:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnDown:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->btnUp:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->etSearch:Landroid/widget/EditText;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->llArrows:Landroid/widget/LinearLayout;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->llSearch:Landroid/widget/LinearLayout;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    .line 10
    iput-object p9, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->logInfo:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    iput-object p10, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rbFilter:Landroid/widget/RadioButton;

    .line 12
    iput-object p11, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rbLocation:Landroid/widget/RadioButton;

    .line 13
    iput-object p12, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rgSearchMode:Landroid/widget/RadioGroup;

    .line 14
    iput-object p13, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->spType:Landroid/widget/Spinner;

    .line 15
    iput-object p14, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->btnClear:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->btnDown:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->btnUp:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->etSearch:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->llArrows:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->llSearch:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->lock:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->logInfo:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->rbFilter:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RadioButton;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->rbLocation:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RadioButton;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->rgSearchMode:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RadioGroup;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->spType:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Spinner;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->titleLayout:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    move-result-object v17

    .line 28
    new-instance v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/Spinner;Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->activity_debug:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
