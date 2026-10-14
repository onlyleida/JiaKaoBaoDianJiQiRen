.class Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/engine/init/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/init/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/init/a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/init/a;->engine:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->b:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setPassScore(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
