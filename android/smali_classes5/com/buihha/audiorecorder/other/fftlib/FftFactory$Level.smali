.class public final enum Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

.field public static final enum Maximal:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

.field public static final enum Music:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

.field public static final enum Original:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

.field public static final enum People:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    const-string v1, "Original"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->Original:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    .line 2
    new-instance v1, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    const-string v3, "Music"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->Music:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    .line 3
    new-instance v3, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    const-string v5, "People"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->People:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    .line 4
    new-instance v5, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    const-string v7, "Maximal"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->Maximal:Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->$VALUES:[Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

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

.method public static valueOf(Ljava/lang/String;)Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;
    .locals 1

    .line 1
    const-class v0, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    return-object p0
.end method

.method public static values()[Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->$VALUES:[Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    invoke-virtual {v0}, [Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buihha/audiorecorder/other/fftlib/FftFactory$Level;

    return-object v0
.end method
