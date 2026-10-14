.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final btnHalfClutchEnd:Landroid/widget/TextView;

.field public final btnHalfClutchStart:Landroid/widget/TextView;

.field public final etHalfClutchEnd:Landroid/widget/EditText;

.field public final etHalfClutchStart:Landroid/widget/EditText;

.field public final ivRpm:Landroid/widget/Button;

.field public final ivXc:Landroid/widget/Button;

.field private final rootView:Landroid/widget/ScrollView;

.field public final temp1:Landroid/widget/TextView;

.field public final temp2:Landroid/widget/TextView;

.field public final tipTv:Landroid/widget/TextView;

.field public final tvRpm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvXc:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->rootView:Landroid/widget/ScrollView;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->btnHalfClutchEnd:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->btnHalfClutchStart:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchEnd:Landroid/widget/EditText;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->etHalfClutchStart:Landroid/widget/EditText;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivRpm:Landroid/widget/Button;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->ivXc:Landroid/widget/Button;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->temp1:Landroid/widget/TextView;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->temp2:Landroid/widget/TextView;

    .line 11
    iput-object p10, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tipTv:Landroid/widget/TextView;

    .line 12
    iput-object p11, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tvRpm:Landroid/widget/TextView;

    .line 13
    iput-object p12, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tvTitle:Landroid/widget/TextView;

    .line 14
    iput-object p13, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->tvXc:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->btn_half_clutch_end:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->btn_half_clutch_start:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->et_half_clutch_end:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->et_half_clutch_start:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->iv_rpm:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->iv_xc:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->temp1:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->temp2:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tipTv:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tv_rpm:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tv_title:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tv_xc:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 26
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->half_clutch_calibartion:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/HalfClutchCalibartionBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
