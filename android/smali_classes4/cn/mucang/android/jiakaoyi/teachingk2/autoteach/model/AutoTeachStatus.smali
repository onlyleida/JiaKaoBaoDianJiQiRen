.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;",
        "",
        "type",
        "",
        "desc",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "setDesc",
        "(Ljava/lang/String;)V",
        "getType",
        "()I",
        "CheckStop",
        "CheckPos",
        "CheckSignal",
        "TeachStart",
        "TeachResume",
        "TeachPause",
        "TeachEnd",
        "CheckEnd",
        "CheckGps",
        "CheckType",
        "CheckRoute",
        "Navi",
        "Waiting",
        "Companion",
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


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckGps:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckPos:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckSignal:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckStop:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum CheckType:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final Companion:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

.field public static final enum Navi:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum TeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum TeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field public static final enum Waiting:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;


# instance fields
.field private desc:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckStop:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckPos:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckSignal:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckGps:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckType:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Navi:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Waiting:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_start_stop_button:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teach\u2026_check_start_stop_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckStop"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckStop:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_car_location:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_check_car_location)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckPos"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckPos:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_car_status:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_check_car_status)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckSignal"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckSignal:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_start_teach)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TeachStart"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachStart:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_resume_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_resume_teach)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TeachResume"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pause_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_pause_teach)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TeachPause"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachPause:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_end_teach:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_end_teach)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TeachEnd"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_end_signal:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_check_end_signal)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckEnd"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckEnd:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_gps:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_check_gps)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckGps"

    const/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckGps:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_select_teach_type:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_select_teach_type)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckType"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckType:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_select_route:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_select_route)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CheckRoute"

    const/16 v4, 0xb

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_navigation_outside_step:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teach\u2026_navigation_outside_step)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Navi"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Navi:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_wait_select_route:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_wait_select_route)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Waiting"

    const/16 v4, 0xd

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Waiting:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->type:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->desc:Ljava/lang/String;

    return-void
.end method

.method public static final getStatus(I)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->type:I

    return v0
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->desc:Ljava/lang/String;

    return-void
.end method
