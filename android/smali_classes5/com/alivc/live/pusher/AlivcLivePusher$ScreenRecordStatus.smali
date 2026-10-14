.class public final enum Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ScreenRecordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

.field public static final enum SCREEN_RECORD_CAMERA_MIX_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

.field public static final enum SCREEN_RECORD_CAMERA_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

.field public static final enum SCREEN_RECORD_NONE:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

.field public static final enum SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    const-string v1, "SCREEN_RECORD_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NONE:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    new-instance v1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    const-string v3, "SCREEN_RECORD_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_NORMAL:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    new-instance v3, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    const-string v5, "SCREEN_RECORD_CAMERA_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    new-instance v5, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    const-string v7, "SCREEN_RECORD_CAMERA_MIX_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->SCREEN_RECORD_CAMERA_MIX_START:Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->$VALUES:[Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcLivePusher$ScreenRecordStatus;

    return-object v0
.end method
