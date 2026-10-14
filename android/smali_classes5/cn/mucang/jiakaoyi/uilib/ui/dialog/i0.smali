.class public abstract Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;
.super Lf/a/a/a/n/d/f;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/n/d/f;-><init>()V

    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 2
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$style;->FragmentDialogAnimation:I

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->base_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    sget p3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->content_root:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->headerFl:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->b:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->v()I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->rightTopAction:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->a:Landroid/widget/TextView;

    .line 10
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/b;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->dialog_back:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->fragment_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->w()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->r(Landroid/view/View;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/i0;->t(Landroid/view/View;)V

    return-void
.end method

.method protected abstract v()I
.end method

.method protected abstract w()Ljava/lang/String;
.end method
