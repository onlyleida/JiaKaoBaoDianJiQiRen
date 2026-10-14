.class Lcn/mucang/android/jiakaoyi/engine/init/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/init/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/init/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Resetting:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->o()V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7
    :cond_0
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/init/a$b;)V

    :goto_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    const-string v1, "TAG"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f15\u64ce\u91cd\u7f6e\u5931\u8d25 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f15\u64ce\u91cd\u7f6e\u5931\u8d25 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f15\u64ce\u91cd\u7f6e\u5931\u8d25 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->InitError:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/init/a$b;)V

    goto :goto_1

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/init/a$b;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw v0
.end method
