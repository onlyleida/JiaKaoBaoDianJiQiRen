.class Lcn/mucang/android/core/config/MucangConfig$a;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/config/MucangConfig;->u(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->a()I

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->d()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->b()I

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->y(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->c()I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->y(Landroid/app/Activity;)V

    return-void
.end method
