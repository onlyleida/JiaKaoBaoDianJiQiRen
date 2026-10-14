.class public final enum Lcom/alivc/live/pusher/AlivcLivePushLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePushLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelAll:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelDebug:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelError:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelFatal:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelInfo:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelVerbose:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

.field public static final enum AlivcLivePushLogLevelWarn:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v1, "AlivcLivePushLogLevelAll"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelAll:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v4, "AlivcLivePushLogLevelVerbose"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelVerbose:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v4, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v6, "AlivcLivePushLogLevelDebug"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelDebug:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v6, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v8, "AlivcLivePushLogLevelInfo"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelInfo:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v8, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v10, "AlivcLivePushLogLevelWarn"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelWarn:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v10, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v12, "AlivcLivePushLogLevelError"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelError:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-instance v12, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    const-string v14, "AlivcLivePushLogLevelFatal"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->AlivcLivePushLogLevelFatal:Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    new-array v14, v15, [Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->mLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePushLogLevel;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePushLogLevel;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePushLogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcLivePushLogLevel;->mLevel:I

    return v0
.end method
