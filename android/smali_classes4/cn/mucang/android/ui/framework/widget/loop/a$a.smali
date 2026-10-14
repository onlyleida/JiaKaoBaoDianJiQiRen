.class Lcn/mucang/android/ui/framework/widget/loop/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/loop/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/framework/widget/loop/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/framework/widget/loop/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/a$a;->a:Lcn/mucang/android/ui/framework/widget/loop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/a$a;->a:Lcn/mucang/android/ui/framework/widget/loop/a;

    invoke-static {v0}, Lcn/mucang/android/ui/framework/widget/loop/a;->a(Lcn/mucang/android/ui/framework/widget/loop/a;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/a$a;->a:Lcn/mucang/android/ui/framework/widget/loop/a;

    invoke-static {p1}, Lcn/mucang/android/ui/framework/widget/loop/a;->b(Lcn/mucang/android/ui/framework/widget/loop/a;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
