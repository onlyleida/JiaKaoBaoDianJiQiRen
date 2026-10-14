.class public final enum Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

.field public static final enum AUDIO_SCENE_DEFAULT_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

.field public static final enum AUDIO_SCENE_MEDIA_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

.field public static final enum AUDIO_SCENE_MUSIC_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;


# instance fields
.field private mAudioSceneMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    const-string v1, "AUDIO_SCENE_DEFAULT_MODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->AUDIO_SCENE_DEFAULT_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    const-string v4, "AUDIO_SCENE_MEDIA_MODE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->AUDIO_SCENE_MEDIA_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    new-instance v4, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    const-string v6, "AUDIO_SCENE_MUSIC_MODE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->AUDIO_SCENE_MUSIC_MODE:Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    new-array v6, v7, [Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->mAudioSceneMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;

    return-object v0
.end method


# virtual methods
.method public getAudioSceneMode()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcAudioSceneModeEnum;->mAudioSceneMode:I

    return v0
.end method
