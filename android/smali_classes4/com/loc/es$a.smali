.class final Lcom/loc/es$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/es;


# direct methods
.method constructor <init>(Lcom/loc/es;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-static {v2}, Lcom/loc/es;->a(Lcom/loc/es;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-static {v0}, Lcom/loc/es;->b(Lcom/loc/es;)Z

    iget-object v0, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-static {v0}, Lcom/loc/es;->c(Lcom/loc/es;)Landroid/telephony/CellLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-static {v1, v0}, Lcom/loc/es;->a(Lcom/loc/es;Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-virtual {v0, p1}, Lcom/loc/es;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-static {}, Lcom/loc/fp;->b()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/loc/es;->a(Lcom/loc/es;J)J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Cgi"

    const-string v1, "cellInfo"

    invoke-static {p1, v0, v1}, Lcom/loc/fi;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/loc/es$a;->a:Lcom/loc/es;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/loc/es;->g:Ljava/lang/String;

    return-void
.end method
