.class public Lcn/mucang/android/jiakaoyi/examk2/common/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

.field private final f:Lcn/mucang/android/jiakaoyi/engine/c;

.field private final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

.field private k:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;Lcn/mucang/android/jiakaoyi/engine/c;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/examk2/a/b;",
            "Lcn/mucang/android/jiakaoyi/engine/c;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->b:I

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->d:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/n$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/n$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/n;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    .line 9
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->f:Lcn/mucang/android/jiakaoyi/engine/c;

    .line 10
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Lcn/mucang/android/jiakaoyi/examk2/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZ)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/c;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->H:Lcn/mucang/android/jiakaoyi/engine/f/b;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;->getReportVoiceValue()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5
    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->b:I

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method


# virtual methods
.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->f:Lcn/mucang/android/jiakaoyi/engine/c;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->i:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->j:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9879\u76ee\u8003\u8bd5\u987a\u5e8f\u8bbe\u7f6e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v2, v0

    if-lez v2, :cond_2

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 11
    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithK2Number(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->f:Lcn/mucang/android/jiakaoyi/engine/c;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrderExamPresenter\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->k:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->i:Ljava/util/Map;

    const v1, 0x49467

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZ)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->H:Lcn/mucang/android/jiakaoyi/engine/f/b;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/n$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/n$b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/n;)V

    iget v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->b:I

    .line 5
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    return-void
.end method

.method public i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->k:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9879\u76ee\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5f53\u524dplayIndex:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\u9879\u76ee\u7684index\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    if-eq v0, p1, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "\u6ca1\u6709\u6309\u6307\u5b9a\u987a\u5e8f\u8fdb\u9879\u76ee"

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const p1, 0x49449

    .line 15
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->e(I)V

    :cond_3
    return-void
.end method

.method public l(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c:Z

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->k:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method
