.class public final enum Lcn/mucang/jiakaoyi/uilib/cost/entity/State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/cost/entity/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum BaseTimeChargeStop:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum ChargeStop:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum End:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum None:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum Pause:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum Resume:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

.field public static final enum SyncEnd:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v1, "End"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->End:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v3, "SyncEnd"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->SyncEnd:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 3
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v5, "Pause"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->Pause:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 4
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v7, "Resume"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->Resume:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 5
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v9, "ChargeStop"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->ChargeStop:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 6
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v11, "BaseTimeChargeStop"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->BaseTimeChargeStop:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    .line 7
    new-instance v11, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const-string v13, "None"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->None:Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/cost/entity/State;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/cost/entity/State;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    invoke-virtual {v0}, [Lcn/mucang/jiakaoyi/uilib/cost/entity/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/cost/entity/State;

    return-object v0
.end method
