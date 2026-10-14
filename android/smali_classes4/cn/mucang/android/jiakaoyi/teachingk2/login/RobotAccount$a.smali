.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/login/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->m(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$login$1",
        "Lcn/mucang/jiakaoyi/uilib/login/TimeOutCallback;",
        "onTimeTip",
        "",
        "timeTip",
        "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;",
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
.method public a(Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;)V
    .locals 8

    const-string v0, "timeTip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Over:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    const-string v0, "timeOver"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 4
    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    if-nez v0, :cond_2

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;->isUnityLoaded:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->getTip()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->getTip()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :goto_1
    return-void
.end method
