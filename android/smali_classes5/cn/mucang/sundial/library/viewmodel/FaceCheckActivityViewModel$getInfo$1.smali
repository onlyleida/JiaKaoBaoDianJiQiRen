.class final Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getInfo(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $authToken:Ljava/lang/String;

.field final synthetic $checkMode:I

.field final synthetic $courseSubject:I

.field final synthetic $idCardNo:Ljava/lang/String;

.field final synthetic $personMode:I

.field final synthetic $xyToken:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    iput p2, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$personMode:I

    iput p3, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$checkMode:I

    iput-object p4, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$idCardNo:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$authToken:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$xyToken:Ljava/lang/String;

    iput p7, p0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$courseSubject:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "SundialManager.getInstance()"

    const/4 v5, 0x1

    if-ne v0, v2, :cond_5

    .line 2
    iget v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$checkMode:I

    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$idCardNo:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 6
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getTeachType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/http/CoachApi;

    invoke-direct {v0}, Lcn/mucang/sundial/library/http/CoachApi;-><init>()V

    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$idCardNo:Ljava/lang/String;

    iget-object v6, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$authToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcn/mucang/sundial/library/http/CoachApi;->getCoachInfo(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    .line 12
    :goto_1
    check-cast v3, Lcn/mucang/sundial/library/entity/ServerCoachInfo;

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getGlobalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/mucang/sundial/library/util/KtxsKt;->toCoachInfo(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    .line 16
    iget v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$checkMode:I

    sget-object v3, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 17
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveCoach(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    .line 18
    :cond_3
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2, v0}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setCoachInfoData(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    .line 19
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getTeachType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 21
    :cond_4
    :goto_2
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 22
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_get_server_coach_info_fail:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getApplication<Applicati\u2026t_server_coach_info_fail)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v11

    move-object v7, v0

    invoke-direct/range {v3 .. v10}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 24
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v3, v14

    move-object v10, v0

    invoke-direct/range {v3 .. v13}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 25
    :cond_5
    iget v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_11

    .line 26
    iget v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$checkMode:I

    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 27
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$idCardNo:Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 30
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 31
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_6
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 33
    new-instance v0, Lcn/mucang/sundial/library/http/StudentApi;

    invoke-direct {v0}, Lcn/mucang/sundial/library/http/StudentApi;-><init>()V

    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$idCardNo:Ljava/lang/String;

    iget-object v6, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$authToken:Ljava/lang/String;

    iget-object v7, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$xyToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v7}, Lcn/mucang/sundial/library/http/StudentApi;->getStudentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v0

    .line 36
    :goto_4
    check-cast v3, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    if-eqz v3, :cond_f

    .line 37
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getGlobalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8

    .line 38
    :cond_8
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 39
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    .line 40
    iget v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$courseSubject:I

    invoke-static {v3, v2, v0}, Lcn/mucang/sundial/library/util/KtxsKt;->toStudentInfo(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    .line 41
    iget v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->$checkMode:I

    sget-object v4, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 42
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->saveStudent(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 43
    :cond_9
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2, v0}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setStudentInfoData(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 44
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getConfirmMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_5
    if-nez v5, :cond_e

    .line 45
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v10, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getConfirmMessage()Ljava/lang/String;

    move-result-object v4

    const-string v11, ""

    if-eqz v4, :cond_c

    move-object v9, v4

    goto :goto_6

    :cond_c
    move-object v9, v11

    :goto_6
    const-string v8, ""

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 46
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v4, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getConfirmMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object/from16 v20, v0

    goto :goto_7

    :cond_d
    move-object/from16 v20, v11

    :goto_7
    const-string v19, ""

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 47
    :cond_e
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 48
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v2

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v2, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 49
    :cond_f
    :goto_8
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 50
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_get_server_student_info_fail:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getApplication<Applicati\u2026server_student_info_fail)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_10

    .line 51
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 52
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_10
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v10

    new-instance v11, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v11

    move-object v6, v0

    invoke-direct/range {v2 .. v9}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v10, v11}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 54
    iget-object v2, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v13

    new-instance v14, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v14

    move-object v9, v0

    invoke-direct/range {v2 .. v12}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v13, v14}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_9

    .line 55
    :cond_11
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0, v5}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->setInfoReady(Z)V

    .line 56
    iget-object v0, v1, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$getInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v10, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v10}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :goto_9
    return-void
.end method
