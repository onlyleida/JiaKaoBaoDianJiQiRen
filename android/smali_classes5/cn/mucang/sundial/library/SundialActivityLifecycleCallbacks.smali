.class public final Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;",
        "Lcn/mucang/android/core/config/l;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lkotlin/v;",
        "onActivityCreated",
        "(Landroid/app/Activity;Landroid/os/Bundle;)V",
        "onActivityResumed",
        "(Landroid/app/Activity;)V",
        "onActivityPaused",
        "onActivityDestroyed",
        "",
        "activityCount",
        "I",
        "",
        "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
        "activityActiveListeners",
        "Ljava/util/List;",
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


# instance fields
.field private final activityActiveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private activityCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;

    .line 2
    new-instance v1, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;

    invoke-direct {v1}, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;

    invoke-direct {v1}, Lcn/mucang/sundial/library/activelistener/InitActivityActiveListener;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;

    invoke-direct {v1}, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcn/mucang/sundial/library/activelistener/UpdateActivityActiveListener;

    invoke-direct {v1}, Lcn/mucang/sundial/library/activelistener/UpdateActivityActiveListener;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityActiveListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p2, p1, Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityCount:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityCount:I

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/library/util/ActivityUtil;->push(Landroid/app/Activity;)V

    .line 4
    iget p2, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityCount:I

    if-ne p2, v0, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityActiveListeners:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;

    .line 7
    invoke-interface {v0, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;->onFirstActivityCreated(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/library/util/ActivityUtil;->pop(Landroid/app/Activity;)V

    .line 3
    iget v0, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityCount:I

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->isSingleApk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityActiveListeners:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;

    .line 7
    invoke-interface {v1, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;->onAllActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/library/util/ActivityUtil;->pop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    instance-of v0, p1, Lcn/mucang/sundial/library/activity/TopActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/SundialActivityLifecycleCallbacks;->activityActiveListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;

    .line 5
    invoke-interface {v1, p1}, Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
