.class public interface abstract Lcn/mucang/android/jiakaoyi/engine/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/engine/i/c$b;,
        Lcn/mucang/android/jiakaoyi/engine/i/c$a;
    }
.end annotation


# virtual methods
.method public abstract canExeMoreThanOneStep(Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;)Z
.end method

.method public abstract createGlobalEvents(Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
.end method

.method public abstract getEngineType()I
.end method

.method public abstract getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;
.end method

.method public abstract stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;
.end method

.method public abstract stepList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;"
        }
    .end annotation
.end method
