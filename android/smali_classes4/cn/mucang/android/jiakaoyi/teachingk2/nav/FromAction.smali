.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;",
        "",
        "zhReportVoice",
        "",
        "zhOperateVoice",
        "reportVoice",
        "operateVoice",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getOperateVoice",
        "()Ljava/lang/String;",
        "getReportVoice",
        "getZhOperateVoice",
        "getZhReportVoice",
        "NONE",
        "GO_STRAIGHT",
        "TURN_LEFT",
        "TURN_RIGHT",
        "TURN_ROUND",
        "CHANGE_TO_LEFT",
        "CHANGE_TO_RIGHT",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum CHANGE_TO_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum CHANGE_TO_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum GO_STRAIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum NONE:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum TURN_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum TURN_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

.field public static final enum TURN_ROUND:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;


# instance fields
.field private final operateVoice:Ljava/lang/String;

.field private final reportVoice:Ljava/lang/String;

.field private final zhOperateVoice:Ljava/lang/String;

.field private final zhReportVoice:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->GO_STRAIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_ROUND:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->CHANGE_TO_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->CHANGE_TO_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_going_straight:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "getString(R.string.teachbase_going_straight)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "GO_STRAIGHT"

    const/4 v10, 0x1

    const-string v11, ""

    const-string v12, "\u8bf7\u4fdd\u6301\u76f4\u884c"

    const-string v13, ""

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->GO_STRAIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_turn_left:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "getString(R.string.teachbase_turn_left)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_turn_left:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(R.string.teachbase_start_turn_left)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TURN_LEFT"

    const/4 v3, 0x2

    const-string v4, "\u524d\u65b9\u5373\u5c06\u5de6\u8f6c"

    const-string v5, "\u5f00\u59cb\u5de6\u8f6c"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_turn_right:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "getString(R.string.teachbase_turn_right)"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_turn_right:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "getString(R.string.teachbase_start_turn_right)"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "TURN_RIGHT"

    const/4 v10, 0x3

    const-string v11, "\u524d\u65b9\u5373\u5c06\u53f3\u8f6c"

    const-string v12, "\u5f00\u59cb\u53f3\u8f6c"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_ahead_turn:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "getString(R.string.teachbase_ahead_turn)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_turn:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(R.string.teachbase_turn)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TURN_ROUND"

    const/4 v3, 0x4

    const-string v4, "\u524d\u65b9\u5373\u5c06\u6389\u5934"

    const-string v5, "\u5f00\u59cb\u6389\u5934"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->TURN_ROUND:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const-string v9, "CHANGE_TO_LEFT"

    const/4 v10, 0x5

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->CHANGE_TO_LEFT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    const-string v2, "CHANGE_TO_RIGHT"

    const/4 v3, 0x6

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->CHANGE_TO_RIGHT:Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->zhReportVoice:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->zhOperateVoice:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->reportVoice:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->operateVoice:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;

    return-object v0
.end method


# virtual methods
.method public final getOperateVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->operateVoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->reportVoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getZhOperateVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->zhOperateVoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getZhReportVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;->zhReportVoice:Ljava/lang/String;

    return-object v0
.end method
