.class Lcom/amap/api/mapcore/util/c1$n0$a;
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


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1$n0;Lcom/amap/api/mapcore/util/c4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1$n0$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0$a;->a:Lcom/amap/api/mapcore/util/c4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c4;->j(Z)V

    return-void
.end method
