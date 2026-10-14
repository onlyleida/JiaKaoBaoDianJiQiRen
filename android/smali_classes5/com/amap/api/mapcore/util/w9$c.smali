.class final Lcom/amap/api/mapcore/util/w9$c;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/w9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/w9;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/w9;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/w9;->H(Lcom/amap/api/mapcore/util/w9;)Lcom/amap/api/mapcore/util/s9;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/w9;->H(Lcom/amap/api/mapcore/util/w9;)Lcom/amap/api/mapcore/util/s9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s9;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    throw p1

    :catchall_0
    return-void
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/w9;->r(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    iput-object p1, v0, Lcom/amap/api/mapcore/util/w9;->k:Landroid/telephony/CellLocation;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/w9;->n:Z

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w9;->F(Lcom/amap/api/mapcore/util/w9;)V

    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/w9;->a(Lcom/amap/api/mapcore/util/w9;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/w9;->K()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/w9;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 3

    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    iget v1, v1, Lcom/amap/api/mapcore/util/w9;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/g9;->d(I)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/w9;->o(Lcom/amap/api/mapcore/util/w9;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x71

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    iget v1, v1, Lcom/amap/api/mapcore/util/w9;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/g9;->d(I)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/w9;->o(Lcom/amap/api/mapcore/util/w9;I)V

    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/w9;->H(Lcom/amap/api/mapcore/util/w9;)Lcom/amap/api/mapcore/util/s9;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$c;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/w9;->H(Lcom/amap/api/mapcore/util/w9;)Lcom/amap/api/mapcore/util/s9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s9;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    throw p1

    :catchall_0
    return-void
.end method
