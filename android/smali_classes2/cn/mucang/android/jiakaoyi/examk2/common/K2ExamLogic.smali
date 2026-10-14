.class public Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;,
        Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/Long;

.field public D:J

.field public E:Z

.field public F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

.field public final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lcn/mucang/android/jiakaoyi/engine/f/b;

.field public I:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final K:Ljava/lang/Runnable;

.field private a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

.field private d:Lcn/mucang/android/jiakaoyi/examk2/common/q;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

.field private f:Lcn/mucang/android/jiakaoyi/examk2/common/p;

.field private g:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

.field private h:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private i:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

.field private final j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

.field private final k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->m:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->n:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->p:Ljava/util/List;

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->r:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t:I

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u:J

    .line 12
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    .line 13
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->y:Z

    const/4 v4, 0x1

    .line 14
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->z:Z

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->A:Z

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->B:Z

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    .line 18
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->H:Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 21
    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/d;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/d;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->I:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 22
    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->K:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->M()V

    new-array p1, v0, [Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 25
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    aput-object v0, p1, v1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    aput-object v0, p1, v4

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 26
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    return-void
.end method

.method private synthetic A(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 4
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/f/a;->onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic C(Lcn/mucang/android/jiakaoyi/hpmap/model/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/b;->a:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_0
    return-void
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->h:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    return-void
.end method

.method private synthetic G(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    const-string p1, "GPS\u4fe1\u53f7\u4e2d\u65ad\u624b\u52a8\u70b9\u7ed3\u675f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic I(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->dismiss()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    const-string p1, "GPS\u4fe1\u53f7\u4e2d\u65ad10\u79d2\u540e\u8003\u8bd5\u7ed3\u675f"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic K(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/examk2/R$string;->enter_qidian_area:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_0
    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;->B:Z

    :cond_1
    return-void
.end method

.method private U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401158:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->K:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t:I

    return v0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/common/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d:Lcn/mucang/android/jiakaoyi/examk2/common/q;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->r(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->A:Z

    return p0
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->A:Z

    return p1
.end method

.method private p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_XiaCheJianCha:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const-wide/16 v7, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;-><init>()V

    .line 6
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    .line 7
    const-class v1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->N(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/o;->b(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;ZLjava/util/List;J)I

    move-result v5

    .line 11
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 13
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-eq v2, v0, :cond_3

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0, p1, v6}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    .line 16
    :cond_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->y:Z

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->i(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    .line 18
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 20
    :cond_5
    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v9, :cond_7

    .line 21
    new-instance v10, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    const/4 v2, 0x0

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->Other:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    rsub-int/lit8 v0, v5, 0x64

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v0, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    move-object v0, v10

    move v1, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(ZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;ZI)V

    invoke-interface {v9, v10}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 22
    :cond_7
    iput-wide v7, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u:J

    .line 23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_d

    const-string v0, "\u8d77\u70b9\u533a\u57df\u9879\u76ee\u505a\u5b8c\uff0c\u8003\u8bd5\u7ed3\u675f"

    .line 24
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_d

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v1, v2, v6}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;Z)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    const-string v1, "charge_mode"

    .line 28
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 29
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/k/a;->a:Ljava/lang/String;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 30
    :cond_9
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->c(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    goto :goto_2

    .line 32
    :cond_a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 33
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u:J

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 36
    :cond_b
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v6, :cond_c

    .line 37
    new-instance v7, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    const/4 v1, 0x1

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->Other:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    const/4 v4, 0x1

    const/16 v5, 0x64

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(ZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;ZI)V

    invoke-interface {v6, v7}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 38
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->j(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private r(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a()Z

    move-result v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    :goto_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    if-ge v0, p1, :cond_4

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string p1, "\u8003\u8bd5\u4e0d\u53ca\u683c,\u8fdb\u5165\u8865\u8003\u673a\u4f1a"

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/c;->l()V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->U()V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->m()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eqz v0, :cond_4

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->y:Z

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/o;->a(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/c;->u(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;

    invoke-direct {v0, p1, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;-><init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/c;->j()Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 22
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    const-string p1, "\u4e24\u6b21\u8003\u8bd5\u673a\u4f1a\u90fd\u7528\u5b8c,\u8003\u8bd5\u7ed3\u675f"

    .line 23
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_4

    .line 25
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u8003\u8bd5\u4e0d\u53ca\u683c,\u6ca1\u6709\u8865\u8003\u673a\u4f1a,\u8003\u8bd5\u7ed3\u675f"

    .line 26
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_4

    .line 29
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v1, "-"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 6
    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->number:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    :cond_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic y(Ljava/lang/Boolean;)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    const-string p1, "\u8003\u8bd5\u6a21\u5f0f\u4e0d\u6309\u987a\u5e8f\u8fdb\u9879\u76ee\u5bfc\u81f4\u8003\u8bd5\u7ed3\u675f"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;Z)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic B(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->A(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method

.method public synthetic D(Lcn/mucang/android/jiakaoyi/hpmap/model/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C(Lcn/mucang/android/jiakaoyi/hpmap/model/b;)V

    return-void
.end method

.method public synthetic F(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E(Landroid/view/View;)V

    return-void
.end method

.method public synthetic H(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G(Landroid/view/View;)V

    return-void
.end method

.method public synthetic J(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->I(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic L(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->K(I)V

    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/r;

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/model/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/r;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/c;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :cond_0
    return-void
.end method

.method public N(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->number:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/g;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/g;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;I)V

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->gps_weak:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->qibu_pass:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method public Q(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iget-boolean v0, v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->b:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->q(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/examk2/a/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_2
    return-void
.end method

.method public R(Lcn/mucang/android/jiakaoyi/examk2/common/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d:Lcn/mucang/android/jiakaoyi/examk2/common/q;

    return-void
.end method

.method public S(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->f()V

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->j()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->z:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->B:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->s()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->e(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->f()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V

    :cond_0
    const-string v0, "K2ExamLogic Start"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->b:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->w:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->k()V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->K:Ljava/lang/Runnable;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->g()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->m()V

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/engine/f/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/engine/f/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/e;

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/e;->R()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->h:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    new-instance v12, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->uilib_end_exam_warning_title:I

    .line 9
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->uilib_end_exam_warning_desc:I

    .line 10
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->uilib_dialog_confirm:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/examk2/common/b;

    invoke-direct {v8, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v1, v12}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->h:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz v0, :cond_2

    const-string v0, "APP\u88ab\u9000\u5230\u540e\u53f010\u79d2\u540e\u8003\u8bd5\u7ed3\u675f"

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->C:Ljava/lang/Long;

    .line 16
    :cond_2
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->z:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->z:Z

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v3, 0xa

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    if-nez v0, :cond_3

    .line 22
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->gps_disconnect:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 23
    :cond_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->end_exam_countdown:I

    .line 24
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->gps_disconnect_end_exam:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->continue_exam:I

    .line 25
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget v2, Lcn/mucang/android/jiakaoyi/examk2/R$string;->end_exam:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcn/mucang/android/jiakaoyi/examk2/common/f;

    invoke-direct {v9, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/f;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcn/mucang/android/jiakaoyi/examk2/common/e;

    invoke-direct {v13, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/e;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 26
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 27
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$a;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 28
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 29
    :cond_4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->z:Z

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->gps_disconnect:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 33
    :cond_5
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->gps_reconnect:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;->dismiss()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;

    .line 36
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t:I

    if-gt v0, v1, :cond_8

    .line 37
    :cond_7
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->v:Z

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->Q(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)V

    .line 38
    :cond_8
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_d

    .line 39
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401170:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;

    .line 41
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v3, :cond_a

    goto :goto_2

    .line 42
    :cond_a
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->B:Z

    if-nez v3, :cond_9

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/h;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 43
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->B:Z

    .line 44
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401171:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 45
    :cond_b
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->w:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_c

    .line 47
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->w:Z

    .line 48
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->P()V

    .line 50
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k:Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/h/b;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 51
    :cond_d
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 52
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->r:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->s:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_f

    .line 54
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_e

    return-void

    .line 55
    :cond_e
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->O()V

    .line 56
    :cond_f
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->s:I

    .line 57
    :cond_10
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->r:I

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/b/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    :cond_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o:Ljava/util/Map;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";\u540c\u7c7b\u9879\u76ee\u5df2\u7ecf\u505a\u5b8c"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_5

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v4, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v3, v4, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;Z)V

    invoke-interface {p1, v3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u8003\u8bd5\u6a21\u5f0f\u7ebf\u4e0a\u6240\u6709\u7684\u9879\u76ee\u5df2\u7ecf\u505a\u5b8c"

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_6

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->StopExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;Z)V

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->q:I

    return v0
.end method

.method public u(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->x:Z

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l:Ljava/util/List;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/common/o;->b(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;ZLjava/util/List;J)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x64

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Lcn/mucang/android/jiakaoyi/engine/c;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/c;->h()Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/n;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/examk2/common/a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/n;-><init>(Lcn/mucang/android/jiakaoyi/examk2/a/b;Lcn/mucang/android/jiakaoyi/engine/c;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    const-string p1, "K2ExamLogic\u521d\u59cb\u5316\u6210\u529f"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j:Lcn/mucang/android/jiakaoyi/examk2/a/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->o:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    .line 10
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 11
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->w()V

    return-void
.end method

.method public synthetic z(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->y(Ljava/lang/Boolean;)V

    return-void
.end method
