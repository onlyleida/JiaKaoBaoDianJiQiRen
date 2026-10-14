.class public Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BC::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        "C:",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "TBC;",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;>",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d<",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/a;"
    }
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i()Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method
