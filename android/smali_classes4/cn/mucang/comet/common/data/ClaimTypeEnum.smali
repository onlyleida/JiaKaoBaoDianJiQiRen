.class public final enum Lcn/mucang/comet/common/data/ClaimTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/comet/common/data/ClaimTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/comet/common/data/ClaimTypeEnum;

.field public static final enum CLAIM_TYPE_PROXY:Lcn/mucang/comet/common/data/ClaimTypeEnum;

.field public static final enum CLAIM_TYPE_SLAVE:Lcn/mucang/comet/common/data/ClaimTypeEnum;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/comet/common/data/ClaimTypeEnum;

    const-string v1, "CLAIM_TYPE_SLAVE"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/comet/common/data/ClaimTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/comet/common/data/ClaimTypeEnum;->CLAIM_TYPE_SLAVE:Lcn/mucang/comet/common/data/ClaimTypeEnum;

    .line 2
    new-instance v1, Lcn/mucang/comet/common/data/ClaimTypeEnum;

    const-string v3, "CLAIM_TYPE_PROXY"

    const/4 v4, 0x1

    const/16 v5, 0x14

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/comet/common/data/ClaimTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/comet/common/data/ClaimTypeEnum;->CLAIM_TYPE_PROXY:Lcn/mucang/comet/common/data/ClaimTypeEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/comet/common/data/ClaimTypeEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/comet/common/data/ClaimTypeEnum;->$VALUES:[Lcn/mucang/comet/common/data/ClaimTypeEnum;

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
    iput p3, p0, Lcn/mucang/comet/common/data/ClaimTypeEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/comet/common/data/ClaimTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/comet/common/data/ClaimTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/comet/common/data/ClaimTypeEnum;

    return-object p0
.end method

.method public static values()[Lcn/mucang/comet/common/data/ClaimTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/comet/common/data/ClaimTypeEnum;->$VALUES:[Lcn/mucang/comet/common/data/ClaimTypeEnum;

    invoke-virtual {v0}, [Lcn/mucang/comet/common/data/ClaimTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/comet/common/data/ClaimTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/comet/common/data/ClaimTypeEnum;->type:I

    return v0
.end method
