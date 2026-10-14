.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final cardLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;

.field public final ivClose:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final scanLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;

.field public final textView4:Landroid/widget/TextView;

.field public final textview2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->cardLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->ivClose:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->scanLayout:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->textView4:Landroid/widget/TextView;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->textview2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 9

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cardLayout:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;

    move-result-object v4

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->ivClose:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->scanLayout:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;

    move-result-object v6

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->textView4:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->textview2:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;-><init>(Landroid/widget/RelativeLayout;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalCardBinding;Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutAbnormalScanBinding;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_abnormal_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
