.class public final Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final deductReason:Landroid/widget/TextView;

.field public final deductScore:Landroid/widget/TextView;

.field public final deductTitle:Landroid/widget/FrameLayout;

.field public final delete:Landroid/widget/Button;

.field public final name:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 3
    iput-object p2, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->deductReason:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->deductScore:Landroid/widget/TextView;

    .line 5
    iput-object p4, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->deductTitle:Landroid/widget/FrameLayout;

    .line 6
    iput-object p5, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->delete:Landroid/widget/Button;

    .line 7
    iput-object p6, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->name:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->time:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;
    .locals 10

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deductReason:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deductScore:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 5
    move-object v6, p0

    check-cast v6, Landroid/widget/FrameLayout;

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->delete:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    .line 8
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->name:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 10
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->time:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 12
    new-instance p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;
    .locals 2

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->exam_fragment_deduct_detail_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->bind(Landroid/view/View;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExamFragmentDeductDetailItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
