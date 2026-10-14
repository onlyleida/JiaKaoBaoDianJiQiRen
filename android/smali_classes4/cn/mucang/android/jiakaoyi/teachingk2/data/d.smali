.class public final Lcn/mucang/android/jiakaoyi/teachingk2/data/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002Jt\u0010\u000b\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2.\u0010\r\u001a*\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000ej\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t`\u00102.\u0010\u0011\u001a*\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u000ej\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u0012`\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachDataProcessor;",
        "",
        "needStopVariable",
        "",
        "needTraceTip",
        "(ZZ)V",
        "createStopTeachModels",
        "",
        "teachModels",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "processTeachData",
        "list",
        "teachData",
        "Ljava/util/HashMap;",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lkotlin/collections/HashMap;",
        "boundaryData",
        "",
        "",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->a:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->b:Z

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 5
    iget v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v7, 0x2

    if-ne v5, v6, :cond_2

    iget v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v6, v4, :cond_3

    if-eq v6, v7, :cond_3

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    .line 6
    :cond_2
    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v5, v6, :cond_5

    iget v6, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-eq v6, v4, :cond_3

    if-ne v6, v7, :cond_5

    .line 7
    :cond_3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->needCreateStopTeachModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 10
    iget v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 11
    iget v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    add-int/2addr v8, v4

    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 12
    iget v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iput v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    .line 13
    iget-object v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    iput-object v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 14
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 16
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    .line 17
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 19
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;-><init>()V

    .line 20
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    .line 22
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;-><init>()V

    .line 23
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    iput-object v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    .line 25
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;-><init>()V

    .line 26
    iget-object v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    .line 27
    iget-object v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v4, :cond_4

    .line 28
    iget-object v9, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v8, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 30
    :cond_4
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :cond_5
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v5, v4, :cond_1

    .line 34
    new-instance v4, Lkotlin/Pair;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 36
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;-><init>()V

    .line 37
    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 38
    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    .line 39
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    .line 42
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    .line 43
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    .line 45
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarStopVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarStopVariable;-><init>()V

    .line 46
    iput-boolean v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    .line 47
    iput-boolean v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarStopVariable;->needStop:Z

    .line 48
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;-><init>()V

    .line 51
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    .line 53
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/StopPositionVariable;-><init>()V

    .line 54
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teachData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundaryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->a(Ljava/util/List;)V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 7
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/d;->b:Z

    if-nez v3, :cond_3

    .line 8
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    const/16 v4, 0x2710

    iput v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    .line 9
    :cond_3
    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    if-nez v2, :cond_2

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 12
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v2

    .line 13
    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 15
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    .line 16
    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->pointType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    if-eqz v5, :cond_6

    .line 17
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->reportKey:J

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->key:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 18
    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->reportModel:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    goto :goto_1

    .line 19
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 20
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    .line 21
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "step"

    if-nez v2, :cond_8

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_8
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 25
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_9

    .line 26
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    const-string v1, "it.parkingSpaceBindId"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "@"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-void
.end method
