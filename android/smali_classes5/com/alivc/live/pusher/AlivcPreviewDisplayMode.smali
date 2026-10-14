.class public final enum Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

.field public static final enum ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FILL:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

.field public static final enum ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FIT:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

.field public static final enum ALIVC_LIVE_PUSHER_PREVIEW_SCALE_FILL:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;


# instance fields
.field private displayMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    const-string v1, "ALIVC_LIVE_PUSHER_PREVIEW_SCALE_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->ALIVC_LIVE_PUSHER_PREVIEW_SCALE_FILL:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    new-instance v1, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    const-string v3, "ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FIT:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    new-instance v3, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    const-string v5, "ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->ALIVC_LIVE_PUSHER_PREVIEW_ASPECT_FILL:Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

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

    iput p3, p0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->displayMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;
    .locals 1

    const-class v0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->$VALUES:[Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    invoke-virtual {v0}, [Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;

    return-object v0
.end method


# virtual methods
.method public getPreviewDisplayMode()I
    .locals 1

    iget v0, p0, Lcom/alivc/live/pusher/AlivcPreviewDisplayMode;->displayMode:I

    return v0
.end method
