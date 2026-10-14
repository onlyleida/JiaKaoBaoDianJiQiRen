.class public Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

.field private f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private g:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

.field private final l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

.field private m:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field private n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

.field private o:Lcn/mucang/android/jiakaoyi/examk2/a/b;

.field private p:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->c:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->d:Z

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j:Ljava/util/List;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-object p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)Lcn/mucang/android/jiakaoyi/engine/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-object p0
.end method

.method private c()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u8f66\u8eab\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->car_pos_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->o:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 11
    invoke-static {v6}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithK2Number(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v6

    .line 13
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 14
    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 15
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->k2Steps()Ljava/util/List;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 18
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_BianXianShiBie:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v4, v5, :cond_5

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 21
    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 24
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 25
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 26
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    invoke-interface {v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    .line 27
    :cond_8
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->d:Z

    return v1
.end method

.method private synthetic d(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :goto_0
    return-void
.end method

.method private synthetic f(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :goto_0
    return-void
.end method

.method private synthetic h(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :goto_0
    return-void
.end method

.method private synthetic j(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->k:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :goto_0
    return-void
.end method

.method private l(ZZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, p2, :cond_4

    .line 2
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p3, :cond_4

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, v0, :cond_3

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p3, :cond_4

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, p3, :cond_4

    if-eqz p2, :cond_4

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->v(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->start_engine:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->stop_engine:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/j;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->v(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v2, :cond_3

    .line 12
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 13
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_5

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->w()V

    :cond_5
    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->v(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->push_honk:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->release_honk:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/k;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->v(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v2, :cond_3

    .line 12
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 13
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_5

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->w()V

    :cond_5
    :goto_0
    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l(ZZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto/16 :goto_1

    .line 5
    :cond_0
    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->open_right_light:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    .line 6
    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->close_light:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/l;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/l;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l(ZZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->w()V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v2, :cond_4

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_1

    .line 13
    :cond_4
    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v3, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_1

    .line 15
    :cond_5
    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v3, :cond_7

    if-eqz v1, :cond_6

    .line 16
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_1

    .line 21
    :cond_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_8

    .line 22
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private p()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u8f66\u8eab\u6570\u636e"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->car_pos_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->o:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->o:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    .line 9
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v2, :cond_4

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v4, v3, v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 11
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    if-eqz v2, :cond_3

    .line 12
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 13
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->r(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto/16 :goto_0

    .line 15
    :cond_6
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->exit_qidian_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    .line 16
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->enter_qidian_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/m;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->r(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 19
    :cond_7
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq v0, v1, :cond_9

    .line 20
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v1, :cond_8

    .line 21
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->l:Lcn/mucang/android/jiakaoyi/framework/tts/c;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 23
    :cond_8
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v2, :cond_b

    .line 24
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 25
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 26
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, v2, :cond_b

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    .line 29
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 30
    :cond_a
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->w()V

    :cond_b
    :goto_0
    return-void
.end method

.method private r(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne v0, p1, :cond_3

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p2, :cond_3

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, p2, :cond_3

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, v0, :cond_3

    .line 10
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p2, :cond_3

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h:Ljava/lang/String;

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-void
.end method

.method private t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->s()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->p:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StartCost:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-void
.end method

.method private u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    :cond_0
    return-void
.end method

.method private v(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p2, :cond_3

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, p2, :cond_3

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-ne p1, v0, :cond_3

    .line 7
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eqz p2, :cond_3

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->e:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->i:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$d;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$d;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 6
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->u(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    return-void
.end method


# virtual methods
.method public synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic g(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic i(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->h(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic k(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->j(Ljava/lang/Boolean;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/examk2/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
            "Lcn/mucang/android/jiakaoyi/examk2/a/b;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m:Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->o:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->p:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p3, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->c()J

    move-result-wide v0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->longValue()J

    move-result-wide p3

    invoke-direct {p1, p3, p4}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->g:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 7
    :cond_0
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->n()V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->c:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->d:Z

    if-eqz p1, :cond_6

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->c:Z

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->t(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->p()V

    goto :goto_0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->m()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->o()V

    :cond_6
    :goto_0
    return-void
.end method
