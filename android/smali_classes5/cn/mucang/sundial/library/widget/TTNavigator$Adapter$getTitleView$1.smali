.class final Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/e/c/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;->this$0:Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;

    iput p2, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;->this$0:Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;

    invoke-static {p1}, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;->access$getPager$p(Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$1;->$index:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
