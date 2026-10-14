.class public Lf/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/a/b;

    invoke-direct {v0}, Lf/a/a/a/b;-><init>()V

    invoke-static {v0}, Lf/a/a/a/i/h;->h(Lf/a/a/a/i/c;)V

    .line 2
    new-instance v0, Lf/a/a/a/g;

    invoke-direct {v0}, Lf/a/a/a/g;-><init>()V

    invoke-static {v0}, Lf/a/a/a/i/h;->i(Lf/a/a/a/i/c;)V

    .line 3
    sget-object v0, Lf/a/a/a/a;->a:Lf/a/a/a/a;

    invoke-static {v0}, Lf/a/a/a/s/e;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/b;->c()Lcn/mucang/android/core/webview/tracker/b;

    :cond_0
    return-void
.end method
