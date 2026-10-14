.class public final Lcn/mucang/android/facelib/TimeOut;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eJ\u0006\u0010\t\u001a\u00020\u000bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/facelib/TimeOut;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "outTime",
        "",
        "(Lkotlinx/coroutines/CoroutineScope;J)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "updateTime",
        "cancel",
        "",
        "execute",
        "timeout",
        "Lkotlin/Function0;",
        "facelib_release"
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
.field private final a:Lkotlinx/coroutines/i0;

.field private final b:J

.field private c:J

.field private d:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/i0;J)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/facelib/TimeOut;->a:Lkotlinx/coroutines/i0;

    iput-wide p2, p0, Lcn/mucang/android/facelib/TimeOut;->b:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/facelib/TimeOut;->c:J

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/facelib/TimeOut;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/facelib/TimeOut;->b:J

    return-wide v0
.end method

.method public static final synthetic b(Lcn/mucang/android/facelib/TimeOut;)Lkotlinx/coroutines/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/facelib/TimeOut;->a:Lkotlinx/coroutines/i0;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/facelib/TimeOut;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/facelib/TimeOut;->c:J

    return-wide v0
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/TimeOut;->d:Lkotlinx/coroutines/t1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final e(Lkotlin/jvm/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "timeout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/facelib/TimeOut;->c:J

    .line 2
    iget-object v0, p0, Lcn/mucang/android/facelib/TimeOut;->d:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/facelib/TimeOut;->a:Lkotlinx/coroutines/i0;

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/android/facelib/TimeOut$execute$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/facelib/TimeOut$execute$1;-><init>(Lcn/mucang/android/facelib/TimeOut;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/facelib/TimeOut;->d:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/facelib/TimeOut;->c:J

    return-void
.end method
