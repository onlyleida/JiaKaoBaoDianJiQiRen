.class Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;->a:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->c(I)V

    return-void
.end method
