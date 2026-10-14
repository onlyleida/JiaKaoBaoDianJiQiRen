.class public abstract Lcn/mucang/android/jiakaoyi/examk2/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SC:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        "BD::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        "BC:",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "TBD;TSC;>;>",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;"
    }
.end annotation


# instance fields
.field protected final checker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBC;"
        }
    .end annotation
.end field

.field protected final endVoiceText:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

.field protected final needEndVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBC;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->checker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->endVoiceText:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->needEndVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    return-void
.end method


# virtual methods
.method protected doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    return-void
.end method

.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/a;->doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->checker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->needEndVoice:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/a;->endVoiceText:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->I(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/a;->onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    return-void
.end method
