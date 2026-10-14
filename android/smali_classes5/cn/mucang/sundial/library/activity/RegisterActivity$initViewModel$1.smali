.class final Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/RegisterActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
        ">;"
    }
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
        "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getItems$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lme/drakeet/multitype/Items;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getItems$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lme/drakeet/multitype/Items;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    const/4 v2, 0x0

    .line 4
    new-instance v9, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getCarNo()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\u8f66\u724c\u53f7"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    aput-object v9, v1, v2

    const/4 v2, 0x1

    .line 5
    new-instance v9, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getDevicePhone()Ljava/lang/String;

    move-result-object v5

    const-string v4, "\u7ec8\u7aef\u624b\u673a\u53f7"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    aput-object v9, v1, v2

    .line 6
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;->this$0:Lcn/mucang/sundial/library/activity/RegisterActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/RegisterActivity;->access$getAdapter$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lme/drakeet/multitype/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;->onChanged(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    return-void
.end method
