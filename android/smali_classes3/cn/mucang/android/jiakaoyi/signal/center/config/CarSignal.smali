.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum BackGear:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum Door:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum DoubleFlashLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum FarLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum FingerPrint:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum FootBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum HandBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum Horn:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum Key:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum KeyStarting:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum KongDang:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum NearLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum RightBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum RightFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum SafeBelt:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum TouchInsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum TouchOutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum TouchSeat:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

.field public static final enum Wiper:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;


# instance fields
.field public final id:I

.field public final signalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v1, "Door"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u8f66\u95e8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Door:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v2, "SafeBelt"

    const/4 v4, 0x2

    const-string v5, "\u5b89\u5168\u5e26"

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->SafeBelt:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v5, "HandBrake"

    const/4 v6, 0x3

    const-string v7, "\u624b\u5239"

    invoke-direct {v2, v5, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->HandBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v7, "FootBrake"

    const/4 v8, 0x4

    const-string v9, "\u811a\u5239"

    invoke-direct {v5, v7, v6, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FootBrake:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v9, "Clutch"

    const/4 v10, 0x5

    const-string v11, "\u79bb\u5408"

    invoke-direct {v7, v9, v8, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v11, "Horn"

    const/4 v12, 0x7

    const-string v13, "\u5587\u53ed"

    invoke-direct {v9, v11, v10, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Horn:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 7
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "TurnLeftLight"

    const/4 v14, 0x6

    const/16 v15, 0x8

    const-string v10, "\u5de6\u8f6c\u5411\u706f"

    invoke-direct {v11, v13, v14, v15, v10}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 8
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "TurnRightLight"

    const/16 v14, 0x9

    const-string v8, "\u53f3\u8f6c\u5411\u706f"

    invoke-direct {v10, v13, v12, v14, v8}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "DoubleFlashLight"

    const/16 v12, 0xa

    const-string v6, "\u5e94\u6025\u706f"

    invoke-direct {v8, v13, v15, v12, v6}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->DoubleFlashLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 10
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "NearLight"

    const/16 v15, 0xb

    const-string v4, "\u8fd1\u5149\u706f"

    invoke-direct {v6, v13, v14, v15, v4}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "FarLight"

    const/16 v14, 0xc

    const-string v3, "\u8fdc\u5149\u706f"

    invoke-direct {v4, v13, v12, v14, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 12
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "WidthLight"

    const/16 v12, 0xd

    const-string v14, "\u793a\u5bbd\u706f"

    invoke-direct {v3, v13, v15, v12, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 13
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v14, "FrontFogLight"

    const/16 v15, 0xe

    const-string v12, "\u524d\u96fe\u706f"

    move-object/from16 v16, v3

    const/16 v3, 0xc

    invoke-direct {v13, v14, v3, v15, v12}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 14
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v12, "RearFogLight"

    const/16 v14, 0xf

    const-string v15, "\u540e\u96fe\u706f"

    move-object/from16 v17, v13

    const/16 v13, 0xd

    invoke-direct {v3, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 15
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "LeftFront"

    const/16 v15, 0x11

    const-string v14, "\u524d\u5de6"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v12, v13, v3, v15, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 16
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "RightFront"

    const/16 v14, 0x12

    const-string v15, "\u524d\u53f3"

    move-object/from16 v19, v12

    const/16 v12, 0xf

    invoke-direct {v3, v13, v12, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 17
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "LeftBack"

    const/16 v15, 0x10

    const/16 v14, 0x13

    move-object/from16 v20, v3

    const-string v3, "\u540e\u5de6"

    invoke-direct {v12, v13, v15, v14, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 18
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "RightBack"

    const/16 v15, 0x14

    const-string v14, "\u540e\u53f3"

    move-object/from16 v21, v12

    const/16 v12, 0x11

    invoke-direct {v3, v13, v12, v15, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 19
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "KongDang"

    const/16 v14, 0x15

    const-string v15, "\u7a7a\u6321"

    move-object/from16 v22, v3

    const/16 v3, 0x12

    invoke-direct {v12, v13, v3, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->KongDang:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 20
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "TouchSeat"

    const/16 v15, 0x16

    const-string v14, "\u4e09\u6478-\u5ea7\u6905"

    move-object/from16 v23, v12

    const/16 v12, 0x13

    invoke-direct {v3, v13, v12, v15, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchSeat:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 21
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "TouchOutsideMirror"

    const/16 v14, 0x17

    const-string v15, "\u4e09\u6478-\u5916\u540e\u89c6\u955c"

    move-object/from16 v24, v3

    const/16 v3, 0x14

    invoke-direct {v12, v13, v3, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchOutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 22
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "TouchInsideMirror"

    const/16 v15, 0x18

    const-string v14, "\u4e09\u6478-\u5185\u540e\u89c6\u955c"

    move-object/from16 v25, v12

    const/16 v12, 0x15

    invoke-direct {v3, v13, v12, v15, v14}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->TouchInsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 23
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "FingerPrint"

    const/16 v14, 0x19

    const-string v15, "\u6307\u7eb9"

    move-object/from16 v26, v3

    const/16 v3, 0x16

    invoke-direct {v12, v13, v3, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->FingerPrint:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 24
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "BackGear"

    const/16 v14, 0x1a

    const-string v15, "\u5012\u6321"

    move-object/from16 v27, v12

    const/16 v12, 0x17

    invoke-direct {v3, v13, v12, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->BackGear:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 25
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "KeyStarting"

    const/16 v14, 0x1b

    const-string v15, "\u62e7\u94a5\u5319"

    move-object/from16 v28, v3

    const/16 v3, 0x18

    invoke-direct {v12, v13, v3, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->KeyStarting:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 26
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "Wiper"

    const/16 v14, 0x19

    const/16 v15, 0x1c

    move-object/from16 v29, v12

    const-string v12, "\u96e8\u522e\u5668"

    invoke-direct {v3, v13, v14, v15, v12}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Wiper:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    .line 27
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const-string v13, "Key"

    const/16 v14, 0x1a

    const/16 v15, 0x1d

    move-object/from16 v30, v3

    const-string v3, "\u94a5\u5319\u72b6\u6001"

    invoke-direct {v12, v13, v14, v15, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Key:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const/16 v3, 0x1b

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v10, v3, v0

    const/16 v0, 0x8

    aput-object v8, v3, v0

    const/16 v0, 0x9

    aput-object v6, v3, v0

    const/16 v0, 0xa

    aput-object v4, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v26, v3, v0

    const/16 v0, 0x16

    aput-object v27, v3, v0

    const/16 v0, 0x17

    aput-object v28, v3, v0

    const/16 v0, 0x18

    aput-object v29, v3, v0

    const/16 v0, 0x19

    aput-object v30, v3, v0

    const/16 v0, 0x1a

    aput-object v12, v3, v0

    .line 28
    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

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

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    return-object v0
.end method
