.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;
    }
.end annotation


# instance fields
.field public final targets:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$a;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$a;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$a;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$a;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->targets:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    return-void
.end method

.method public static from(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->targets:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->index:I

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->verDis:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->horDis:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->verSpeed:I

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->horSpeed:I

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x40

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;->rcs:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicWaveRadarSignal{targets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->targets:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal$MicWaveTarget;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
