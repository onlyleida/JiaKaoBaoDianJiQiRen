.class public Lcn/mucang/android/core/api/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Lcn/mucang/android/core/api/c/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/api/c/b;->c(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public static b(Lcn/mucang/android/core/api/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/core/api/c/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/api/c/b;->c(Lcn/mucang/android/core/api/c/a;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/c/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/c/b$a;-><init>(Lcn/mucang/android/core/api/c/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static c(Lcn/mucang/android/core/api/c/a;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcn/mucang/android/core/api/c/a;->a()V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/api/c/b;->d(Lcn/mucang/android/core/api/c/a;)V
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/WeakRefLostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static d(Lcn/mucang/android/core/api/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/core/api/c/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/c/b$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/c/b$b;-><init>(Lcn/mucang/android/core/api/c/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
