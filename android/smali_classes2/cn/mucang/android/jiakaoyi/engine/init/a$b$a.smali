.class Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/engine/init/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/init/a$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/init/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/init/a$b$a;->a:Lcn/mucang/android/jiakaoyi/engine/init/a$b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a$b;->a:Lcn/mucang/android/jiakaoyi/engine/init/a;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->stateCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/init/a;->state:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
