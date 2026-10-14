.class public final Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/TTNavigator;->updateTabs(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "cn/mucang/sundial/library/widget/TTNavigator$updateTabs$1$1",
        "Landroid/database/DataSetObserver;",
        "Lkotlin/v;",
        "onChanged",
        "()V",
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
.field final synthetic $items$inlined:Ljava/util/List;

.field final synthetic $pager$inlined:Landroidx/viewpager/widget/ViewPager;

.field final synthetic this$0:Lcn/mucang/sundial/library/widget/TTNavigator;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/TTNavigator;Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;->this$0:Lcn/mucang/sundial/library/widget/TTNavigator;

    iput-object p2, p0, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;->$items$inlined:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;->$pager$inlined:Landroidx/viewpager/widget/ViewPager;

    .line 1
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;->this$0:Lcn/mucang/sundial/library/widget/TTNavigator;

    iget-object v1, p0, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;->$pager$inlined:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/widget/TTNavigator;->access$updateTabs(Lcn/mucang/sundial/library/widget/TTNavigator;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method
