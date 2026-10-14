.class public abstract Lcn/mucang/android/jiakaoyi/examk2/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        "C:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        "BC:",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private final c:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field private final d:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field private final e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBC;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field private h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

.field private i:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            "TBC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->i:F

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    .line 7
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    .line 9
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->g:Z

    return-void
.end method


# virtual methods
.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v1

    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 5
    :cond_1
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v1

    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    .line 7
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v1, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-result-object v1

    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne v1, v6, :cond_4

    .line 10
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 11
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    .line 12
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    .line 13
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v6, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->i:F

    sub-float/2addr v1, v6

    float-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v6, v8

    if-lez v1, :cond_4

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u9884\u62a5\u4e86\u4ee5\u540e\u53c8\u51fa\u9879\u76ee\u4e86"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    new-array v1, v4, [I

    const v6, 0x49449

    aput v6, v1, v5

    .line 15
    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->b:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    if-eqz v0, :cond_5

    .line 17
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 20
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->i:F

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u64ad\u62a5\u4e86\u9879\u76ee\u9884\u62a5\u8bed\u97f3"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->I(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 24
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->A()Z

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->d:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->g:Z

    if-nez p1, :cond_6

    .line 26
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->g:Z

    .line 27
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->c:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->I(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 29
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->s()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    if-ne p1, v3, :cond_8

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->c:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 33
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 34
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 35
    :cond_8
    :goto_0
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 36
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    .line 37
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>()V

    return-object p1

    :cond_9
    return-object v2
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
