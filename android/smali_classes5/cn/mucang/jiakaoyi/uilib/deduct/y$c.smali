.class Lcn/mucang/jiakaoyi/uilib/deduct/y$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->b:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deductScore:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->c:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->deductReason:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->d:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/y$c;->e:Landroid/view/View;

    return-void
.end method
