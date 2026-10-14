.class Lcn/mucang/android/core/callphone/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/callphone/a;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/callphone/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/callphone/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/callphone/a$a;->a:Lcn/mucang/android/core/callphone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a$a;->a:Lcn/mucang/android/core/callphone/a;

    invoke-static {v0}, Lcn/mucang/android/core/callphone/a;->a(Lcn/mucang/android/core/callphone/a;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1388

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/callphone/a$a;->a:Lcn/mucang/android/core/callphone/a;

    invoke-static {v2, v0, v1}, Lcn/mucang/android/core/callphone/a;->b(Lcn/mucang/android/core/callphone/a;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a$a;->a:Lcn/mucang/android/core/callphone/a;

    invoke-static {v0}, Lcn/mucang/android/core/callphone/a;->a(Lcn/mucang/android/core/callphone/a;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/core/callphone/a$a;->a:Lcn/mucang/android/core/callphone/a;

    invoke-static {v1}, Lcn/mucang/android/core/callphone/a;->a(Lcn/mucang/android/core/callphone/a;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw v0

    :cond_0
    :goto_2
    return-void
.end method
