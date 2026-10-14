.class public final enum Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "",
        "singleState",
        "",
        "(Ljava/lang/String;II)V",
        "state",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "START",
        "FAIL",
        "SUCCESS",
        "SINGLE_MODEL_START",
        "SINGLE_MODEL_UPGRADING",
        "SINGLE_MODEL_PACK_FINISH",
        "SINGLE_MODEL_SUCCESS",
        "SINGLE_MODEL_FAIL",
        "signal_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SINGLE_MODEL_UPGRADING:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

.field public static final enum SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;


# instance fields
.field private state:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_UPGRADING:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SINGLE_MODEL_START"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SINGLE_MODEL_UPGRADING"

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_UPGRADING:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SINGLE_MODEL_PACK_FINISH"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SINGLE_MODEL_SUCCESS"

    const/4 v2, 0x6

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v1, "SINGLE_MODEL_FAIL"

    const/4 v2, 0x7

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->$values()[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    return-object v0
.end method


# virtual methods
.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->state:I

    return v0
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->state:I

    return-void
.end method
