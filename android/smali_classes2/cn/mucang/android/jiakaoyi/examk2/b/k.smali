.class public Lcn/mucang/android/jiakaoyi/examk2/b/k;
.super Lcn/mucang/android/jiakaoyi/examk2/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/b/g<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

.field public c:D

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/b/g;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->d:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->e:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->f:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->g:Z

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/b/g;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/z;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/k;->c:D

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-eqz p3, :cond_0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
