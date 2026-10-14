.class final Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
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
.field final synthetic $titleView:Lcn/mucang/sundial/library/widget/TTPagerTitleView;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/TTPagerTitleView;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;->$titleView:Lcn/mucang/sundial/library/widget/TTPagerTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;->$titleView:Lcn/mucang/sundial/library/widget/TTPagerTitleView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    const/high16 v1, 0x42400000    # 48.0f

    .line 2
    invoke-static {v1}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter$getTitleView$2;->$titleView:Lcn/mucang/sundial/library/widget/TTPagerTitleView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
