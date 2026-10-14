.class final Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/q<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "arguments",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "tipsValue",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "tipsValueK3"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->$page:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;)V
    .locals 9

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipsValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipsValueK3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->$page:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->g(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->$page:Ljava/lang/String;

    const-string v2, "MainPanel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->b()Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->c()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->b()Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->d()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->$page:Ljava/lang/String;

    const-string v3, "K3MainPanel"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->c()Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->c()V

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->c()Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/w0/b/c;->d()V

    .line 9
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$onPageEnter$1;->$page:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-wide/16 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p3, "ExamPanel"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto/16 :goto_2

    .line 10
    :cond_6
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 11
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_7

    return-void

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p3

    .line 12
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "K3LightTrainPanel"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_2

    .line 15
    :cond_8
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 16
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18
    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_2

    .line 19
    :cond_9
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->f(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;)V

    goto/16 :goto_2

    :sswitch_3
    const-string p2, "VideoPanel"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_2

    .line 21
    :cond_a
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100102:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 22
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_4
    const-string p3, "TrainPanel"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    goto/16 :goto_2

    .line 25
    :cond_b
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 26
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->f:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_c

    return-void

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p3

    .line 27
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 28
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_5
    const-string p2, "K3TrainPanel"

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_2

    .line 30
    :cond_d
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130103:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 31
    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->f:J

    cmp-long p3, v2, v4

    if-lez p3, :cond_e

    return-void

    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 32
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 33
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_6
    const-string p2, "K3ExamPanel"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_2

    .line 35
    :cond_f
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 36
    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->j:J

    cmp-long p3, v2, v4

    if-lez p3, :cond_10

    return-void

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 37
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_7
    const-string p2, "BaseOperatePanel"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_2

    .line 40
    :cond_11
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->c0()V

    .line 41
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100103:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 42
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 43
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_8
    const-string p2, "K3ReadyPanel"

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_2

    .line 45
    :cond_12
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_130101:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    .line 46
    invoke-static/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 47
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    :cond_13
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d8e4677 -> :sswitch_8
        -0x4b07af8f -> :sswitch_7
        -0x448d5b43 -> :sswitch_6
        -0x17c7e7bc -> :sswitch_5
        -0x262f704 -> :sswitch_4
        0x15877669 -> :sswitch_3
        0x679fdfab -> :sswitch_2
        0x6f0f502a -> :sswitch_1
        0x71d0bd05 -> :sswitch_0
    .end sparse-switch
.end method
