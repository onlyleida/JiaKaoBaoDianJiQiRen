.class public Lcn/mucang/android/core/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DialogUtils"

    const-string v1, "safeDismiss"

    .line 2
    invoke-static {v0, v1, p0}, Lcn/mucang/android/core/utils/t;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/app/Dialog;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcn/mucang/android/core/utils/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/utils/a;-><init>(Landroid/app/Dialog;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
