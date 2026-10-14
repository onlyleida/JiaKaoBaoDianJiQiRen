.class Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method


# virtual methods
.method public onStepEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_XiaCheJianCha:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;->stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/c;->getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    move-result-object v2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$a;->createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    return-object p1
.end method
