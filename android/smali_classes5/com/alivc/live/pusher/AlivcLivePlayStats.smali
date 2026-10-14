.class public final enum Lcom/alivc/live/pusher/AlivcLivePlayStats;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePlayStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePlayStats;

.field public static final enum IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

.field public static final enum PAUSED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

.field public static final enum STARTED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

.field public static final enum STOPED:Lcom/alivc/live/pusher/AlivcLivePlayStats;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/pusher/AlivcLivePlayStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePlayStats;->IDLE:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePlayStats;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STARTED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    new-instance v3, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    const-string v5, "STOPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alivc/live/pusher/AlivcLivePlayStats;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcLivePlayStats;->STOPED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    new-instance v5, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alivc/live/pusher/AlivcLivePlayStats;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcLivePlayStats;->PAUSED:Lcom/alivc/live/pusher/AlivcLivePlayStats;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alivc/live/pusher/AlivcLivePlayStats;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alivc/live/pusher/AlivcLivePlayStats;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePlayStats;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePlayStats;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePlayStats;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePlayStats;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePlayStats;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePlayStats;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePlayStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePlayStats;

    return-object v0
.end method
