.class final Lcom/autonavi/base/amap/mapcore/AeUtil$1;
.super Lcom/amap/api/mapcore/util/n8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AeUtil;->initResource(Landroid/content/Context;)Lcom/autonavi/base/ae/gmap/GLMapEngine$InitParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$currentPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n8;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$currentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/AeUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AeUtil;->access$000(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
