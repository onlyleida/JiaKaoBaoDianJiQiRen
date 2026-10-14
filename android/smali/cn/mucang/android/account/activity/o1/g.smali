.class public abstract Lcn/mucang/android/account/activity/o1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/account/activity/ValidationActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/account/activity/o1/g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected a()Lcn/mucang/android/account/activity/ValidationActivity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/exception/WeakRefLostException;

    invoke-direct {v0}, Lcn/mucang/android/core/api/exception/WeakRefLostException;-><init>()V

    throw v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity;->y()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {v1}, Lcn/mucang/android/account/f;->i(Lcn/mucang/android/account/api/data/CheckType;)V

    :cond_0
    return-void
.end method
