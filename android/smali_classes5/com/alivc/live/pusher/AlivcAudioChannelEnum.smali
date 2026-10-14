.class public final enum Lcom/alivc/live/pusher/AlivcAudioChannelEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcAudioChannelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

.field public static final enum AUDIO_CHANNEL_ONE:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

.field public static final enum AUDIO_CHANNEL_TWO:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;


# instance fields
.field private mChannelCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    const-string v1, "AUDIO_CHANNEL_ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->AUDIO_CHANNEL_ONE:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    const-string v4, "AUDIO_CHANNEL_TWO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->AUDIO_CHANNEL_TWO:Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    new-array v4, v5, [Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->mChannelCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcAudioChannelEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcAudioChannelEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcAudioChannelEnum;

    return-object v0
.end method


# virtual methods
.method public getChannelCount()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcAudioChannelEnum;->mChannelCount:I

    return v0
.end method
