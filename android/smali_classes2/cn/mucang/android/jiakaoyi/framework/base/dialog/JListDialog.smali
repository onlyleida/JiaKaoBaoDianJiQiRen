.class public Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;,
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;,
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;,
        Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lf/a/a/e/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a/e/a/b/b<",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$style;->jiakaoyi_list_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->g:Lf/a/a/e/a/b/b;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;ILcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->b(ILcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private b(ILcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$layout;->common_dialog_list_item:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/framework/R$id;->nameTv:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$id;->selectedIv:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->d()I

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;->a(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->c(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;ILandroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$layout;->common_dialog_list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->dialog_title_tv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a:Landroid/widget/TextView;

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->dialog_title_divider:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->b:Landroid/view/View;

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->closeIv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->d:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/framework/R$id;->dialog_btn_box:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->c:Landroid/widget/ListView;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDrawingCacheBackgroundColor(I)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->b:I

    if-lez p1, :cond_1

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->g:Lf/a/a/e/a/b/b;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->g:Lf/a/a/e/a/b/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lf/a/a/e/a/b/b;->a(Ljava/util/List;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->d:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;->CENTER:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$ListGravity;

    const/4 v1, -0x2

    if-ne p1, v0, :cond_3

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_160:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->c:Z

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/mucang/android/jiakaoyi/framework/R$dimen;->dp_90:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_1
    return-void
.end method
