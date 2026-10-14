.class Lcom/amap/api/mapcore/util/c1$n0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1$n0;->a(Lcom/amap/api/mapcore/util/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c4;

.field final synthetic b:Lcom/amap/api/mapcore/util/c1$n0;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1$n0;Lcom/amap/api/mapcore/util/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->b:Lcom/amap/api/mapcore/util/c1$n0;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->a:Lcom/amap/api/mapcore/util/c4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->b:Lcom/amap/api/mapcore/util/c1$n0;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c4;->k([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->a:Lcom/amap/api/mapcore/util/c4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->b:Lcom/amap/api/mapcore/util/c1$n0;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c4;->i(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0$b;->a:Lcom/amap/api/mapcore/util/c4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c4;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
