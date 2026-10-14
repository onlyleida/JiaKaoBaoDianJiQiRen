.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "IIZ",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 2
    iput p4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 3
    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-nez p7, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    :goto_0
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;-><init>()V

    .line 8
    invoke-virtual {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 9
    iput p5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    if-eqz p7, :cond_1

    .line 10
    iget-wide p1, p7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    iput-wide p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    .line 11
    :cond_1
    iput-boolean p6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    .line 12
    iput-boolean p4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 13
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    .line 15
    iput-object p8, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 16
    iget p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    .line 17
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p9, :cond_3

    .line 18
    iput-object v1, p9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private d(IDD)Z
    .locals 4

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    const/4 v0, 0x2

    const-wide v1, 0x407fe00000000000L    # 510.0

    cmpl-double v3, p4, v1

    if-lez v3, :cond_0

    if-ge p1, v0, :cond_3

    :cond_0
    const/4 p4, 0x4

    if-lt p1, p4, :cond_1

    const-wide/high16 p4, 0x4044000000000000L    # 40.0

    cmpl-double v1, p2, p4

    if-gtz v1, :cond_3

    :cond_1
    const/4 p4, 0x3

    if-lt p1, p4, :cond_2

    const-wide/high16 p4, 0x4049000000000000L    # 50.0

    cmpl-double v1, p2, p4

    if-gtz v1, :cond_3

    :cond_2
    if-lt p1, v0, :cond_4

    const-wide/high16 p4, 0x4059000000000000L    # 100.0

    cmpl-double p1, p2, p4

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;ILcn/mucang/android/jiakaoyi/engine/model/Step;IZ)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "I",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "IZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    const/4 v9, 0x0

    if-nez v11, :cond_0

    .line 1
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v9

    .line 2
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v4, 0x3

    move-object/from16 v16, v7

    const/4 v7, 0x2

    const/4 v6, 0x1

    if-eqz v15, :cond_f

    .line 4
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    if-lez v2, :cond_1

    .line 5
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    cmpl-double v21, v2, v0

    if-lez v21, :cond_1

    .line 6
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_2

    .line 8
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v9

    .line 9
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v3, 0x4

    const-string v5, "\u505c\u8f66\u6302\u5012\u6863"

    if-ne v13, v2, :cond_5

    if-eq v14, v6, :cond_3

    if-eq v14, v7, :cond_4

    if-eq v14, v4, :cond_3

    if-eq v14, v3, :cond_4

    move-object v11, v8

    move-object/from16 v26, v16

    :goto_0
    const/16 v15, 0x258

    goto/16 :goto_2

    :cond_3
    move-object v11, v8

    move-object/from16 v26, v16

    const/4 v8, 0x1

    const/16 v9, 0x258

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 10
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u505c\u8f66\u6302\u524d\u8fdb\u6321\u51fa\u5e93"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 11
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    invoke-direct {v5, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 12
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 14
    invoke-static {v3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    const/16 v20, 0x4c

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "\u8bf7\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v3

    move-object/from16 v17, v3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v18, v5

    move/from16 v5, v20

    move/from16 v6, v22

    move-object/from16 v26, v16

    move-object/from16 v7, v23

    move-object/from16 v27, v8

    move-object/from16 v8, v24

    move-object v11, v9

    move-object/from16 v9, v18

    .line 15
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    move-object/from16 v9, v27

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x4c

    const/4 v6, 0x0

    move-object/from16 v8, v18

    .line 16
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v16, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    move-object v11, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x2

    sub-int/2addr v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 19
    invoke-static {v0, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/16 v5, 0x3c

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "\u8bf7\u6302\u524d\u8fdb\u6321\u51fa\u5e93"

    move-object/from16 v0, p0

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    const/4 v12, 0x2

    move-object/from16 v9, v19

    .line 20
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    .line 22
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    const/16 v9, 0x258

    .line 23
    iput v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    const/4 v8, 0x1

    .line 24
    iput-boolean v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 26
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 27
    iput-boolean v8, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 28
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :goto_1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v6, 0x4b

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6321\uff0c\u6162\u6162\u5f80\u540e\u5012"

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v12, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    const/16 v15, 0x258

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :goto_2
    move v15, v14

    goto/16 :goto_9

    :cond_5
    move-object v12, v5

    move-object v11, v8

    move-object/from16 v26, v16

    const/16 v15, 0x258

    .line 33
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v13, v2, :cond_c

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v13, v2, :cond_6

    goto/16 :goto_8

    .line 34
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const-string v1, "\u505c\u8f66\u63021\u6863"

    if-ne v13, v0, :cond_8

    packed-switch v14, :pswitch_data_0

    const/4 v13, 0x1

    :goto_3
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    goto/16 :goto_5

    .line 35
    :pswitch_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u505c\u8f66\u63021\u6863\u51fa\u5e93"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 36
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 37
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 38
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 39
    invoke-static {v8, v0, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v0, 0x8

    if-ne v14, v0, :cond_7

    const/16 v5, 0x4c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "\u505c\u8f66\u63021\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v8

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide v13, v6

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    const/4 v13, 0x1

    move-object v9, v12

    .line 40
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 41
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v13, 0x1

    .line 42
    :goto_4
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 43
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 44
    invoke-static {v0, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-string v14, "\u8bf7\u6302\u524d\u8fdb\u6321\u51fa\u5e93"

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v8, v14

    move-object v9, v12

    .line 45
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 46
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    .line 47
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    .line 48
    iput v15, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    .line 49
    iput-boolean v13, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 51
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 52
    iput-boolean v13, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 53
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    const/4 v13, 0x1

    .line 56
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 57
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 58
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 59
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 60
    invoke-static {v14, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "\u505c\u8f66\u63021\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v9, v12

    .line 61
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u89c2\u5bdf\u8f66\u8eab\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    const/4 v13, 0x1

    .line 63
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 64
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 65
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 66
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 67
    invoke-static {v14, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "\u505c\u8f66\u6302\u5012\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v9, v12

    .line 68
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_3
    const/4 v13, 0x1

    .line 70
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u505c\u8f66\u63021\u6321\u79fb\u5e93"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 71
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 72
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 73
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 74
    invoke-static {v14, v0, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v18, "\u505c\u8f66\u63021\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v19, v8

    move-object/from16 v8, v18

    move-object v9, v12

    .line 75
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 78
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 79
    invoke-static {v0, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-string v14, "\u8bf7\u63021\u6321\u79fb\u5e93"

    move-object/from16 v0, p0

    move-object v8, v14

    move-object v9, v12

    .line 80
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 81
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    .line 82
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    .line 83
    iput v15, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    .line 84
    iput-boolean v13, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 85
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 86
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 87
    iput-boolean v13, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 88
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_4
    const/4 v13, 0x1

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 91
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v5, 0x4b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6321\uff0c\u6162\u6162\u5f80\u540e\u5012"

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :goto_5
    move-object/from16 v14, p4

    goto/16 :goto_7

    :cond_8
    const/4 v13, 0x1

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 93
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-object/from16 v14, p4

    move-wide/from16 v8, v19

    if-ne v14, v0, :cond_b

    move/from16 v7, p5

    if-eq v7, v13, :cond_9

    const/4 v0, 0x2

    const/4 v6, 0x3

    if-eq v7, v0, :cond_a

    if-eq v7, v6, :cond_9

    if-eq v7, v3, :cond_a

    move v15, v7

    goto/16 :goto_a

    :cond_9
    move v15, v7

    goto :goto_6

    .line 94
    :cond_a
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 95
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 96
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 97
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 98
    invoke-static {v5, v0, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v18, 0x4c

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "\u505c\u8f66\u63021\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v22, v5

    move/from16 v5, v18

    const/4 v15, 0x3

    move/from16 v6, v19

    move v15, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object v9, v12

    .line 99
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x4c

    const/4 v6, 0x0

    .line 100
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u89c2\u5bdf\u8f66\u8eab\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v2, v22

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 101
    :goto_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 102
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 103
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 104
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 105
    invoke-static {v9, v0, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/16 v18, 0x0

    const-string v19, "\u505c\u8f66\u6302\u5012\u6863"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v18, v9

    move-object v9, v12

    .line 106
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_b
    :goto_7
    move/from16 v15, p5

    goto/16 :goto_a

    :cond_c
    :goto_8
    move v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    if-eq v15, v13, :cond_e

    const/4 v2, 0x2

    if-eq v15, v2, :cond_d

    goto/16 :goto_a

    .line 108
    :cond_d
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v3, "\u505c\u8f66\u3001\u6253\u5de6\u8f6c\u5411\u706f\u3001\u6302\u524d\u8fdb\u6321\u3001\u51fa\u5e93"

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 109
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 110
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v2, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 111
    iput-boolean v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 112
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 113
    iget-object v3, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v13

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 114
    invoke-static {v3, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v5, 0x4c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "\u8bf7\u505c\u8f66\uff0c\u6302\u7a7a\u6321"

    move-object/from16 v0, p0

    move-object v2, v3

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 115
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 116
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v12}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 119
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v0, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 120
    iput-boolean v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 121
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 122
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 123
    invoke-static {v0, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    const/16 v17, 0x0

    const-string v18, "\u8bf7\u6253\u5de6\u8f6c\u5411\u706f\uff0c\u6302\u524d\u8fdb\u6321\uff0c\u51fa\u5e93"

    move-object/from16 v0, p0

    move-object/from16 v8, v18

    move-object/from16 v9, v17

    .line 124
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 125
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 127
    :cond_e
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 128
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v5, 0x4b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "\u8bf7\u505c\u8f66\uff0c\u6302\u5012\u6321\uff0c\u6162\u6162\u5f80\u540e\u5012"

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object v11, v8

    move v15, v14

    move-object/from16 v26, v16

    :goto_9
    move-object v14, v13

    const/4 v13, 0x1

    .line 129
    :goto_a
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v14, v0, :cond_11

    const/4 v0, 0x3

    if-ne v15, v0, :cond_11

    const/16 v12, 0x258

    if-nez p6, :cond_11

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    .line 130
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v2, :cond_11

    move-object/from16 v9, p2

    const/4 v8, 0x2

    if-eq v9, v2, :cond_10

    if-eq v0, v9, :cond_10

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 132
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v6, 0x0

    invoke-direct {v7, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 133
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 134
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 135
    invoke-static {v5, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    const/16 v17, 0x4c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "\u8bf7\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v5

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v21, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v18

    move-object/from16 p6, v7

    move-object/from16 v7, v19

    const/4 v12, 0x2

    move-object/from16 v8, v20

    move-object/from16 v9, p6

    .line 136
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x4c

    const/4 v6, 0x0

    .line 137
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const-string v8, "\u8bf7\u6ce8\u610f\u540e\u89c6\u955c\u4e0b\u6cbf\u548c\u7ebf\u7684\u4f4d\u7f6e\uff0c\u5373\u5c06\u505c\u8f66"

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 139
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 140
    invoke-static {v0, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    const/16 v5, 0x3c

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6302"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object v12, v4

    move/from16 v4, p5

    move-wide/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    .line 142
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;-><init>()V

    .line 143
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    const/16 v2, 0x258

    .line 144
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    .line 145
    iput-boolean v13, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 146
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;-><init>()V

    .line 147
    iget-object v3, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;->gear:I

    .line 148
    iput-boolean v13, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 149
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    move-object v12, v9

    goto :goto_b

    :cond_11
    move-object/from16 v12, p2

    :goto_b
    const/16 v17, 0x0

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    .line 152
    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 153
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a()V

    .line 154
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v11

    .line 155
    :cond_12
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 156
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v1, p1

    move-object/from16 v9, v17

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    cmpg-double v0, v2, v19

    if-gez v0, :cond_14

    .line 157
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v9

    :cond_13
    move-object/from16 v1, p1

    move-object/from16 v9, v17

    .line 158
    :cond_14
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v13, :cond_15

    .line 161
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v9

    .line 162
    :cond_15
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 163
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d:Ljava/util/List;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 167
    :cond_16
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d:Ljava/util/List;

    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_d
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_17

    .line 170
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v9

    :cond_17
    const/16 v16, -0x1

    move-wide v2, v6

    move-wide/from16 v17, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, -0x1

    .line 171
    :goto_e
    iget-object v8, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x5a

    if-ge v4, v8, :cond_1d

    if-nez v0, :cond_18

    .line 172
    iget-object v8, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v6, 0xf

    if-le v8, v6, :cond_18

    move/from16 v19, v4

    const/4 v6, 0x1

    goto :goto_f

    :cond_18
    move v6, v0

    :goto_f
    if-eqz v6, :cond_19

    .line 173
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 174
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v2, v7

    :cond_19
    move v7, v1

    move-wide/from16 v22, v2

    .line 175
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    if-eqz v6, :cond_1a

    add-int/lit8 v5, v5, 0x1

    .line 176
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    move-wide/from16 v17, v0

    :cond_1a
    move v8, v5

    move-object/from16 v0, p0

    move v1, v8

    move-wide/from16 v2, v22

    move/from16 v24, v4

    move-wide/from16 v4, v17

    .line 177
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d(IDD)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 178
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v9, :cond_1b

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/16 v19, -0x1

    goto :goto_10

    :cond_1b
    move v1, v8

    move/from16 v6, v19

    move-wide/from16 v4, v22

    goto :goto_11

    :cond_1c
    move v0, v6

    move v5, v8

    move-wide/from16 v2, v22

    :goto_10
    add-int/lit8 v4, v24, 0x1

    move v1, v7

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_e

    :cond_1d
    move v7, v1

    move v1, v5

    move/from16 v6, v19

    move-wide v4, v2

    :goto_11
    move-object/from16 v0, p0

    move-wide v2, v4

    move-wide/from16 v28, v4

    move-wide/from16 v4, v17

    .line 179
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->d(IDD)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    if-ge v6, v0, :cond_2c

    if-ltz v6, :cond_2c

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    int-to-double v2, v7

    .line 180
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x2d

    if-lt v4, v5, :cond_1f

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x190

    if-le v4, v5, :cond_1e

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v9, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v4, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v4, 0x1

    :goto_13
    const-string v5, "\u5411\u5de6\u6253\u6ee1"

    const-string v8, "\u5411\u53f3\u6253\u6ee1"

    const-wide v22, 0x407f400000000000L    # 500.0

    cmpl-double v9, v17, v22

    if-lez v9, :cond_20

    :goto_14
    move-object v9, v8

    goto/16 :goto_16

    :cond_20
    const-wide v24, -0x3f80c00000000000L    # -500.0

    cmpg-double v9, v17, v24

    if-gez v9, :cond_21

    :goto_15
    move-object v9, v5

    goto :goto_16

    :cond_21
    if-eqz v4, :cond_22

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-string v5, "\u56de\u6b63"

    goto :goto_15

    :cond_22
    cmpl-double v4, v2, v22

    if-lez v4, :cond_23

    goto :goto_14

    :cond_23
    const-wide v8, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v2, v8

    if-lez v4, :cond_24

    const-string v5, "\u5411\u53f3\u6253\u4e00\u5708"

    goto :goto_15

    :cond_24
    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    cmpl-double v4, v2, v8

    if-lez v4, :cond_25

    const-string v5, "\u5411\u53f3\u6253\u534a\u5708"

    goto :goto_15

    :cond_25
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    cmpl-double v4, v2, v8

    if-lez v4, :cond_26

    const-string v5, "\u5411\u53f3\u6253\u56db\u5206\u4e4b\u4e00\u5708"

    goto :goto_15

    :cond_26
    cmpg-double v4, v2, v24

    if-gez v4, :cond_27

    goto :goto_15

    :cond_27
    const-wide v4, -0x3f8d400000000000L    # -300.0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_28

    const-string v5, "\u5411\u5de6\u6253\u4e00\u5708"

    goto :goto_15

    :cond_28
    const-wide/high16 v4, -0x3fa2000000000000L    # -120.0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_29

    const-string v5, "\u5411\u5de6\u6253\u534a\u5708"

    goto :goto_15

    :cond_29
    const-wide/high16 v4, -0x3fb2000000000000L    # -60.0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_2a

    const-string v5, "\u5411\u5de6\u6253\u56db\u5206\u4e4b\u4e00\u5708"

    goto :goto_15

    :cond_2a
    const-wide/16 v4, 0x0

    cmpl-double v8, v2, v4

    if-lez v8, :cond_2b

    const-string v5, "\u5411\u53f3\u6253"

    goto :goto_15

    :cond_2b
    const-string v5, "\u5411\u5de6\u6253"

    goto :goto_15

    .line 181
    :goto_16
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v9, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230\u65b9\u5411\u76d8\u53d8\u5316:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v28

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 183
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;

    const/4 v7, 0x0

    invoke-direct {v8, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$a;)V

    .line 184
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 185
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a:Ljava/util/List;

    add-int/2addr v6, v13

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 186
    invoke-static {v2, v5, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    const/16 v6, 0x50

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v5

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v18, v5

    move v5, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    move-object/from16 p1, v8

    move-object v8, v9

    move-object v14, v9

    move-object/from16 v9, p1

    .line 187
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x5a

    const/4 v6, 0x0

    .line 188
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5373\u5c06"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u65b9\u5411\u76d8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/engine/model/Step;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a$b;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2c
    const/16 v16, 0x0

    .line 189
    :goto_17
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 190
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v16

    .line 191
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->a()V

    .line 192
    iput-object v12, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/a;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
