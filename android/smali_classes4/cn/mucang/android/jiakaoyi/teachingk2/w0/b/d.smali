.class public final Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u0018R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/handle/TrainRule;",
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
        "getKemu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getTipSpeaker",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker;",
        "getTipsValue",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "trainStepItem",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;",
        "trainStepStartTime",
        "",
        "trainStepValid",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepValidEvent;",
        "handleDeduct",
        "",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "handleStepInfo",
        "stepHandler",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepStartEvent;",
        "isPass",
        "",
        "handleStepValid",
        "valid",
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

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

.field private f:Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

.field private g:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;)V
    .locals 1

    const-string v0, "kemu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    return-object v0
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "deduct"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    if-nez v3, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    const-string v5, "deduct.deduct.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/text/Regex;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_touch_line_regex:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.teachbase_touch_line_regex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->addDeduction(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 5
    :goto_0
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerToday(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 6
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v4

    .line 7
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->g:Ljava/util/List;

    const-string v5, "tipsValue.trainTodayList"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 9
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_5

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 11
    :cond_4
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 12
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 13
    iget v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v10, 0x1

    if-ne v8, v9, :cond_a

    iget-boolean v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->passed:Z

    if-nez v8, :cond_a

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    if-nez v7, :cond_6

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 14
    :cond_6
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 15
    :cond_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;

    .line 16
    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->desc:Ljava/lang/String;

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v7, 0x1

    :goto_1
    if-ne v7, v10, :cond_5

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_a

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_4

    .line 17
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v7

    sub-int/2addr v2, v7

    if-nez v2, :cond_b

    .line 19
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    .line 20
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_4
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 22
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object v2, v7

    goto :goto_5

    .line 23
    :cond_d
    invoke-static {v2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 24
    :goto_5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    const/4 v7, 0x0

    if-nez v5, :cond_e

    :goto_6
    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    if-nez v5, :cond_f

    goto :goto_6

    .line 25
    :cond_f
    instance-of v8, v5, Ljava/util/Collection;

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_6

    .line 26
    :cond_10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :cond_11
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;

    .line 27
    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->desc:Ljava/lang/String;

    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    add-int/lit8 v8, v8, 0x1

    if-ltz v8, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {}, Lkotlin/collections/s;->s()V

    throw v7

    .line 28
    :cond_13
    :goto_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 29
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->deduction:Ljava/util/List;

    if-nez v5, :cond_14

    :goto_a
    const/4 v9, 0x0

    goto :goto_c

    .line 30
    :cond_14
    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_15

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_a

    .line 31
    :cond_15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :cond_16
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;

    .line 32
    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep$Deduction;->desc:Ljava/lang/String;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    add-int/lit8 v9, v9, 0x1

    if-ltz v9, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {}, Lkotlin/collections/s;->s()V

    throw v7

    :cond_18
    :goto_c
    add-int/2addr v8, v9

    goto :goto_9

    :cond_19
    if-lez v8, :cond_1b

    .line 33
    rem-int/2addr v8, v4

    if-nez v8, :cond_1b

    .line 34
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v9, :cond_1a

    goto :goto_d

    .line 35
    :cond_1a
    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    .line 36
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    const-string v4, "\u3010\\deduct\\\u3011"

    invoke-static {v4, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    const/16 v17, 0x0

    .line 37
    invoke-static/range {v9 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 38
    :goto_d
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateTodayTimes(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final c(Lcn/mucang/android/jiakaoyi/engine/trace/model/a;Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "stepHandler"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->d:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    if-nez v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->d()Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v3

    .line 7
    invoke-direct {v1, v3, v8, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;-><init>(IZZ)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->f:Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->g:J

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v3, :cond_1e

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400100:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v4, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v1

    .line 12
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->g:Ljava/util/List;

    const-string v3, "tipsValue.trainTodayList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/collections/s;->I0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_1e

    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 17
    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 18
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_4
    check-cast v6, Ljava/util/List;

    .line 22
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v7, :cond_1e

    .line 24
    instance-of v1, v2, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 25
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 26
    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->valid:Z

    if-eqz v2, :cond_8

    :goto_2
    if-nez v7, :cond_1e

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    move-result-object v8

    if-nez v8, :cond_9

    goto/16 :goto_d

    :cond_9
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400100:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 28
    :cond_a
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->h:Ljava/util/List;

    const-string v9, "tipsValue.trainRecentList"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    .line 29
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->f:Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

    if-nez v9, :cond_c

    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    :cond_c
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/b;->a()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v10

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_f

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->f:Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

    if-nez v9, :cond_e

    :cond_d
    const/4 v9, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/engine/trace/model/b;->b()Z

    move-result v9

    if-ne v9, v7, :cond_d

    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    .line 30
    :goto_5
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;

    if-nez v10, :cond_10

    goto :goto_6

    .line 31
    :cond_10
    invoke-virtual {v10, v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->set(ZZ)V

    .line 32
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->g:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->h:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_6
    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->g:J

    sub-long/2addr v12, v14

    add-long/2addr v10, v12

    iput-wide v10, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->f:J

    .line 35
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->i:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_11
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const-string v11, "tipsValue.stepSerialPassCount"

    if-eqz v5, :cond_14

    .line 36
    iget v12, v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v13

    if-ne v12, v13, :cond_12

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_13

    if-eqz v9, :cond_13

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    .line 37
    :goto_7
    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->i:Ljava/util/HashMap;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;->step:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v7

    goto :goto_9

    :cond_14
    :goto_8
    if-eqz v1, :cond_15

    if-eqz v9, :cond_15

    add-int/lit8 v8, v10, 0x1

    .line 38
    :cond_15
    :goto_9
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->i:Ljava/util/HashMap;

    invoke-static {v2, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/engine/trace/model/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u3010\\project\\\u3011"

    if-lez v8, :cond_18

    .line 39
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v3, v5, :cond_16

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200103:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_a

    :cond_16
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_230103:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_a
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    .line 40
    invoke-virtual {v4, v3, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamCount(Ljava/lang/String;I)I

    move-result v3

    rem-int/2addr v8, v3

    if-nez v8, :cond_18

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 42
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v10, :cond_17

    goto/16 :goto_d

    :cond_17
    sget-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200103:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-static {v2, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    goto :goto_d

    .line 43
    :cond_18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    if-eqz v1, :cond_1b

    if-eqz v9, :cond_1b

    .line 44
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v1, :cond_19

    goto :goto_d

    :cond_19
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v3, v4, :cond_1a

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_b

    :cond_1a
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_230101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    .line 45
    :goto_b
    invoke-static {v2, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    .line 46
    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    goto :goto_d

    .line 47
    :cond_1b
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    if-nez v11, :cond_1c

    goto :goto_d

    .line 48
    :cond_1c
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v3, :cond_1d

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_200102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_c

    :cond_1d
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ACHIEVE_230102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_c
    move-object v12, v1

    .line 49
    invoke-static {v2, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/l0;->e(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2c

    const/16 v19, 0x0

    .line 50
    invoke-static/range {v11 .. v19}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    :cond_1e
    :goto_d
    return-void
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/engine/trace/model/b;)V
    .locals 1

    const-string v0, "valid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/d;->f:Lcn/mucang/android/jiakaoyi/engine/trace/model/b;

    return-void
.end method
