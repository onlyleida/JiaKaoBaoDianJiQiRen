.class public final enum Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

.field public static final enum AAC_LC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

.field public static final enum AAC_LD:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

.field public static final enum HE_AAC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

.field public static final enum HE_AAC_v2:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;


# instance fields
.field private mAudioProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const-string v1, "AAC_LC"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->AAC_LC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const-string v4, "HE_AAC"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->HE_AAC:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    new-instance v4, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const-string v6, "HE_AAC_v2"

    const/16 v7, 0x1d

    invoke-direct {v4, v6, v3, v7}, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->HE_AAC_v2:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    new-instance v6, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const-string v7, "AAC_LD"

    const/4 v8, 0x3

    const/16 v9, 0x17

    invoke-direct {v6, v7, v8, v9}, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->AAC_LD:Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    aput-object v4, v7, v3

    aput-object v6, v7, v8

    sput-object v7, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->mAudioProfile:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;

    return-object v0
.end method


# virtual methods
.method public getAudioProfile()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcAudioAACProfileEnum;->mAudioProfile:I

    return v0
.end method
