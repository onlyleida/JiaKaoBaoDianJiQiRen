.class public final Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;
.super Lnet/lucode/hackware/magicindicator/e/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/TTNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;",
        "Lnet/lucode/hackware/magicindicator/e/c/b/a;",
        "Landroid/content/Context;",
        "context",
        "",
        "index",
        "Lnet/lucode/hackware/magicindicator/e/c/b/d;",
        "getTitleView",
        "(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/e/c/b/d;",
        "getCount",
        "()I",
        "Lnet/lucode/hackware/magicindicator/e/c/b/c;",
        "getIndicator",
        "(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/e/c/b/c;",
        "",
        "",
        "items",
        "Ljava/util/List;",
        "Landroidx/viewpager/widget/ViewPager;",
        "pager",
        "Landroidx/viewpager/widget/ViewPager;",
        "<init>",
        "(Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroidx/viewpager/widget/ViewPager;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/b/a;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->items:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->pager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static final synthetic access$getPager$p(Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/e/c/b/c;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lnet/lucode/hackware/magicindicator/e/c/c/a;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;->setMode(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;->setLineHeight(F)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;->setRoundRadius(F)V

    new-array p1, p1, [Ljava/lang/Integer;

    const-string v1, "#008AFF"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;->setColors([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/e/c/b/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/widget/TTPagerTitleView;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/library/widget/TTPagerTitleView;-><init>(Landroid/content/Context;)V

    const-string v1, "#ff6e6e6e"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/e/b;->setNormalColor(I)V

    const-string v1, "#333333"

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/e/b;->setSelectedColor(I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/mucang/sundial/library/R$dimen;->tt__text_size_tab:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;

    invoke-direct {p1, p0, p2}, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;-><init>(Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p1, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;

    invoke-direct {p1, v0}, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;-><init>(Lcn/mucang/sundial/library/widget/TTPagerTitleView;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method
