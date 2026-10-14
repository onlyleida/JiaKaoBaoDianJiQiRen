.class public Lcn/mucang/android/account/h/a;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/h/a$c;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/account/h/a$c;

.field private b:Lcn/mucang/android/account/api/data/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method static synthetic r(Lcn/mucang/android/account/h/a;)Lcn/mucang/android/account/h/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/h/a;->a:Lcn/mucang/android/account/h/a$c;

    return-object p0
.end method

.method private s(Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcn/mucang/android/framework/account/R$id;->real_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lcn/mucang/android/framework/account/R$id;->card_number:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/account/h/a;->b:Lcn/mucang/android/account/api/data/a;

    invoke-virtual {v3}, Lcn/mucang/android/account/api/data/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/account/h/a;->b:Lcn/mucang/android/account/api/data/a;

    invoke-virtual {v2}, Lcn/mucang/android/account/api/data/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Lcn/mucang/android/framework/account/R$id;->ok_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 6
    sget v1, Lcn/mucang/android/framework/account/R$id;->cancel_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 7
    new-instance v1, Lcn/mucang/android/account/h/a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/h/a$a;-><init>(Lcn/mucang/android/account/h/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcn/mucang/android/account/h/a$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/h/a$b;-><init>(Lcn/mucang/android/account/h/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static t(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/a;Lcn/mucang/android/account/h/a$c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcn/mucang/android/account/h/a;

    invoke-direct {v0}, Lcn/mucang/android/account/h/a;-><init>()V

    .line 2
    iput-object p1, v0, Lcn/mucang/android/account/h/a;->b:Lcn/mucang/android/account/api/data/a;

    .line 3
    iput-object p2, v0, Lcn/mucang/android/account/h/a;->a:Lcn/mucang/android/account/h/a$c;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$style;->Account__Dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/account/R$layout;->account__dialog_auth_real_name_confirm:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/account/h/a;->s(Landroid/view/View;)V

    return-object p1
.end method
