.class public final enum Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Topic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static final enum action:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static final enum biz:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static final enum error:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static final enum event:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->action:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v3, "event"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->event:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    new-instance v3, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v5, "error"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->error:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    new-instance v5, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v7, "biz"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->biz:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->mValue:Ljava/lang/String;

    return-object v0
.end method
