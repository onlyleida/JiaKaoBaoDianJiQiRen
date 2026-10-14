.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->d(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
