.class public final enum Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum ERROR:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum FINISH:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum IDLE:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum PAUSE:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum RECORDING:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

.field public static final enum STOP:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->IDLE:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    .line 2
    new-instance v1, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v3, "RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->RECORDING:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    .line 3
    new-instance v3, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->PAUSE:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    .line 4
    new-instance v5, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v7, "STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->STOP:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    .line 5
    new-instance v7, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v9, "FINISH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->FINISH:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    .line 6
    new-instance v9, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->ERROR:Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->$VALUES:[Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;
    .locals 1

    .line 1
    const-class v0, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    return-object p0
.end method

.method public static values()[Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;
    .locals 1

    .line 1
    sget-object v0, Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->$VALUES:[Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    invoke-virtual {v0}, [Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buihha/audiorecorder/other/RecordHelper$RecordState;

    return-object v0
.end method
