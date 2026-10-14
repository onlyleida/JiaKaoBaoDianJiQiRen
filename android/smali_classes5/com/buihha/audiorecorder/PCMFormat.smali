.class public final enum Lcom/buihha/audiorecorder/PCMFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/buihha/audiorecorder/PCMFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buihha/audiorecorder/PCMFormat;

.field public static final enum PCM_16BIT:Lcom/buihha/audiorecorder/PCMFormat;

.field public static final enum PCM_8BIT:Lcom/buihha/audiorecorder/PCMFormat;


# instance fields
.field private audioFormat:I

.field private bytesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/buihha/audiorecorder/PCMFormat;

    const-string v1, "PCM_8BIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/buihha/audiorecorder/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/buihha/audiorecorder/PCMFormat;->PCM_8BIT:Lcom/buihha/audiorecorder/PCMFormat;

    .line 2
    new-instance v1, Lcom/buihha/audiorecorder/PCMFormat;

    const-string v4, "PCM_16BIT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5, v5}, Lcom/buihha/audiorecorder/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/buihha/audiorecorder/PCMFormat;->PCM_16BIT:Lcom/buihha/audiorecorder/PCMFormat;

    new-array v4, v5, [Lcom/buihha/audiorecorder/PCMFormat;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/buihha/audiorecorder/PCMFormat;->$VALUES:[Lcom/buihha/audiorecorder/PCMFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/buihha/audiorecorder/PCMFormat;->bytesPerFrame:I

    .line 3
    iput p4, p0, Lcom/buihha/audiorecorder/PCMFormat;->audioFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buihha/audiorecorder/PCMFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/buihha/audiorecorder/PCMFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/buihha/audiorecorder/PCMFormat;

    return-object p0
.end method

.method public static values()[Lcom/buihha/audiorecorder/PCMFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/buihha/audiorecorder/PCMFormat;->$VALUES:[Lcom/buihha/audiorecorder/PCMFormat;

    invoke-virtual {v0}, [Lcom/buihha/audiorecorder/PCMFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buihha/audiorecorder/PCMFormat;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/PCMFormat;->audioFormat:I

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/PCMFormat;->bytesPerFrame:I

    return v0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/buihha/audiorecorder/PCMFormat;->audioFormat:I

    return-void
.end method

.method public setBytesPerFrame(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/buihha/audiorecorder/PCMFormat;->bytesPerFrame:I

    return-void
.end method
