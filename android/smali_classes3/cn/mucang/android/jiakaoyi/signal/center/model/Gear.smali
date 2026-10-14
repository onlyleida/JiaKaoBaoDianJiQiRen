.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Gear6:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearL:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearM:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum GearS:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final enum Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public static final list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# instance fields
.field public final gear:I

.field public final gearName:Ljava/lang/String;

.field public final maxSpeed:I

.field public final minSpeed:I

.field public final zhName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_n:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "GearN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v7, "\u7a7a\u6321"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v1, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear1:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v10, "Gear1"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "1\u6321"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v2, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear2:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v21

    const-string v18, "Gear2"

    const/16 v19, 0x2

    const/16 v20, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "2\u6321"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v3, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear3:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v10, "Gear3"

    const/4 v11, 0x3

    const/4 v12, 0x3

    const-string v16, "3\u6321"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v4, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear4:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v21

    const-string v18, "Gear4"

    const/16 v19, 0x4

    const/16 v20, 0x4

    const-string v24, "4\u6321"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v5, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear5:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v10, "Gear5"

    const/4 v11, 0x5

    const/4 v12, 0x5

    const-string v16, "5\u6321"

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v6, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear6:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v21

    const-string v18, "Gear6"

    const/16 v19, 0x6

    const/16 v20, 0x6

    const-string v24, "6\u6321"

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear6:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v7, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_p:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v10, "GearP"

    const/4 v11, 0x7

    const/4 v12, 0x7

    const-string v16, "P\u6321"

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v9, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_d:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v21

    const-string v18, "GearD"

    const/16 v19, 0x8

    const/16 v20, 0x8

    const-string v24, "D\u6321"

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 10
    new-instance v17, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v9, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_s:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    const-string v10, "GearS"

    const/16 v11, 0x9

    const/16 v12, 0x9

    const-string v16, "S\u6321"

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v17, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearS:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 11
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v10, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_back:I

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v22

    const-string v19, "GearBack"

    const/16 v20, 0xa

    const/16 v21, 0xa

    const/16 v24, 0x0

    const-string v25, "\u5012\u6321"

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 12
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v11, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_m:I

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v30

    const-string v27, "GearM"

    const/16 v28, 0xb

    const/16 v29, 0xb

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "M\u6321"

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearM:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v12, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_l:I

    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v22

    const-string v19, "GearL"

    const/16 v20, 0xc

    const/16 v21, 0xc

    const-string v25, "L\u6321"

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearL:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 14
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget v13, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_invalid:I

    invoke-static {v13}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v30

    const-string v27, "Invalid"

    const/16 v28, 0xd

    const/16 v29, -0x1

    const-string v33, "-"

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v13, 0xe

    new-array v13, v13, [Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    aput-object v8, v13, v14

    const/4 v8, 0x1

    aput-object v0, v13, v8

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const/4 v0, 0x3

    aput-object v2, v13, v0

    const/4 v0, 0x4

    aput-object v3, v13, v0

    const/4 v0, 0x5

    aput-object v4, v13, v0

    const/4 v0, 0x6

    aput-object v5, v13, v0

    const/4 v0, 0x7

    aput-object v6, v13, v0

    const/16 v0, 0x8

    aput-object v7, v13, v0

    const/16 v0, 0x9

    aput-object v17, v13, v0

    const/16 v0, 0xa

    aput-object v9, v13, v0

    const/16 v0, 0xb

    aput-object v10, v13, v0

    const/16 v0, 0xc

    aput-object v11, v13, v0

    const/16 v0, 0xd

    aput-object v12, v13, v0

    .line 15
    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 18
    array-length v1, v0

    :goto_0
    if-ge v14, v1, :cond_0

    aget-object v2, v0, v14

    .line 19
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/2addr v4, v8

    aput-object v2, v3, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->minSpeed:I

    .line 5
    iput p6, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->maxSpeed:I

    .line 6
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->zhName:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 2

    add-int/lit8 p0, p0, 0x1

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0
.end method


# virtual methods
.method public isBack()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFront()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManual()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public number()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-string v0, "\u7a7a\u6321"

    return-object v0

    :pswitch_1
    const-string v0, "\u4e94\u6321"

    return-object v0

    :pswitch_2
    const-string v0, "\u56db\u6321"

    return-object v0

    :pswitch_3
    const-string v0, "\u4e09\u6321"

    return-object v0

    :pswitch_4
    const-string v0, "\u4e8c\u6321"

    return-object v0

    :pswitch_5
    const-string v0, "\u4e00\u6321"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
