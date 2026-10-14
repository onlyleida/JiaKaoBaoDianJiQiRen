.class final Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->e(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;->a:[Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;->b:Landroid/widget/Spinner;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->select_teach_plan_template_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tv:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->check:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-object p2
.end method
