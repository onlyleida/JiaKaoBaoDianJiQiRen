.class final Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$welcome$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
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
        "arg",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;",
        "tips",
        "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsValue;",
        "tipsK3"
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
.field final synthetic $content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$welcome$1;->$content:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$welcome$1;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;)V
    .locals 2

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tips"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipsK3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->GUIDE_100100:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;->getRuleCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->triggerBefore(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/t;->d:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips$welcome$1;->$content:Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_1
    return-void
.end method
