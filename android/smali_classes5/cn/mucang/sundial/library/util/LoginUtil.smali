.class public final Lcn/mucang/sundial/library/util/LoginUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00080\u0010*J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ!\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J=\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010 J=\u0010%\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010\'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00172\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0004\u00a2\u0006\u0004\u0008)\u0010*R\u0016\u0010+\u001a\u00020\u00158\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010-\u001a\u00020\u00158\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008-\u0010,R\u0016\u0010.\u001a\u00020\u00158\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008.\u0010,R\u0016\u0010/\u001a\u00020\u00158\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008/\u0010,\u00a8\u00061"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/LoginUtil;",
        "",
        "Lcn/mucang/sundial/library/activity/TopActivity;",
        "activity",
        "Lkotlin/v;",
        "executeCoachSignOut",
        "(Lcn/mucang/sundial/library/activity/TopActivity;)V",
        "executeStudentSignOut",
        "",
        "coachLoginSuccess",
        "()Z",
        "studentLoginSuccess",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coachInfo",
        "executeCoachLogin",
        "(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentInfo",
        "executeStudentLogin",
        "(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "",
        "personMode",
        "",
        "idCardNo",
        "authToken",
        "xyToken",
        "loginWithFaceCheck",
        "(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "executeSignOut",
        "(Lcn/mucang/sundial/library/activity/TopActivity;I)V",
        "logoutWithFaceCheck",
        "(Lcn/mucang/sundial/library/activity/BaseActivity;I)V",
        "photoPath",
        "courseSubject",
        "Lcn/mucang/sundial/library/SundialCallBack;",
        "callBack",
        "studentSilenceLogin",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/sundial/library/SundialCallBack;)V",
        "studentSilenceLogout",
        "(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V",
        "registerLoginLogoutTimeoutCallback",
        "()V",
        "REQUEST_CODE_STUDENT_SIGN_OUT",
        "I",
        "REQUEST_CODE_COACH_SIGN_OUT",
        "REQUEST_CODE_COACH_SIGN_IN",
        "REQUEST_CODE_STUDENT_SIGN_IN",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

.field public static final REQUEST_CODE_COACH_SIGN_IN:I = 0x1

.field public static final REQUEST_CODE_COACH_SIGN_OUT:I = 0x2

.field public static final REQUEST_CODE_STUDENT_SIGN_IN:I = 0x3

.field public static final REQUEST_CODE_STUDENT_SIGN_OUT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/LoginUtil;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final executeCoachSignOut(Lcn/mucang/sundial/library/activity/TopActivity;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachSignOut$1;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachSignOut$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final executeStudentSignOut(Lcn/mucang/sundial/library/activity/TopActivity;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentSignOut$1;

    invoke-direct {v0, p1}, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentSignOut$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic loginWithFaceCheck$default(Lcn/mucang/sundial/library/util/LoginUtil;Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcn/mucang/sundial/library/util/LoginUtil;->loginWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final coachLoginSuccess()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->coachLoginSuccess()Z

    move-result v0

    return v0
.end method

.method public final executeCoachLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$string;->tt_get_server_coach_info_fail:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_get_server_coach_info_fail:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;

    invoke-direct {v0, p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$executeCoachLogin$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final executeSignOut(Lcn/mucang/sundial/library/activity/TopActivity;I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/LoginUtil;->executeCoachSignOut(Lcn/mucang/sundial/library/activity/TopActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/LoginUtil;->executeStudentSignOut(Lcn/mucang/sundial/library/activity/TopActivity;)V

    :goto_0
    return-void
.end method

.method public final executeStudentLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget v1, Lcn/mucang/sundial/library/R$string;->tt_get_server_student_info_fail:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;

    invoke-direct {v0, p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$executeStudentLogin$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final loginWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idCardNo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xyToken"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p5, Landroid/content/Intent;

    const-class v0, Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {p5, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "person_model"

    .line 3
    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object p2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "check_model"

    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget-object p2, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {p2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result p2

    const-string v0, "upload_event_type"

    invoke-virtual {p5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "id_num"

    .line 6
    invoke-virtual {p5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "auth_token"

    .line 7
    invoke-virtual {p5, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {p1, p5, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/widget/ChooseSubjectDialog$Builder;

    invoke-direct {v0, p1, v1}, Lcn/mucang/sundial/library/widget/ChooseSubjectDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 11
    new-instance v1, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcn/mucang/sundial/library/util/LoginUtil$loginWithFaceCheck$2;-><init>(Lcn/mucang/sundial/library/activity/BaseActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/widget/ChooseSubjectDialog$Builder;->setContent(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ChooseSubjectDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    :goto_0
    return-void
.end method

.method public final logoutWithFaceCheck(Lcn/mucang/sundial/library/activity/BaseActivity;I)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, ""

    const-string v3, "id_num"

    const-string v4, "upload_event_type"

    const-string v5, "check_model"

    const-string v6, "person_model"

    const-string v7, "SundialManager.getInstance()"

    if-ne p2, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/library/util/LoginUtil;->coachLoginSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object p2

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    sget-object v0, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getIdCard()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v2, p2

    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p1, v1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget p2, Lcn/mucang/sundial/library/R$string;->tt_sign_out_fail:I

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object p2

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    sget-object v1, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getIdCard()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object v2, p2

    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    const/4 p2, 0x4

    .line 20
    invoke-virtual {p1, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object p1, Lcn/mucang/sundial/library/util/ToastUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ToastUtil;

    sget p2, Lcn/mucang/sundial/library/R$string;->tt_sign_out_fail:I

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/util/ToastUtil;->showToastOnce(I)V

    :goto_0
    return-void
.end method

.method public final registerLoginLogoutTimeoutCallback()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$1;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$1;

    const/16 v2, 0x101

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$2;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$2;

    const/16 v2, 0x201

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$3;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$3;

    const/16 v2, 0x102

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    sget-object v1, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;

    const/16 v2, 0x202

    invoke-virtual {v0, v2, v3, v1}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->registerTimeoutCallback(IZLcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;)V

    return-void
.end method

.method public final studentLoginSuccess()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result v0

    return v0
.end method

.method public final studentSilenceLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/sundial/library/SundialCallBack;)V
    .locals 10

    const-string v0, "idCardNo"

    move-object v4, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authToken"

    move-object v5, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xyToken"

    move-object v6, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photoPath"

    move-object v2, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    move-object/from16 v3, p6

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v9, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    const/4 v8, 0x0

    move-object v1, v9

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v9

    move p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final studentSilenceLogout(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V
    .locals 4

    const-string v0, "photoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    .line 2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    new-instance v2, Landroidx/lifecycle/i0$b;

    new-instance v3, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;

    invoke-direct {v3, p2, v1, v0}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;-><init>(Lcn/mucang/sundial/library/SundialCallBack;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/i0;)V

    invoke-direct {v2, v0, v3}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    check-cast v2, Landroidx/lifecycle/i0$b;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    .line 5
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/i0$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/a0;)V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;

    invoke-direct {v1, p1, p2}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
