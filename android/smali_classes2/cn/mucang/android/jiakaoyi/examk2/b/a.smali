.class public Lcn/mucang/android/jiakaoyi/examk2/b/a;
.super Lcn/mucang/android/jiakaoyi/examk2/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/b/g<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/b/g;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->c:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->d:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->e:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->f:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->g:Z

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/b/g;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->b:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->o0:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 5
    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->o0:J

    add-long/2addr v0, p1

    iget-wide p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr v0, p1

    long-to-double p1, v0

    const-wide v0, 0x40c86a0000000000L    # 12500.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->cefang_countdown_10:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->H(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/a;->b:Z

    :cond_0
    return-void
.end method
