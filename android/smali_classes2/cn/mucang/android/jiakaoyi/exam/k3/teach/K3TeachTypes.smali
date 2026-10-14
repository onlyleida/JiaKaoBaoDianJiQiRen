.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Angle:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum AroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum BianDao:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Clutch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum DiaoTou:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Distance:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Door:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Engine:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum FingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum FootBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Gear:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum HandBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum HuiZhen:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum KeepLight:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Laba:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Light:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Offset:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum QiBu:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum SeatBelt:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum SpeedDown:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum SpeedUp:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum StopCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum ThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum Time:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

.field public static final enum ZhuanWan:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public type:I

.field public typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    const-string v1, "Angle"

    const/4 v2, 0x0

    const-string v3, "\u89d2\u5ea6"

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Angle:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    const-string v8, "Light"

    const/4 v9, 0x1

    const-string v10, "\u706f\u5149"

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Light:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v18, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/GearVariable;

    const-string v14, "Gear"

    const/4 v15, 0x2

    const-string v16, "\u6321\u4f4d"

    const/16 v17, 0x3

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Gear:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LabaVariable;

    const-string v8, "Laba"

    const/4 v9, 0x3

    const-string v10, "\u5587\u53ed"

    const/4 v11, 0x4

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Laba:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v18, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    const-string v14, "BianDao"

    const/4 v15, 0x4

    const-string v16, "\u53d8\u9053"

    const/16 v17, 0x5

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->BianDao:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DistanceVariable;

    const-string v8, "Distance"

    const/4 v9, 0x5

    const-string v10, "\u8ddd\u79bb"

    const/4 v11, 0x6

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v18, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FootBrakeVariable;

    const-string v14, "FootBrake"

    const/4 v15, 0x6

    const-string v16, "\u811a\u5239"

    const/16 v17, 0x7

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->FootBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/EngineVariable;

    const-string v8, "Engine"

    const/4 v9, 0x7

    const-string v10, "\u5f15\u64ce"

    const/16 v11, 0x8

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Engine:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 9
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DoorVariable;

    const-string v15, "Door"

    const/16 v16, 0x8

    const-string v17, "\u8f66\u95e8"

    const/16 v18, 0x9

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Door:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 10
    new-instance v8, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v25, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/FingerPrintVariable;

    const-string v21, "FingerPrint"

    const/16 v22, 0x9

    const-string v23, "\u6307\u7eb9"

    const/16 v24, 0xa

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->FingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 11
    new-instance v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AroundCarVariable;

    const-string v15, "AroundCar"

    const/16 v16, 0xa

    const-string v17, "\u7ed5\u8f66\u4e00\u5468"

    const/16 v18, 0xb

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->AroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 12
    new-instance v10, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v25, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ThreeTouchVariable;

    const-string v21, "ThreeTouch"

    const/16 v22, 0xb

    const-string v23, "\u4e09\u6478"

    const/16 v24, 0xc

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->ThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 13
    new-instance v11, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;

    const-string v15, "DiaoTou"

    const/16 v16, 0xc

    const-string v17, "\u6389\u5934"

    const/16 v18, 0xd

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->DiaoTou:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 14
    new-instance v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v25, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HandBrakeVariable;

    const-string v21, "HandBrake"

    const/16 v22, 0xd

    const-string v23, "\u624b\u5239"

    const/16 v24, 0xe

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->HandBrake:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 15
    new-instance v20, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SeatBeltVariable;

    const-string v15, "SeatBelt"

    const/16 v16, 0xe

    const-string v17, "\u5b89\u5168\u5e26"

    const/16 v18, 0xf

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v20, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SeatBelt:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 16
    new-instance v14, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v26, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedUpVariable;

    const-string v22, "SpeedUp"

    const/16 v23, 0xf

    const-string v24, "\u901f\u5ea6\u5927\u4e8e"

    const/16 v25, 0x10

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SpeedUp:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 17
    new-instance v15, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v32, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/SpeedDownVariable;

    const-string v28, "SpeedDown"

    const/16 v29, 0x10

    const-string v30, "\u901f\u5ea6\u5c0f\u4e8e"

    const/16 v31, 0x11

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v15, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->SpeedDown:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 18
    new-instance v16, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v26, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/StopVariable;

    const-string v22, "StopCar"

    const/16 v23, 0x11

    const-string v24, "\u505c\u8f66"

    const/16 v25, 0x12

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v16, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->StopCar:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 19
    new-instance v17, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v32, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    const-string v28, "HuiZhen"

    const/16 v29, 0x12

    const-string v30, "\u56de\u6b63\u65b9\u5411"

    const/16 v31, 0x13

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v17, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->HuiZhen:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 20
    new-instance v18, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v26, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;

    const-string v22, "ZhuanWan"

    const/16 v23, 0x13

    const-string v24, "\u8f6c\u5f2f"

    const/16 v25, 0x14

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v18, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->ZhuanWan:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 21
    new-instance v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v32, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;

    const-string v28, "Offset"

    const/16 v29, 0x14

    const-string v30, "\u504f\u79fb"

    const/16 v31, 0x15

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v19, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Offset:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 22
    new-instance v27, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v26, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/TimeVariable;

    const-string v22, "Time"

    const/16 v23, 0x15

    const-string v24, "\u65f6\u95f4"

    const/16 v25, 0x16

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v27, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Time:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 23
    new-instance v21, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v33, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    const-string v29, "QiBu"

    const/16 v30, 0x16

    const-string v31, "\u8d77\u6b65"

    const/16 v32, 0x17

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v21, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->QiBu:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 24
    new-instance v22, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v39, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ClutchStepVariable;

    const-string v35, "Clutch"

    const/16 v36, 0x17

    const-string v37, "\u79bb\u5408"

    const/16 v38, 0x18

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v22, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->Clutch:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    .line 25
    new-instance v23, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const-class v33, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;

    const-string v29, "KeepLight"

    const/16 v30, 0x18

    const-string v31, "\u4fdd\u6301\u706f\u5149"

    const/16 v32, 0x19

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V

    sput-object v23, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->KeepLight:Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    move-object/from16 v24, v15

    const/16 v15, 0x19

    new-array v15, v15, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    const/16 v25, 0x0

    aput-object v6, v15, v25

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v24, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    .line 26
    sput-object v15, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->typeName:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->values()[Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->type:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachTypes;

    return-object v0
.end method
