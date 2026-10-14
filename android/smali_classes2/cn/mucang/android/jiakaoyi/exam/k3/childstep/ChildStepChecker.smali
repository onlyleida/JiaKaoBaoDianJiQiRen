.class public abstract Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field public config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;",
            "Lcn/mucang/android/jiakaoyi/engine/i/c$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    return-void
.end method


# virtual methods
.method public abstract onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end method
