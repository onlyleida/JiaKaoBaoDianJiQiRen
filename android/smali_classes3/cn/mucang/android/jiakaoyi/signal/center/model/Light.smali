.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/Light;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final enum WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field public static final lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;


# instance fields
.field public final iconRes:I

.field public final lightId:I

.field public final lightName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v1, "Off"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "\u5173\u95ed"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v8, "FlashLight"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\u8fdc\u8fd1\u4ea4\u66ff\u95ea\u706f"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v18, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_turn_left:I

    const-string v14, "TurnLeftLight"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "\u5de6\u8f6c\u5411\u706f"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v12, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_turn_right:I

    const-string v8, "TurnRightLight"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "\u53f3\u8f6c\u5411\u706f"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v18, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_warning:I

    const-string v14, "WarningLight"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const-string v17, "\u5e94\u6025\u706f"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v12, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_near:I

    const-string v8, "NearLight"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "\u8fd1\u5149\u706f"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v18, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_far:I

    const-string v14, "FarLight"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v17, "\u8fdc\u5149\u706f"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v12, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_width:I

    const-string v8, "WidthLight"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "\u793a\u5bbd\u706f"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v8, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_fog:I

    const-string v15, "FrontFogLight"

    const/16 v16, 0x8

    const/16 v17, 0x8

    const-string v18, "\u524d\u96fe\u706f"

    move-object v14, v7

    move/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 10
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v15, "RearFogLight"

    const/16 v16, 0x9

    const/16 v17, 0x9

    const-string v18, "\u540e\u96fe\u706f"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 11
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget v24, Lcn/mucang/android/jiakaoyi/signal/R$drawable;->light_return:I

    const-string v20, "ReturnLight"

    const/16 v21, 0xa

    const/16 v22, 0xa

    const-string v23, "\u5012\u8f66\u706f"

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v24}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/16 v10, 0xb

    new-array v10, v10, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v0, v10, v6

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v7, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    const/16 v0, 0xa

    aput-object v8, v10, v0

    .line 12
    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return-void
.end method

.method public static findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    return-object v0
.end method
