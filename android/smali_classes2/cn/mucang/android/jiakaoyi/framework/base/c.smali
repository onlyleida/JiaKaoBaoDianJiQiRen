.class public final Lcn/mucang/android/jiakaoyi/framework/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/JkyUncaughtExceptionHandler;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "defaultHandler",
        "interceptor",
        "Lcn/mucang/android/jiakaoyi/framework/GlobalInterceptor;",
        "(Ljava/lang/Thread$UncaughtExceptionHandler;Lcn/mucang/android/jiakaoyi/framework/GlobalInterceptor;)V",
        "getStackTrace",
        "",
        "t",
        "",
        "uncaughtException",
        "",
        "Ljava/lang/Thread;",
        "e",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/b;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcn/mucang/android/jiakaoyi/framework/b;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/c;->b:Lcn/mucang/android/jiakaoyi/framework/b;

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    invoke-static {v1, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "pw.use {\n            t.p\u2026  sw.toString()\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/c;->b:Lcn/mucang/android/jiakaoyi/framework/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/b;->j()V

    .line 3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/framework/base/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u6355\u83b7\u5f02\u5e38:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/f;->t()V

    const-wide/16 v0, 0x12c

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/c;->b:Lcn/mucang/android/jiakaoyi/framework/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/b;->c()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_1
    const-string p1, "\u9000\u51faAPP"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x2710

    goto :goto_2

    :cond_2
    const-wide/16 p1, 0x7d0

    :goto_2
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
