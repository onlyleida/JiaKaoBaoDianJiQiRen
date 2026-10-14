.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;",
        "",
        "()V",
        "onLevelChanged",
        "",
        "lastConfig",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;",
        "currentConfig",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5173\u5361-\u53d8\u5316:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->FirstPractice:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->findByCode(I)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->k(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    :cond_2
    const/4 v2, 0x0

    if-nez p1, :cond_3

    move-object v3, v2

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    if-nez p2, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez p1, :cond_5

    move-object v3, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    if-nez p2, :cond_6

    move-object v4, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez p1, :cond_8

    :cond_7
    const/4 p2, 0x0

    goto :goto_5

    .line 5
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result p2

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->CircleTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v2

    if-ne p2, v2, :cond_7

    const/4 p2, 0x1

    :goto_5
    if-nez p2, :cond_b

    if-nez p1, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->ComplexTrain:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result p2

    if-ne p1, p2, :cond_9

    :goto_6
    if-eqz v0, :cond_c

    .line 6
    :cond_b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelStepCalculator;->c()V

    :cond_c
    return-void

    :cond_d
    if-nez p2, :cond_e

    const/4 p2, 0x4

    .line 7
    invoke-static {v1, p1, v2, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->t(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;ILjava/lang/Object;)Z

    return-void

    .line 8
    :cond_e
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    if-nez p1, :cond_10

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_f

    :goto_7
    if-eqz v0, :cond_12

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->FirstPractice:Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/TutorialLevel;->getServerCode()I

    move-result v1

    if-ne v0, v1, :cond_11

    return-void

    .line 10
    :cond_11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    goto :goto_8

    .line 11
    :cond_12
    invoke-static {v1, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z

    :goto_8
    return-void
.end method
