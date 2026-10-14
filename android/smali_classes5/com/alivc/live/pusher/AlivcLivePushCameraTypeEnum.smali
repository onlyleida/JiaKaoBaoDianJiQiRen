.class public final enum Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

.field public static final enum CAMERA_TYPE_BACK:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

.field public static final enum CAMERA_TYPE_FRONT:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;


# instance fields
.field private mCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    const-string v1, "CAMERA_TYPE_BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->CAMERA_TYPE_BACK:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    const-string v3, "CAMERA_TYPE_FRONT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->CAMERA_TYPE_FRONT:Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->mCameraId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushCameraTypeEnum;->mCameraId:I

    return v0
.end method
