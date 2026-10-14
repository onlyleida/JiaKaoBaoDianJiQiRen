.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_LEFT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_LEFT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_RIGHT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public static final enum DESC_RIGHT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;


# instance fields
.field public final id:I

.field public final src:Ljava/lang/String;

.field public final targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public final zhSrc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v1, "DESC_NONE"

    const/4 v2, 0x0

    const/16 v3, 0xff

    const-string v4, ""

    const-string v5, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    sget v1, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_left_front:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v9, "DESC_LEFT_FRONT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "\u5de6\u524d\u65b9"

    move-object v8, v0

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    sget v3, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_front:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v19

    const-string v15, "DESC_FRONT"

    const/16 v16, 0x2

    const/16 v17, 0x2

    const-string v18, "\u6b63\u524d\u65b9"

    move-object v14, v2

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    sget v4, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_right_front:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v19

    const-string v15, "DESC_RIGHT_FRONT"

    const/16 v16, 0x3

    const/16 v17, 0x3

    const-string v18, "\u53f3\u524d\u65b9"

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    sget v4, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_left_back:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_0
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_0
    move-object v14, v4

    const-string v9, "DESC_LEFT_BACK"

    const/4 v10, 0x4

    const/4 v11, 0x4

    const-string v12, "\u5de6\u540e\u65b9"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const/16 v17, 0x5

    const/16 v18, 0x5

    sget v5, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_back:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    :cond_1
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_1
    move-object/from16 v21, v5

    const-string v16, "DESC_BACK"

    const-string v19, "\u6b63\u540e\u65b9"

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const/4 v10, 0x6

    const/4 v11, 0x6

    sget v6, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_right_back:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_2

    :cond_2
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_2
    move-object v14, v6

    const-string v9, "DESC_RIGHT_BACK"

    const-string v12, "\u53f3\u540e\u65b9"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const/4 v6, 0x7

    new-array v6, v6, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    .line 8
    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->id:I

    .line 3
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->src:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->zhSrc:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object v0
.end method


# virtual methods
.method public isBack()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFront()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
