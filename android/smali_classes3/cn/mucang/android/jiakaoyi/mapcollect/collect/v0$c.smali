.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->b:Landroid/view/View;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->changOrientation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->c:Landroid/view/View;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->copy_turn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d:Landroid/view/View;

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->select_this:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->e:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$c;->b:Landroid/view/View;

    return-object p0
.end method
