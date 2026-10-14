.class Lcom/amap/api/mapcore/util/c1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setIndoorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$n;->b:Lcom/amap/api/mapcore/util/c1;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/c1$n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1$n;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n;->b:Lcom/amap/api/mapcore/util/c1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c1;->showIndoorSwitchControlsEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/e4;->Q(Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method
