.class public Lcn/mucang/android/jiakaoyi/examk2/b/d;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:I

.field private final d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    const/16 p1, 0x1f4

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/d;->c:I

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/b/d;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/b/d;->d:Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    :cond_0
    return-void
.end method
