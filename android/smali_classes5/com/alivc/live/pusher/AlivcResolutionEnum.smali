.class public final enum Lcom/alivc/live/pusher/AlivcResolutionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcResolutionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_1080P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_PASS_THROUGH:Lcom/alivc/live/pusher/AlivcResolutionEnum;

.field public static final enum RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;


# instance fields
.field private mSelfDefineHeight:I

.field private mSelfDefineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v1, "RESOLUTION_180P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v3, "RESOLUTION_240P"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v3, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v5, "RESOLUTION_360P"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v5, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v7, "RESOLUTION_480P"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v7, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v9, "RESOLUTION_540P"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v9, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v11, "RESOLUTION_720P"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v11, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v13, "RESOLUTION_1080P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_1080P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v13, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v15, "RESOLUTION_SELFDEFINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    new-instance v15, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const-string v14, "RESOLUTION_PASS_THROUGH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/alivc/live/pusher/AlivcResolutionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_PASS_THROUGH:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/alivc/live/pusher/AlivcResolutionEnum;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/alivc/live/pusher/AlivcResolutionEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcResolutionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static GetResolutionHeight(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I
    .locals 3

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x140

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x280

    if-eqz v0, :cond_2

    return v2

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x3c0

    return p0

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x500

    return p0

    :cond_5
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_1080P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x780

    return p0

    :cond_6
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineHeight:I

    return p0

    :cond_7
    return v1
.end method

.method public static GetResolutionWidth(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xf0

    return p0

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x170

    return p0

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x1e0

    return p0

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x220

    return p0

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x2d0

    return p0

    :cond_5
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_1080P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x440

    return p0

    :cond_6
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineWidth:I

    return p0

    :cond_7
    return v1
.end method

.method public static getInitBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->getBitrate()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->getBitrate()I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->getBitrate()I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->getBitrate()I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->getBitrate()I

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_INIT_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0
.end method

.method public static getMinBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->getBitrate()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->getBitrate()I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->getBitrate()I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->getBitrate()I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->getBitrate()I

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_MIN_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0
.end method

.method public static getTargetBitrate(Lcom/alivc/live/pusher/AlivcResolutionEnum;)I
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_180P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_180P;->getBitrate()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_240P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_240P;->getBitrate()I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_360P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_360P;->getBitrate()I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_480P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_480P;->getBitrate()I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_540P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_720P:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_720P;->getBitrate()I

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->DEFAULT_VALUE_INT_TARGET_BITRATE:Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;

    invoke-virtual {p0}, Lcom/alivc/live/pusher/AlivcLivePushConstants$BITRATE_540P;->getBitrate()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcResolutionEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcResolutionEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcResolutionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcResolutionEnum;

    return-object v0
.end method


# virtual methods
.method public setSelfDefineResolution(II)V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->RESOLUTION_SELFDEFINE:Lcom/alivc/live/pusher/AlivcResolutionEnum;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineWidth:I

    rem-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    div-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineWidth:I

    :cond_0
    iput p2, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineHeight:I

    rem-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_1

    div-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x10

    iput p2, p0, Lcom/alivc/live/pusher/AlivcResolutionEnum;->mSelfDefineHeight:I

    :cond_1
    return-void
.end method
