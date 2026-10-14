.class public final Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$tiredTipTask$1",
        "Ljava/lang/Runnable;",
        "run",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a()Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne v1, v2, :cond_1

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_400104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->ATTEND_430104:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    :goto_0
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    .line 5
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    int-to-long v2, v2

    .line 6
    :goto_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v0, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->getParamTimeMs(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    .line 8
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->W(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->updateBeforeTimes(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    const-wide/32 v1, 0xea60

    invoke-static {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->i(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;Ljava/lang/Runnable;J)V

    :goto_2
    return-void
.end method
