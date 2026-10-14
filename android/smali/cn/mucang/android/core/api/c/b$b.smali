.class Lcn/mucang/android/core/api/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/c/b;->d(Lcn/mucang/android/core/api/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/c/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/c/b$b;->a:Lcn/mucang/android/core/api/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/api/c/b$b;->a:Lcn/mucang/android/core/api/c/a;

    invoke-interface {v0}, Lcn/mucang/android/core/api/c/a;->request()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/api/c/b$b$a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/api/c/b$b$a;-><init>(Lcn/mucang/android/core/api/c/b$b;Ljava/lang/Object;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v0, Lcn/mucang/android/core/api/c/b$b$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/c/b$b$c;-><init>(Lcn/mucang/android/core/api/c/b$b;)V

    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    instance-of v1, v0, Lcn/mucang/android/core/api/exception/WeakRefLostException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcn/mucang/android/core/api/c/b$b$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/c/b$b$c;-><init>(Lcn/mucang/android/core/api/c/b$b;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_0
    :try_start_2
    new-instance v1, Lcn/mucang/android/core/api/c/b$b$b;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/core/api/c/b$b$b;-><init>(Lcn/mucang/android/core/api/c/b$b;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    new-instance v0, Lcn/mucang/android/core/api/c/b$b$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/api/c/b$b$c;-><init>(Lcn/mucang/android/core/api/c/b$b;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Lcn/mucang/android/core/api/c/b$b$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/api/c/b$b$c;-><init>(Lcn/mucang/android/core/api/c/b$b;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 9
    throw v0
.end method
