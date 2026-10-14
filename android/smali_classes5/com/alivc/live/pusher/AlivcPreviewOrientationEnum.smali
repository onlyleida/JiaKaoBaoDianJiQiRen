.class public final enum Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

.field public static final enum ORIENTATION_LANDSCAPE_HOME_LEFT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

.field public static final enum ORIENTATION_LANDSCAPE_HOME_RIGHT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

.field public static final enum ORIENTATION_PORTRAIT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;


# instance fields
.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    const-string v1, "ORIENTATION_PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_PORTRAIT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    const-string v3, "ORIENTATION_LANDSCAPE_HOME_RIGHT"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_RIGHT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    new-instance v3, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    const-string v5, "ORIENTATION_LANDSCAPE_HOME_LEFT"

    const/4 v6, 0x2

    const/16 v7, 0x10e

    invoke-direct {v3, v5, v6, v7}, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->ORIENTATION_LANDSCAPE_HOME_LEFT:Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->mOrientation:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;

    return-object v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcPreviewOrientationEnum;->mOrientation:I

    return v0
.end method
