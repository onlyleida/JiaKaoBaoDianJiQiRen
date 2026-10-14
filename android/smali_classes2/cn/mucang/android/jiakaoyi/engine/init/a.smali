.class public abstract Lcn/mucang/android/jiakaoyi/engine/init/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile engine:Lcn/mucang/android/jiakaoyi/engine/c;

.field protected final lock:Ljava/lang/Object;

.field protected volatile state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

.field protected final stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->None:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->lock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public canStart()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract createEngine()Lcn/mucang/android/jiakaoyi/engine/c;
.end method

.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Destroy:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->doDestroy()V

    return-void
.end method

.method protected doDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->c()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEngine()Lcn/mucang/android/jiakaoyi/engine/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    return-object v0
.end method

.method public initEngine()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Destroy:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Resetting:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initializing:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->doDestroy()V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/init/a$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/init/a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isStart()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Start:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Destroy:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Resetting:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset() state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ; engine "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/engine/init/a$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/init/a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start() state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Start:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop() state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Start:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->t()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->None:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
