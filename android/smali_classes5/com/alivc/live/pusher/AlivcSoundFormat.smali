.class public final enum Lcom/alivc/live/pusher/AlivcSoundFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcSoundFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_F32:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_F32P:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_S16:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_S16P:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_S32:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_S32P:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_U8:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_U8P:Lcom/alivc/live/pusher/AlivcSoundFormat;

.field public static final enum SOUND_FORMAT_UNKNOW:Lcom/alivc/live/pusher/AlivcSoundFormat;


# instance fields
.field private mSoundFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v1, "SOUND_FORMAT_UNKNOW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_UNKNOW:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v1, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v3, "SOUND_FORMAT_U8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_U8:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v3, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v5, "SOUND_FORMAT_S16"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S16:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v5, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v7, "SOUND_FORMAT_S32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S32:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v7, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v9, "SOUND_FORMAT_F32"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_F32:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v9, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v11, "SOUND_FORMAT_U8P"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_U8P:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v11, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v13, "SOUND_FORMAT_S16P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S16P:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v13, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v15, "SOUND_FORMAT_S32P"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_S32P:Lcom/alivc/live/pusher/AlivcSoundFormat;

    new-instance v15, Lcom/alivc/live/pusher/AlivcSoundFormat;

    const-string v14, "SOUND_FORMAT_F32P"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/alivc/live/pusher/AlivcSoundFormat;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/alivc/live/pusher/AlivcSoundFormat;->SOUND_FORMAT_F32P:Lcom/alivc/live/pusher/AlivcSoundFormat;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/alivc/live/pusher/AlivcSoundFormat;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v13, v14, v12

    aput-object v15, v14, v10

    sput-object v14, Lcom/alivc/live/pusher/AlivcSoundFormat;->$VALUES:[Lcom/alivc/live/pusher/AlivcSoundFormat;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcSoundFormat;->mSoundFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcSoundFormat;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcSoundFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcSoundFormat;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcSoundFormat;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcSoundFormat;->$VALUES:[Lcom/alivc/live/pusher/AlivcSoundFormat;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcSoundFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcSoundFormat;

    return-object v0
.end method


# virtual methods
.method public getAlivcSoundFormat()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcSoundFormat;->mSoundFormat:I

    return v0
.end method
