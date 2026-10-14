.class public final Lcn/mucang/android/core/task/b;
.super Lcn/mucang/android/core/task/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/core/task/f<",
        "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/core/task/DownloadAction;",
        "Lcn/mucang/android/core/task/TaskAction;",
        "Lcn/mucang/android/core/task/SubTask$DownloadSubTask;",
        "taskId",
        "",
        "subTask",
        "(JLcn/mucang/android/core/task/SubTask$DownloadSubTask;)V",
        "run",
        "",
        "Companion",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLcn/mucang/android/core/task/SubTask$DownloadSubTask;)V
    .locals 1

    const-string v0, "subTask"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/core/task/f;-><init>(JLjava/lang/Object;Lkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/task/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;

    invoke-virtual {v0}, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->getMd5()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/http/a;->q()Lcn/mucang/android/core/http/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/mucang/android/core/task/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;

    invoke-virtual {v4}, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/core/http/a;->v(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v3, v5

    :cond_0
    check-cast v3, Ljava/io/InputStream;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 8
    invoke-static {v3}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/core/utils/j;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v0, v6, v4}, Lkotlin/text/l;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 12
    :cond_3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    invoke-static {v3, v5}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v0

    :goto_2
    if-nez v5, :cond_4

    const/4 v4, 0x2

    .line 14
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 16
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Lcn/mucang/android/core/task/h;

    invoke-direct {v3}, Lcn/mucang/android/core/task/h;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/core/task/f;->b()J

    move-result-wide v4

    invoke-virtual {p0}, Lcn/mucang/android/core/task/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;

    invoke-virtual {v1}, Lcn/mucang/android/core/task/SubTask$DownloadSubTask;->getSubTaskId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "content.toString()"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/core/task/h;->c(JJLjava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    return-void

    :catchall_2
    move-exception v0

    .line 19
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v3, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
