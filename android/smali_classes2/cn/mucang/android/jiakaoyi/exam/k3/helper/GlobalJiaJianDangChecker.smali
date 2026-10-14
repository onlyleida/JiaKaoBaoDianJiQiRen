.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

.field private lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public reachGear:Z

.field private reduceGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public unfinished:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->unfinished:Z

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reduceGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    return-object p0
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            ")",
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reduceGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p2, :cond_3

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v2, v3, :cond_3

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear6:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v4, :cond_2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt v2, p2, :cond_2

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200242:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)V

    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200241:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->jiaJianDangStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 8
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    .line 9
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    .line 11
    :cond_2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 12
    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    if-nez p1, :cond_4

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_JiaJianDang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-array p2, v0, [I

    const/4 v0, 0x0

    const v1, 0x1b5e6

    aput v1, p2, v0

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->reachGear:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method
