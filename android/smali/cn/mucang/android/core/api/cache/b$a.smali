.class Lcn/mucang/android/core/api/cache/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/cache/b;->doRemoteFirstWithTimeout(Ljava/lang/String;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcn/mucang/android/core/api/ApiResponse;

.field final synthetic b:Lcn/mucang/android/core/api/cache/c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Lcn/mucang/android/core/api/exception/ApiException;

.field final synthetic f:[Lcn/mucang/android/core/api/exception/HttpException;

.field final synthetic g:[Lcn/mucang/android/core/api/exception/InternalException;

.field final synthetic h:Ljava/util/concurrent/CountDownLatch;

.field final synthetic i:Lcn/mucang/android/core/api/cache/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/cache/b;[Lcn/mucang/android/core/api/ApiResponse;Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/String;[Lcn/mucang/android/core/api/exception/ApiException;[Lcn/mucang/android/core/api/exception/HttpException;[Lcn/mucang/android/core/api/exception/InternalException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/b$a;->i:Lcn/mucang/android/core/api/cache/b;

    iput-object p2, p0, Lcn/mucang/android/core/api/cache/b$a;->a:[Lcn/mucang/android/core/api/ApiResponse;

    iput-object p3, p0, Lcn/mucang/android/core/api/cache/b$a;->b:Lcn/mucang/android/core/api/cache/c;

    iput-object p4, p0, Lcn/mucang/android/core/api/cache/b$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/core/api/cache/b$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/android/core/api/cache/b$a;->e:[Lcn/mucang/android/core/api/exception/ApiException;

    iput-object p7, p0, Lcn/mucang/android/core/api/cache/b$a;->f:[Lcn/mucang/android/core/api/exception/HttpException;

    iput-object p8, p0, Lcn/mucang/android/core/api/cache/b$a;->g:[Lcn/mucang/android/core/api/exception/InternalException;

    iput-object p9, p0, Lcn/mucang/android/core/api/cache/b$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/b$a;->a:[Lcn/mucang/android/core/api/ApiResponse;

    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$a;->i:Lcn/mucang/android/core/api/cache/b;

    iget-object v3, p0, Lcn/mucang/android/core/api/cache/b$a;->b:Lcn/mucang/android/core/api/cache/c;

    iget-object v4, p0, Lcn/mucang/android/core/api/cache/b$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/core/api/cache/b$a;->d:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/mucang/android/core/api/cache/b;->doFetchRemote(Lcn/mucang/android/core/api/cache/c;Ljava/lang/String;Ljava/lang/String;Z)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcn/mucang/android/core/api/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/mucang/android/core/api/exception/InternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$a;->g:[Lcn/mucang/android/core/api/exception/InternalException;

    new-instance v3, Lcn/mucang/android/core/api/exception/InternalException;

    invoke-direct {v3, v1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/Throwable;)V

    aput-object v3, v2, v0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$a;->g:[Lcn/mucang/android/core/api/exception/InternalException;

    aput-object v1, v2, v0

    goto :goto_0

    :catch_2
    move-exception v1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$a;->f:[Lcn/mucang/android/core/api/exception/HttpException;

    aput-object v1, v2, v0

    goto :goto_0

    :catch_3
    move-exception v1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/core/api/cache/b$a;->e:[Lcn/mucang/android/core/api/exception/ApiException;

    aput-object v1, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/b$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Lcn/mucang/android/core/api/cache/b$a;->h:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    throw v0
.end method
