.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->a:Landroid/widget/TextView;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->refreshIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->b:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->addIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->c:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->deleteIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$f;->d:Landroid/widget/ImageView;

    return-void
.end method
