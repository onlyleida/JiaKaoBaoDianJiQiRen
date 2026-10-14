.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity \u70b9\u51fb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "EXIT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->F()V

    const-string p1, "Unity Exit"

    const-string p2, ""

    .line 4
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "RESOURCE_PAGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->h()F

    move-result p1

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;-><init>()V

    .line 8
    iput p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;->process:F

    .line 9
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "PHONE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->C()V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "EGG"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/a;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/K2TeachCollectActivity;->w(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "MAP"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, v0, :cond_19

    .line 16
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity;->p(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    goto/16 :goto_0

    .line 17
    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "LOGIN"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->E(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "TEACH_PIC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->n()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/d0;->p()V

    goto/16 :goto_0

    .line 22
    :cond_6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "AUTO_TEACH_PIC"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->k()V

    goto/16 :goto_0

    .line 24
    :cond_7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "HELPER"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->d()V

    .line 26
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->l()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 27
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->s()V

    goto/16 :goto_0

    :cond_8
    const-string p1, "\u8bed\u97f3\u52a9\u624b\u5df2\u88ab\u7981\u7528"

    .line 28
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 29
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_disabled_speech:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "ABOUT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;->o(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 32
    :cond_a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "LANGUAGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 34
    :cond_b
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "CLOE_SECURITY"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->g(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 36
    :cond_c
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "CLOE_SECURITY_30"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->f(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 38
    :cond_d
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "DEDUCT_INFO"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->e()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->y()V

    goto/16 :goto_0

    .line 40
    :cond_e
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "PREVIEW"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->e()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->D()V

    goto/16 :goto_0

    .line 42
    :cond_f
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "JUDGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->e()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->K()V

    goto/16 :goto_0

    .line 44
    :cond_10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v1, "AUTO_TEACH_DEBUG"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 45
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->f()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->Q(Z)V

    goto/16 :goto_0

    .line 46
    :cond_11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "HIGH_ERROR"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->h()V

    goto/16 :goto_0

    .line 48
    :cond_12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "QRCODE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->content:Ljava/lang/String;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->u(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "SHARE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->v(Landroid/app/Activity;)V

    goto :goto_0

    .line 52
    :cond_14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "FOCUS_MODE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->content:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "DRIVE_GUIDE"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-ne p1, p2, :cond_16

    const-string p1, "\u8bf7\u5207\u6362\u5230\u79d1\u76ee\u4e8c\u8fdb\u884c\u5b66\u8f66\u6307\u5f15"

    .line 56
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 57
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 58
    invoke-static {v1, p1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 59
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p2, "\u606d\u559c\u60a8\uff0c\u5bfc\u8bad\u9879\u76ee\u5df2\u5b8c\u6210\uff0c\u8bf7\u6309\u6559\u7ec3\u6307\u5bfc\u8fdb\u884c\u7ec3\u4e60"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 60
    :cond_17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v2, "USER_FIRST_TRAIN"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->b:I

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->a(ZI)V

    goto :goto_0

    .line 62
    :cond_18
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;->url:Ljava/lang/String;

    const-string v0, "SETTING"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x2

    .line 63
    invoke-static {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->o(Landroid/content/Context;I)V

    :cond_19
    :goto_0
    return-void
.end method

.method private synthetic c(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;->b(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityUIActionModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic d(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/g0;->c(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)V

    return-void
.end method
