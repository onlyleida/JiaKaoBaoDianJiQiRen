.class public final enum Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BITRATE_240P"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

.field public static final enum DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

.field public static final enum DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

.field public static final enum DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;


# instance fields
.field private bitrate:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    const-string v1, "DEFAULT_VALUE_INT_TARGET_BITRATE"

    const/4 v2, 0x0

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    const-string v4, "DEFAULT_VALUE_INT_MIN_BITRATE"

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-direct {v1, v4, v5, v6}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    new-instance v4, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    const-string v6, "DEFAULT_VALUE_INT_INIT_BITRATE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    sput-object v3, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->bitrate:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    return-object v0
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->bitrate:I

    return v0
.end method
