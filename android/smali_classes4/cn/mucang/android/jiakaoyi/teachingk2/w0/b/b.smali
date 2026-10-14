.class public final Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0012J\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u001aJ\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/ExamRule;",
        "",
        "kemu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "tipSpeaker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;",
        "tipsValue",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "arguments",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V",
        "getArguments",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "examStartTime",
        "",
        "examStepModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;",
        "examType",
        "",
        "getKemu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getTipSpeaker",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;",
        "getTipsValue",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "handleExamStep",
        "",
        "step",
        "handleExamType",
        "type",
        "startExam",
        "stopExam",
        "isPass",
        "",
        "teachbase_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V
    .locals 1

    const-string v0, "kemu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->addStep(I)V

    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->g:I

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->f:J

    return-void
.end method

.method public final f(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->setPassed(Z)V

    .line 2
    :goto_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->g:I

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->setType(I)V

    .line 3
    :goto_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    .line 4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    if-nez v3, :cond_3

    return-void

    .line 6
    :cond_3
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->f:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_2

    :cond_4
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_230104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    .line 8
    :goto_2
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v7, 0x2bf20

    invoke-virtual {v3, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamTimeMs(Ljava/lang/String;J)J

    move-result-wide v6

    .line 9
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    cmp-long v10, v8, v6

    if-ltz v10, :cond_6

    .line 10
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const/4 v13, 0x0

    move-object v7, v4

    invoke-static/range {v6 .. v13}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 11
    :goto_3
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    :cond_6
    const-string v4, "\u3010\\project\\\u3011"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_7

    goto/16 :goto_b

    .line 12
    :cond_7
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->l:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->k:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v10

    if-ne v10, v5, :cond_12

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getPassed()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isValid()Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v9, :cond_12

    .line 16
    iget-object v5, v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;->singleExamPassList:Ljava/util/List;

    if-nez v5, :cond_8

    :goto_4
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;

    iget v11, v11, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;->step:I

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getStep()I

    move-result v12

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_9

    goto :goto_6

    :cond_b
    move-object v10, v6

    :goto_6
    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;

    if-nez v10, :cond_c

    goto :goto_4

    :cond_c
    iget v5, v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;->examPassCount:I

    .line 17
    :goto_7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isSingle()Z

    move-result v10

    if-eqz v10, :cond_10

    if-nez v5, :cond_10

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200105:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v11

    if-nez v11, :cond_d

    goto :goto_9

    .line 19
    :cond_d
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getStep()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-nez v1, :cond_e

    move-object v1, v6

    goto :goto_8

    :cond_e
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_8
    if-nez v1, :cond_f

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_none_step:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-static {v4, v1}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x38

    const/16 v19, 0x0

    move-object v12, v5

    .line 21
    invoke-static/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 22
    :goto_9
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto :goto_b

    .line 23
    :cond_10
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isSingle()Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;->allExamPassCount:I

    if-nez v1, :cond_12

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200107:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_a

    :cond_11
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    move-object v10, v1

    invoke-static/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 27
    :goto_a
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    .line 28
    :cond_12
    :goto_b
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v5, :cond_13

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_c

    :cond_13
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_430101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_c
    move-object v10, v1

    .line 29
    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v1

    .line 30
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->l:Ljava/util/List;

    const-string v9, "tipsValue.examTodayRecords"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 32
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v5

    goto :goto_e

    .line 33
    :cond_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    .line 34
    :cond_15
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 35
    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    .line 36
    invoke-virtual {v11}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getPassed()Z

    move-result v11

    xor-int/2addr v11, v8

    if-nez v11, :cond_15

    .line 37
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 38
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v9}, Ljava/util/ListIterator;->nextIndex()I

    move-result v11

    sub-int/2addr v5, v11

    if-nez v5, :cond_16

    .line 39
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v5

    goto :goto_e

    .line 40
    :cond_16
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    :goto_d
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 42
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    move-object v5, v11

    goto :goto_e

    .line 43
    :cond_18
    invoke-static {v5}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 44
    :goto_e
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_1a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v5, v1

    if-nez v5, :cond_1a

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v9

    if-nez v9, :cond_19

    goto :goto_f

    :cond_19
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 46
    :cond_1a
    :goto_f
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-eq v1, v5, :cond_1b

    return-void

    .line 47
    :cond_1b
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->k:Ljava/util/List;

    const-string v5, "tipsValue.examRecentRecords"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    .line 48
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->k:Ljava/util/List;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 50
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_13

    .line 51
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 52
    :cond_1d
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 53
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;

    .line 54
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getType()I

    move-result v10

    if-nez v1, :cond_1f

    :cond_1e
    const/4 v10, 0x0

    goto :goto_10

    :cond_1f
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getType()I

    move-result v11

    if-ne v10, v11, :cond_1e

    const/4 v10, 0x1

    :goto_10
    if-eqz v10, :cond_21

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getPassed()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isValid()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isSingle()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getStep()I

    move-result v9

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getStep()I

    move-result v10

    if-ne v9, v10, :cond_21

    :cond_20
    const/4 v9, 0x1

    goto :goto_11

    :cond_21
    const/4 v9, 0x0

    :goto_11
    if-nez v9, :cond_1d

    .line 55
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    sub-int/2addr v2, v9

    if-nez v2, :cond_22

    .line 57
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    goto :goto_13

    .line 58
    :cond_22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    :goto_12
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 60
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_23
    move-object v2, v9

    goto :goto_13

    .line 61
    :cond_24
    invoke-static {v2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 62
    :goto_13
    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200108:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x5

    invoke-virtual {v3, v5, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v5

    .line 63
    sget-object v17, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200106:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual/range {v17 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v3

    if-nez v1, :cond_26

    :cond_25
    const/4 v9, 0x0

    goto :goto_14

    .line 64
    :cond_26
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isSingle()Z

    move-result v9

    if-ne v9, v8, :cond_25

    const/4 v9, 0x1

    :goto_14
    if-nez v9, :cond_28

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v9, v5

    if-nez v9, :cond_28

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v9

    if-nez v9, :cond_27

    goto :goto_15

    :cond_27
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    :cond_28
    :goto_15
    if-nez v1, :cond_29

    goto :goto_16

    .line 66
    :cond_29
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->isSingle()Z

    move-result v5

    if-ne v5, v8, :cond_2a

    const/4 v7, 0x1

    :cond_2a
    :goto_16
    if-eqz v7, :cond_2e

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v3

    if-nez v2, :cond_2e

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v11

    if-nez v11, :cond_2b

    goto :goto_18

    .line 68
    :cond_2b
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;->getStep()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-nez v1, :cond_2c

    goto :goto_17

    :cond_2c
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    :goto_17
    if-nez v6, :cond_2d

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_none_step:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    :cond_2d
    invoke-static {v4, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/16 v18, 0x38

    const/16 v19, 0x0

    move-object/from16 v12, v17

    move-object/from16 v17, v1

    .line 70
    invoke-static/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    :cond_2e
    :goto_18
    return-void
.end method
