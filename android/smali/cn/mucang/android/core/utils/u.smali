.class public Lcn/mucang/android/core/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/mucang/android/core/utils/u;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/u;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static d(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static g(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/u;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/u;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method private static i(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/utils/u$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/utils/u$a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/u;->i(Ljava/lang/String;Z)V

    return-void
.end method
