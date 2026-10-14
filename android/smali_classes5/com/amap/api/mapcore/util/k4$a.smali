.class Lcom/amap/api/mapcore/util/k4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/k4;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field final synthetic b:Lcom/amap/api/mapcore/util/k4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/k4;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k4$a;->b:Lcom/amap/api/mapcore/util/k4;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/k4$a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/k4$a;->b:Lcom/amap/api/mapcore/util/k4;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/k4;->a(Lcom/amap/api/mapcore/util/k4;)Lcom/amap/api/mapcore/util/r4;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/k4$a;->a:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/r4;->n(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    return-void
.end method
