.class public final enum Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field public static final enum ROTATION_0:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field public static final enum ROTATION_180:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field public static final enum ROTATION_270:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field public static final enum ROTATION_360:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

.field public static final enum ROTATION_90:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;


# instance fields
.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const-string v1, "ROTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_0:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const-string v3, "ROTATION_90"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_90:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    new-instance v3, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const-string v5, "ROTATION_180"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_180:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    new-instance v5, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const-string v7, "ROTATION_270"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_270:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    new-instance v7, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const-string v9, "ROTATION_360"

    const/4 v10, 0x4

    const/16 v11, 0x168

    invoke-direct {v7, v9, v10, v11}, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->ROTATION_360:Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->mRotation:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;

    return-object v0
.end method


# virtual methods
.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcPreviewRotationEnum;->mRotation:I

    return v0
.end method
