.class public Lcn/mucang/sundial/android/tcp/MessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final extendMessageParsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/sundial/android/tcp/message/Message;",
            ">;",
            "Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler<",
            "+",
            "Lcn/mucang/sundial/android/tcp/message/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageParsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageParsers:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->extendMessageParsers:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageHandlerMap:Ljava/util/Map;

    .line 5
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/ServerCommonResponse;-><init>()V

    const v1, 0x8001

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 6
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/ServerCommonMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/ServerCommonMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 7
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;-><init>()V

    const v1, 0x8003

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/SupplementPacketMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/SupplementPacketMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 9
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/ParameterSettingRequest;-><init>()V

    const v1, 0x8103

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 10
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/ParameterSettingMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/ParameterSettingMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 11
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;-><init>()V

    const v1, 0x8104

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 12
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/QueryAllParameterMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/QueryAllParameterMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 13
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/DeviceControlRequest;-><init>()V

    const v1, 0x8105

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 14
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/DeviceControlMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/DeviceControlMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 15
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;-><init>()V

    const v1, 0x8106

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 16
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/QuerySomeParameterMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/QuerySomeParameterMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 17
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/LocationQueryRequest;-><init>()V

    const v1, 0x8201

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 18
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/LocationQueryMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/LocationQueryMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 19
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;-><init>()V

    const v2, 0x8900

    invoke-direct {p0, v2, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 20
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLoginResponse;-><init>()V

    const v2, 0x8101

    invoke-direct {p0, v2, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 21
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/CoachLoginMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/CoachLoginMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 22
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/CoachLogoutResponse;-><init>()V

    const v2, 0x8102

    invoke-direct {p0, v2, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 23
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/CoachLogoutMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/CoachLogoutMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 24
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLoginResponse;-><init>()V

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 25
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/StudentLoginMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/StudentLoginMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 26
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLogoutResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentLogoutResponse;-><init>()V

    const v1, 0x8202

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 27
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/StudentLogoutMessageManager;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/StudentLogoutMessageManager;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 28
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/receive/TempLocationTrackRequest;-><init>()V

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V

    .line 29
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/TempLocationTrackMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/TempLocationTrackMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 30
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/CourseQueryRequest;-><init>()V

    const v1, 0x8205

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 31
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/CourseQueryMessageManager;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/CourseQueryMessageManager;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 32
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/TakePhotoRequest;-><init>()V

    const v1, 0x8301

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 33
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/TakePhotoMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/TakePhotoMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 34
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryPhotoRequest;-><init>()V

    const v1, 0x8302

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 35
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/QueryPhotoMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/QueryPhotoMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 36
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;-><init>()V

    const v1, 0x8303

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 37
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/ReportQueryPhotoResponseMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/ReportQueryPhotoResponseMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 38
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoRequest;-><init>()V

    const v1, 0x8304

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 39
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 40
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;-><init>()V

    const v1, 0x8305    # 4.7001E-41f

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 41
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoStartMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 42
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryCodeResponse;-><init>()V

    const v1, 0x8402

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 43
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/QueryCodeMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/QueryCodeMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 44
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportVehicleBindResponse;-><init>()V

    const v1, 0x8403

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 45
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/ReportVehicleBindMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/ReportVehicleBindMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 46
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/ConfigDeviceRequest;-><init>()V

    const v1, 0x8501

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 47
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/DisableTrainingMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/DisableTrainingMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 48
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/DisableTrainingRequest;-><init>()V

    const v1, 0x8502

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 49
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/ConfigDeviceMessageManager;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/ConfigDeviceMessageManager;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 50
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/QueryDeviceConfigRequest;-><init>()V

    const v1, 0x8503

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 51
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/QueryDeviceConfigMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/QueryDeviceConfigMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 52
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;-><init>()V

    const v1, 0x9000

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 53
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoResultMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/UploadPhotoResultMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 54
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/VoiceBroadcastResponse;-><init>()V

    const v1, 0x8000

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 55
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/VoiceBroadcastMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/VoiceBroadcastMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 56
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentForceLogoutResponse;-><init>()V

    const/16 v1, 0x7002

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 57
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/StudentForceLogoutMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/StudentForceLogoutMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    .line 58
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/receive/StudentCleanResponse;-><init>()V

    const/16 v1, 0x7003

    invoke-direct {p0, v1, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V

    .line 59
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/handler/StudentCleanMessageHandler;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/handler/StudentCleanMessageHandler;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/MessageManager;->registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V

    return-void
.end method

.method private registerExtendParser(ILcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->extendMessageParsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private registerHandler(Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/mucang/sundial/android/tcp/message/Message;",
            ">(",
            "Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageHandlerMap:Ljava/util/Map;

    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerParser(ILcn/mucang/sundial/android/tcp/message/ReceiveMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageParsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getExtendReceiveMessage(I)Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->extendMessageParsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;

    return-object p1
.end method

.method public getMessageHandler(Ljava/lang/Class;)Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/sundial/android/tcp/message/Message;",
            ">;)",
            "Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler<",
            "+",
            "Lcn/mucang/sundial/android/tcp/message/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;

    return-object p1
.end method

.method public getReceiveMessage(I)Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/MessageManager;->messageParsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/android/tcp/message/ReceiveMessage;

    return-object p1
.end method
