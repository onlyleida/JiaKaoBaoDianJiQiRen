.class public final enum Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

.field public static final enum CONSUME:Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

.field public static final enum RECHARGE:Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    const-string v1, "CONSUME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;->CONSUME:Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    const-string v3, "RECHARGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;->RECHARGE:Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    invoke-virtual {v0}, [Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/cost/entity/CostType;

    return-object v0
.end method
