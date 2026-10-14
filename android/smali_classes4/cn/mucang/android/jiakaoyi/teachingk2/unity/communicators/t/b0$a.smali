.class public interface abstract Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0005H&J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/K3EngineController$EngineCallback;",
        "",
        "getEngineType",
        "",
        "getStepGetter",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Getter;",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "isPractice",
        "",
        "onEngineInitialed",
        "",
        "onExamResult",
        "examResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;",
        "onOneError",
        "deductInfo",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "onStep",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "stepResult",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepResult;",
        "onStepChanged",
        "routeId",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "stepStatus",
        "Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEngineType()I
.end method

.method public abstract m()Z
.end method

.method public abstract onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
.end method

.method public abstract onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
.end method

.method public abstract onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V
.end method

.method public abstract p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
.end method
