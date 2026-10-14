.class final Lcom/amap/api/mapcore/util/w9$b;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/w9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/w9;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/w9;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w9$b;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$b;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w9;->D(Lcom/amap/api/mapcore/util/w9;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$b;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/w9;->b(Lcom/amap/api/mapcore/util/w9;Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w9$b;->a:Lcom/amap/api/mapcore/util/w9;

    iput-object p1, v0, Lcom/amap/api/mapcore/util/w9;->k:Landroid/telephony/CellLocation;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/w9;->n:Z

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w9;->F(Lcom/amap/api/mapcore/util/w9;)V

    iget-object p1, p0, Lcom/amap/api/mapcore/util/w9$b;->a:Lcom/amap/api/mapcore/util/w9;

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/w9;->a(Lcom/amap/api/mapcore/util/w9;J)J

    :cond_0
    return-void
.end method
