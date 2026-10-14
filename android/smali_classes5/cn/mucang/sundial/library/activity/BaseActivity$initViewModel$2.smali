.class final Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/BaseActivity;->initViewModel()V
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
        "Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$2;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$2;->this$0:Lcn/mucang/sundial/library/activity/BaseActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/BaseActivity;->access$showLatLon(Lcn/mucang/sundial/library/activity/BaseActivity;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/BaseActivity$initViewModel$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/UpdateSpeedEvent;)V

    return-void
.end method
