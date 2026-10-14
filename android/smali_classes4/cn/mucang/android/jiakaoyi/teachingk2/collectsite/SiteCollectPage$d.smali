.class Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->b:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->a:Landroid/widget/TextView;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->c:Landroid/view/View;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->uploadImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$d;->d:Landroid/view/View;

    return-void
.end method
