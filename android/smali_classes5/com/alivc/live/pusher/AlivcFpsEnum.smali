.class public final enum Lcom/alivc/live/pusher/AlivcFpsEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcFpsEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_10:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_12:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_15:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_20:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_25:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_30:Lcom/alivc/live/pusher/AlivcFpsEnum;

.field public static final enum FPS_8:Lcom/alivc/live/pusher/AlivcFpsEnum;


# instance fields
.field private mFps:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v1, "FPS_8"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_8:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v1, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v3, "FPS_10"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_10:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v3, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v5, "FPS_12"

    const/4 v6, 0x2

    const/16 v7, 0xc

    invoke-direct {v3, v5, v6, v7}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_12:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v5, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v7, "FPS_15"

    const/4 v8, 0x3

    const/16 v9, 0xf

    invoke-direct {v5, v7, v8, v9}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_15:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v7, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v9, "FPS_20"

    const/4 v10, 0x4

    const/16 v11, 0x14

    invoke-direct {v7, v9, v10, v11}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_20:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v9, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v11, "FPS_25"

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v9, v11, v12, v13}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_25:Lcom/alivc/live/pusher/AlivcFpsEnum;

    new-instance v11, Lcom/alivc/live/pusher/AlivcFpsEnum;

    const-string v13, "FPS_30"

    const/4 v14, 0x6

    const/16 v15, 0x1e

    invoke-direct {v11, v13, v14, v15}, Lcom/alivc/live/pusher/AlivcFpsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/alivc/live/pusher/AlivcFpsEnum;->FPS_30:Lcom/alivc/live/pusher/AlivcFpsEnum;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/alivc/live/pusher/AlivcFpsEnum;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/alivc/live/pusher/AlivcFpsEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcFpsEnum;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcFpsEnum;->mFps:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcFpsEnum;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcFpsEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcFpsEnum;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcFpsEnum;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcFpsEnum;->$VALUES:[Lcom/alivc/live/pusher/AlivcFpsEnum;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcFpsEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcFpsEnum;

    return-object v0
.end method


# virtual methods
.method public getFps()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcFpsEnum;->mFps:I

    return v0
.end method
