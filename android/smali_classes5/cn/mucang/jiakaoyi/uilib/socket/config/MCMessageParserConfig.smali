.class public final enum Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum AutoShuttleCancel:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum AutoShuttleGetDis:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum AutoShuttleStart:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum CBaseSn:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum CONFIG:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum CallRefuse:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum Cmd:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum CollisionBrake:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum DebugLogMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum DiffDataMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum GPSBASEMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum GPSStationInfo:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum HeatBeatAckMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum HeatBeatLoopMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum HeatGpsBeatAckMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum HeatGpsBeatLoopMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum LoginRespMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum LogoutMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum OtherCarPos:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum ProjectFence:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum PushSwitch:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum ReLoginGpsMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum ReLoginMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RemoteBrake:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RemoteCall:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RemoteGearSet:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RemoteSafeMode:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RemoteSwitchSafe:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RequestUdp:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum RequestUdpBusiness:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum SafeControl:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum SocketDialogMessageParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum StudentLoginMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field public static final enum UpLoadLogMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

.field private static final messageHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final messageParsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final messageHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageParserClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 1
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v4, Lcn/mucang/jiakaoyi/uilib/socket/z/s;

    const-class v5, Lcn/mucang/jiakaoyi/uilib/socket/y/v;

    const-string v1, "LogoutMsgParser"

    const/4 v2, 0x0

    const/16 v3, 0x41

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v6, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->LogoutMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v11, Lcn/mucang/jiakaoyi/uilib/socket/z/u;

    const-class v12, Lcn/mucang/jiakaoyi/uilib/socket/y/x;

    const-string v8, "ReLoginMsgParser"

    const/4 v9, 0x1

    const/16 v10, 0x42

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->ReLoginMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v17, Lcn/mucang/jiakaoyi/uilib/socket/z/u;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/y/o;

    const-string v14, "ReLoginGpsMsgParser"

    const/4 v15, 0x2

    const/16 v16, 0x44

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->ReLoginGpsMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 4
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v11, Lcn/mucang/jiakaoyi/uilib/socket/z/n;

    const-class v12, Lcn/mucang/jiakaoyi/uilib/socket/y/k;

    const-string v8, "DiffDataMsgParser"

    const/4 v9, 0x3

    const/16 v10, 0x40

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v2, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->DiffDataMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v17, Lcn/mucang/jiakaoyi/uilib/socket/z/q;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/y/r;

    const-string v14, "HeatBeatAckMsgParser"

    const/4 v15, 0x4

    const/16 v16, 0x61

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->HeatBeatAckMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 6
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v11, Lcn/mucang/jiakaoyi/uilib/socket/z/q;

    const-class v12, Lcn/mucang/jiakaoyi/uilib/socket/y/n;

    const-string v8, "HeatGpsBeatAckMsgParser"

    const/4 v9, 0x5

    const/16 v10, 0x65

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v4, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->HeatGpsBeatAckMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 7
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v17, Lcn/mucang/jiakaoyi/uilib/socket/z/q;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/y/q;

    const-string v14, "HeatBeatLoopMsgParser"

    const/4 v15, 0x6

    const/16 v16, 0x62

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v5, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->HeatBeatLoopMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 8
    new-instance v13, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v11, Lcn/mucang/jiakaoyi/uilib/socket/z/q;

    const-class v12, Lcn/mucang/jiakaoyi/uilib/socket/y/m;

    const-string v8, "HeatGpsBeatLoopMsgParser"

    const/4 v9, 0x7

    const/16 v10, 0x64

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->HeatGpsBeatLoopMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 9
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/z/r;

    const-class v19, Lcn/mucang/jiakaoyi/uilib/socket/y/u;

    const-string v15, "LoginRespMsgParser"

    const/16 v16, 0x8

    const/16 v17, 0x11

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v7, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->LoginRespMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 10
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v24, Lcn/mucang/jiakaoyi/uilib/socket/z/o;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/y/l;

    const-string v21, "GPSBASEMsgParser"

    const/16 v22, 0x9

    const/16 v23, 0x43

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v8, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->GPSBASEMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 11
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/z/m;

    const-class v19, Lcn/mucang/jiakaoyi/uilib/socket/y/j;

    const-string v15, "SocketDialogMessageParser"

    const/16 v16, 0xa

    const/16 v17, 0x70

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v9, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->SocketDialogMessageParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 12
    new-instance v10, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v24, Lcn/mucang/jiakaoyi/uilib/socket/z/p;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/y/p;

    const-string v21, "GPSStationInfo"

    const/16 v22, 0xb

    const/16 v23, 0x46

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v10, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->GPSStationInfo:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 13
    new-instance v11, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/z/w;

    const-class v19, Lcn/mucang/jiakaoyi/uilib/socket/y/y;

    const-string v15, "StudentLoginMsgParser"

    const/16 v16, 0xc

    const/16 v17, 0x45

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v11, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->StudentLoginMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 14
    new-instance v12, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v24, Lcn/mucang/jiakaoyi/uilib/socket/z/h;

    const-string v21, "RemoteBrake"

    const/16 v22, 0xd

    const/16 v23, 0x91

    const/16 v25, 0x0

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v12, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RemoteBrake:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 15
    new-instance v20, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v18, Lcn/mucang/jiakaoyi/uilib/socket/z/k;

    const-string v15, "CollisionBrake"

    const/16 v16, 0xe

    const/16 v17, 0xb5

    const/16 v19, 0x0

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v20, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->CollisionBrake:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 16
    new-instance v14, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/z/v;

    const-string v22, "SafeControl"

    const/16 v23, 0xf

    const/16 v24, 0x93

    const/16 v26, 0x0

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v14, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->SafeControl:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 17
    new-instance v15, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v31, Lcn/mucang/jiakaoyi/uilib/socket/z/i;

    const-string v28, "RemoteCall"

    const/16 v29, 0x10

    const/16 v30, 0xb3

    const/16 v32, 0x0

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v15, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RemoteCall:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 18
    new-instance v16, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/z/b0;

    const-string v22, "RemoteSafeMode"

    const/16 v23, 0x11

    const/16 v24, 0xb7

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v16, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RemoteSafeMode:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 19
    new-instance v17, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v31, Lcn/mucang/jiakaoyi/uilib/socket/z/j;

    const-string v28, "CallRefuse"

    const/16 v29, 0x12

    const/16 v30, 0xb4

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v17, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->CallRefuse:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 20
    new-instance v18, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/z/x;

    const-class v26, Lcn/mucang/jiakaoyi/uilib/socket/y/t;

    const-string v22, "UpLoadLogMsgParser"

    const/16 v23, 0x13

    const/16 v24, 0xb0

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v18, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->UpLoadLogMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 21
    new-instance v19, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v31, Lcn/mucang/jiakaoyi/uilib/socket/z/l;

    const-class v32, Lcn/mucang/jiakaoyi/uilib/socket/y/s;

    const-string v28, "DebugLogMsgParser"

    const/16 v29, 0x14

    const/16 v30, 0xb1

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v19, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->DebugLogMsgParser:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 22
    new-instance v27, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v25, Lcn/mucang/jiakaoyi/uilib/socket/z/e0;

    const-string v22, "RequestUdp"

    const/16 v23, 0x15

    const/16 v24, 0x13

    const/16 v26, 0x0

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v27, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RequestUdp:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 23
    new-instance v21, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v32, Lcn/mucang/jiakaoyi/uilib/socket/z/d0;

    const-string v29, "RequestUdpBusiness"

    const/16 v30, 0x16

    const/16 v31, 0x15

    const/16 v33, 0x0

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v21, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RequestUdpBusiness:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 24
    new-instance v22, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v38, Lcn/mucang/jiakaoyi/uilib/socket/z/z;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/y/a0;

    const-string v35, "ProjectFence"

    const/16 v36, 0x17

    const/16 v37, 0xb6

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v22, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->ProjectFence:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 25
    new-instance v23, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v32, Lcn/mucang/jiakaoyi/uilib/socket/z/a0;

    const-class v33, Lcn/mucang/jiakaoyi/uilib/socket/y/b0;

    const-string v29, "PushSwitch"

    const/16 v30, 0x18

    const/16 v31, 0xb8

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v23, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->PushSwitch:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 26
    new-instance v24, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v38, Lcn/mucang/jiakaoyi/uilib/socket/z/d;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/y/f;

    const-string v35, "Cmd"

    const/16 v36, 0x19

    const/16 v37, 0x29

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v24, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->Cmd:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 27
    new-instance v25, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v32, Lcn/mucang/jiakaoyi/uilib/socket/z/g;

    const-class v33, Lcn/mucang/jiakaoyi/uilib/socket/y/i;

    const-string v29, "CBaseSn"

    const/16 v30, 0x1a

    const/16 v31, 0x24

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v25, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->CBaseSn:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 28
    new-instance v26, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v38, Lcn/mucang/jiakaoyi/uilib/socket/z/c;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/y/e;

    const-string v35, "AutoShuttleStart"

    const/16 v36, 0x1b

    const/16 v37, 0x51

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v26, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->AutoShuttleStart:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 29
    new-instance v34, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v32, Lcn/mucang/jiakaoyi/uilib/socket/z/a;

    const-class v33, Lcn/mucang/jiakaoyi/uilib/socket/y/c;

    const-string v29, "AutoShuttleCancel"

    const/16 v30, 0x1c

    const/16 v31, 0x52

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v34, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->AutoShuttleCancel:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 30
    new-instance v28, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/z/b;

    const-class v40, Lcn/mucang/jiakaoyi/uilib/socket/y/d;

    const-string v36, "AutoShuttleGetDis"

    const/16 v37, 0x1d

    const/16 v38, 0x50

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v28, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->AutoShuttleGetDis:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 31
    new-instance v29, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v45, Lcn/mucang/jiakaoyi/uilib/socket/z/f;

    const-class v46, Lcn/mucang/jiakaoyi/uilib/socket/y/h;

    const-string v42, "RemoteGearSet"

    const/16 v43, 0x1e

    const/16 v44, 0x71

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v29, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RemoteGearSet:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 32
    new-instance v30, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/z/y;

    const-class v40, Lcn/mucang/jiakaoyi/uilib/socket/y/z;

    const-string v36, "OtherCarPos"

    const/16 v37, 0x1f

    const/16 v38, 0x81

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v30, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->OtherCarPos:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 33
    new-instance v31, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v45, Lcn/mucang/jiakaoyi/uilib/socket/z/e;

    const-class v46, Lcn/mucang/jiakaoyi/uilib/socket/y/g;

    const-string v42, "CONFIG"

    const/16 v43, 0x20

    const/16 v44, 0x82

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v31, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->CONFIG:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 34
    new-instance v32, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const-class v39, Lcn/mucang/jiakaoyi/uilib/socket/z/c0;

    const-string v36, "RemoteSwitchSafe"

    const/16 v37, 0x21

    const/16 v38, 0xb9

    const/16 v40, 0x0

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v32, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->RemoteSwitchSafe:Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    move-object/from16 v33, v15

    const/16 v15, 0x22

    new-array v15, v15, [Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    const/16 v35, 0x0

    aput-object v6, v15, v35

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

    aput-object v33, v15, v0

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

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    .line 35
    sput-object v15, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageParsers:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageHandlers:Landroid/util/SparseArray;

    .line 38
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->values()[Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    iget-object v4, v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageParserClass:Ljava/lang/Class;

    .line 40
    iget-object v5, v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageHandlerClass:Ljava/lang/Class;

    .line 41
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/socket/z/t;

    .line 42
    sget-object v6, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageParsers:Landroid/util/SparseArray;

    iget v7, v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageType:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/socket/y/w;

    .line 44
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageHandlers:Landroid/util/SparseArray;

    iget v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageType:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageType:I

    .line 3
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageParserClass:Ljava/lang/Class;

    .line 4
    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageHandlerClass:Ljava/lang/Class;

    return-void
.end method

.method public static getMessageHandler(I)Lcn/mucang/jiakaoyi/uilib/socket/y/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/mucang/jiakaoyi/uilib/socket/y/w<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/socket/y/w;

    return-object p0
.end method

.method public static getMessageParser(I)Lcn/mucang/jiakaoyi/uilib/socket/z/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/mucang/jiakaoyi/uilib/socket/z/t<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->messageParsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/socket/z/t;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    invoke-virtual {v0}, [Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;

    return-object v0
.end method
