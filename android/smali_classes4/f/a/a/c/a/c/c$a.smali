.class Lf/a/a/c/a/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/c/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a/a/c/a/c/c;


# direct methods
.method constructor <init>(Lf/a/a/c/a/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/a/c/c$a;->a:Lf/a/a/c/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/c/a/c/c$a;->a:Lf/a/a/c/a/c/c;

    invoke-static {v0}, Lf/a/a/c/a/c/c;->a(Lf/a/a/c/a/c/c;)Lf/a/a/c/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/c/a/c/d;->stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    iget-object v2, p0, Lf/a/a/c/a/c/c$a;->a:Lf/a/a/c/a/c/c;

    invoke-static {v2}, Lf/a/a/c/a/c/c;->a(Lf/a/a/c/a/c/c;)Lf/a/a/c/a/c/d;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/c/a/c/d;->getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    move-result-object v2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$a;->createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    return-object p1
.end method
