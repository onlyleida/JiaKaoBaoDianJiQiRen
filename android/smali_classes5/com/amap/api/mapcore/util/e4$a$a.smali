.class Lcom/amap/api/mapcore/util/e4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/e4$a;->invalidateScaleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/e4$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/e4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4$a$a;->a:Lcom/amap/api/mapcore/util/e4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4$a$a;->a:Lcom/amap/api/mapcore/util/e4$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/e4$a;->a:Lcom/amap/api/mapcore/util/e4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e4;->e(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/g4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g4;->e()V

    return-void
.end method
