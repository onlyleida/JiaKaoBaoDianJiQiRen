.class public final Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u0008J@\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0012H\u0016J\u0006\u0010\u0019\u001a\u00020\u0008R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/YuvFrameCallback;",
        "checkFace",
        "",
        "i420",
        "picture",
        "Lkotlin/Function1;",
        "Ljava/io/File;",
        "",
        "(ZZLkotlin/jvm/functions/Function1;)V",
        "capture",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "dir",
        "isChecking",
        "onFrame",
        "data",
        "",
        "width",
        "",
        "height",
        "stride",
        "size",
        "timeUs",
        "",
        "rotation",
        "release",
        "sundial_release"
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
.field private final a:Z

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/io/File;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z


# direct methods
.method public constructor <init>(ZZLkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string p1, "picture"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->a:Z

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->b:Lkotlin/jvm/b/l;

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "sundial"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->c:Ljava/io/File;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;-><init>(ZZLkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->c:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->a:Z

    return p0
.end method

.method public static final synthetic e(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;)Lkotlin/jvm/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->b:Lkotlin/jvm/b/l;

    return-object p0
.end method

.method public static final synthetic f(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->e:Z

    return-void
.end method


# virtual methods
.method public a([BIIIIJI)V
    .locals 11

    move-object v6, p0

    const-string v0, "data"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v6, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v6, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v6, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;->e:Z

    .line 4
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$onFrame$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;[BIILkotlin/coroutines/c;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    move-object p1, v7

    move-object p2, v8

    move-object p3, v9

    move-object p4, v10

    move/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$capture$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/jiakaoyi/sundial/client/FrameCallback$capture$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method
