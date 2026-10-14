.class public Lf/a/a/a/i/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lf/a/a/a/i/e;


# direct methods
.method public static a(Ljava/lang/String;)Lf/a/a/a/i/c;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0}, Lf/a/a/a/i/e;->e(Ljava/lang/String;)Lf/a/a/a/i/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Exception"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/a/i/e;

    invoke-direct {v0, p0}, Lf/a/a/a/i/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    .line 2
    new-instance p0, Lf/a/a/a/i/d;

    invoke-direct {p0}, Lf/a/a/a/i/d;-><init>()V

    const-string v1, "http://virtual.nav.mucang.cn"

    invoke-virtual {v0, v1, p0}, Lf/a/a/a/i/e;->l(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 3
    invoke-static {}, Lf/a/a/a/i/g;->c()V

    .line 4
    invoke-static {}, Lf/a/a/a/i/f;->a()V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0}, Lf/a/a/a/i/e;->f(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0, p1, p2}, Lf/a/a/a/i/e;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0}, Lf/a/a/a/i/e;->h(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0, p1}, Lf/a/a/a/i/e;->i(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/String;Lf/a/a/a/i/c;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0, p1}, Lf/a/a/a/i/e;->l(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lf/a/a/a/i/c;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0}, Lf/a/a/a/i/e;->m(Lf/a/a/a/i/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static i(Lf/a/a/a/i/c;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lf/a/a/a/i/h;->a:Lf/a/a/a/i/e;

    invoke-virtual {v0, p0}, Lf/a/a/a/i/e;->n(Lf/a/a/a/i/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
