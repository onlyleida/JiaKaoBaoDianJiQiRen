.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final bDeviceNumTv:Landroid/widget/TextView;

.field public final bPlaceTv:Landroid/widget/TextView;

.field public final bVersionTv:Landroid/widget/TextView;

.field public final deviceExpires:Landroid/widget/TextView;

.field public final netDelay:Landroid/widget/TextView;

.field private final rootView:Landroid/view/View;

.field public final stationDistance:Landroid/widget/TextView;

.field public final stationState:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->bDeviceNumTv:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->bPlaceTv:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->bVersionTv:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->deviceExpires:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->netDelay:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->stationDistance:Landroid/widget/TextView;

    .line 9
    iput-object p8, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->stationState:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;
    .locals 11

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->bDeviceNumTv:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->bPlaceTv:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->bVersionTv:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deviceExpires:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->netDelay:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->stationDistance:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->stationState:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 15
    new-instance v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;
    .locals 1

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->main_top:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
