.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final c:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;


# instance fields
.field private a:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/core/util/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/g<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;

    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;-><init>()V

    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->c:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 3
    new-instance v0, Landroidx/core/util/g;

    invoke-direct {v0, v1}, Landroidx/core/util/g;-><init>(I)V

    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->b:Landroidx/core/util/g;

    return-void
.end method

.method public static b()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;
    .locals 1

    .line 1
    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->c:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to enqueue async inflate request"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->b:Landroidx/core/util/g;

    invoke-virtual {v0}, Landroidx/core/util/g;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;

    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;-><init>()V

    :cond_0
    return-object v0
.end method

.method public d(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->e:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 2
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 3
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4
    iput v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->c:I

    .line 5
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->d:Landroid/view/View;

    .line 6
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->b:Landroidx/core/util/g;

    invoke-virtual {v0, p1}, Landroidx/core/util/g;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 6

    const-string v0, "AsyncLayoutInflater"

    .line 1
    :try_start_0
    iget-object v1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 2
    :try_start_1
    iget-object v3, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v4, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->c:I

    iget-object v5, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->d:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    .line 3
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    iget-object v0, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    move-exception v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;->e()V

    goto :goto_0
.end method
