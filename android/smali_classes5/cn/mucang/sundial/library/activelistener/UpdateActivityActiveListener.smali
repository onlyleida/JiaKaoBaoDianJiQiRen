.class public final Lcn/mucang/sundial/library/activelistener/UpdateActivityActiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activelistener/UpdateActivityActiveListener;",
        "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/v;",
        "onFirstActivityCreated",
        "(Landroid/app/Activity;)V",
        "onActivityResumed",
        "onAllActivityDestroyed",
        "<init>",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/UpdateManager;->uploadCurrentVersionIfNeed()V

    return-void
.end method

.method public onAllActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/UpdateManager;->stopCheckUpdate()V

    return-void
.end method

.method public onFirstActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/UpdateManager;->startCheckUpdate()V

    return-void
.end method
