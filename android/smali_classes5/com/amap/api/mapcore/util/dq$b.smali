.class Lcom/amap/api/mapcore/util/dq$b;
.super Lcom/amap/api/mapcore/util/dq$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/dq;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dq$f<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/api/mapcore/util/dq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/dq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dq$b;->b:Lcom/amap/api/mapcore/util/dq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dq$f;-><init>(Lcom/amap/api/mapcore/util/dq$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq$b;->b:Lcom/amap/api/mapcore/util/dq;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dq;->e(Lcom/amap/api/mapcore/util/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dq$b;->b:Lcom/amap/api/mapcore/util/dq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dq$f;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dq;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/dq;->c(Lcom/amap/api/mapcore/util/dq;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
