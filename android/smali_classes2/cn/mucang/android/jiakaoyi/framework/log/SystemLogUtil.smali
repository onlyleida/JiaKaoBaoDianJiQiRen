.class public final Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0006\u0010\u000b\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;",
        "",
        "()V",
        "TAG",
        "",
        "getLogcatPID",
        "",
        "startLog",
        "",
        "save",
        "",
        "stopLog",
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


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;->a:Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil;->b()I

    move-result p0

    return p0
.end method

.method private final b()I
    .locals 6

    const-string v0, "ps |grep logcat$ |cut -c 10-15"

    const-string v1, "SystemLogUtil"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    const-string v5, "-c"

    filled-new-array {v4, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    move-object v5, v2

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x2000

    instance-of v4, v5, Ljava/io/BufferedReader;

    if-eqz v4, :cond_2

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v5, v4

    :goto_2
    if-nez v5, :cond_3

    move-object v3, v2

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_3
    invoke-static {v1, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-static {v3}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v3}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    .line 8
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    :goto_5
    const-string v0, "pid:"

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_7

    const/4 v0, -0x1

    goto :goto_6

    .line 10
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    return v0
.end method

.method public static final c(Z)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil$startLog$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil$startLog$1;-><init>(ZLkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil$stopLog$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/framework/log/SystemLogUtil$stopLog$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
