.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


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

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->re_collect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$d;->b:Landroid/widget/TextView;

    return-object p0
.end method
