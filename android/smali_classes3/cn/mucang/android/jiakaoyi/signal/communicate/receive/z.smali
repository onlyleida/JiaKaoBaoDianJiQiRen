.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

.field public final f:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

.field public final g:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/16 p1, 0xc

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    const/16 p1, 0x8

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    const/4 p1, 0x0

    new-array v0, p1, [I

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->c:[I

    new-array v0, p1, [I

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->d:[I

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 10
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    const/4 v0, 0x0

    .line 11
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 12
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->from(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->from(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 14
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->g:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    return-void
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;Z)V
    .locals 7

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 16
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    .line 17
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p3

    .line 18
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    .line 19
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v1

    .line 20
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    .line 21
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v3

    .line 22
    new-array p1, p1, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    .line 23
    array-length p1, p1

    const/4 v4, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    array-length v6, v5

    if-ge p1, v6, :cond_0

    .line 25
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v6

    aput v6, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-array p1, p3, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    .line 27
    array-length p1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 28
    :goto_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    array-length v5, p3

    if-ge p1, v5, :cond_1

    .line 29
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v5

    aput v5, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 30
    :cond_1
    new-array p1, v0, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->c:[I

    .line 31
    array-length p1, p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 32
    :goto_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->c:[I

    array-length v0, p3

    if-ge p1, v0, :cond_2

    .line 33
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 34
    :cond_2
    new-array p1, v1, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->d:[I

    .line 35
    array-length p1, p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 36
    :goto_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->d:[I

    array-length v0, p3

    if-ge p1, v0, :cond_3

    .line 37
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 38
    :cond_3
    new-array p1, v2, [Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 39
    array-length p1, p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 40
    :goto_4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    array-length v0, p3

    if-ge p1, v0, :cond_4

    .line 41
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->from(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 42
    :cond_4
    new-array p1, v3, [Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->g:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 43
    array-length p1, p1

    if-lez p1, :cond_5

    .line 44
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->g:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    array-length p3, p1

    if-ge v4, p3, :cond_5

    .line 45
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->from(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    move-result-object p3

    aput-object p3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 46
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveRadarSignal{frontRadarDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backRadarDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frontMicWaveRadars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->e:[Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backMicWaveRadar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/MicWaveRadarSignal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
