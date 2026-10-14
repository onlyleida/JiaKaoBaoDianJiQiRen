.class public final enum Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buihha/audiorecorder/other/RecordConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

.field public static final enum MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

.field public static final enum PCM:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

.field public static final enum WAV:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;


# instance fields
.field private extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const-string v1, "MP3"

    const/4 v2, 0x0

    const-string v3, ".mp3"

    invoke-direct {v0, v1, v2, v3}, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    .line 2
    new-instance v1, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const-string v3, "WAV"

    const/4 v4, 0x1

    const-string v5, ".wav"

    invoke-direct {v1, v3, v4, v5}, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->WAV:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    .line 3
    new-instance v3, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const-string v5, "PCM"

    const/4 v6, 0x2

    const-string v7, ".pcm"

    invoke-direct {v3, v5, v6, v7}, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->PCM:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->$VALUES:[Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    return-object p0
.end method

.method public static values()[Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->$VALUES:[Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    invoke-virtual {v0}, [Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->extension:Ljava/lang/String;

    return-object v0
.end method
