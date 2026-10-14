.class Lcom/amap/api/mapcore/util/z4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/api/mapcore/util/z4;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/z4;IIILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z4$a;->h:Lcom/amap/api/mapcore/util/z4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->a:I

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->b:I

    .line 4
    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    .line 5
    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->d:I

    .line 6
    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->e:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/z4$a;->g:Ljava/util/List;

    .line 8
    iput p3, p0, Lcom/amap/api/mapcore/util/z4$a;->a:I

    .line 9
    iput-object p5, p0, Lcom/amap/api/mapcore/util/z4$a;->f:Ljava/util/HashMap;

    .line 10
    iput p2, p0, Lcom/amap/api/mapcore/util/z4$a;->b:I

    .line 11
    iput p4, p0, Lcom/amap/api/mapcore/util/z4$a;->d:I

    return-void
.end method

.method private c(Landroid/os/Handler;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0x64

    .line 3
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4
    iget p2, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget v1, p0, Lcom/amap/api/mapcore/util/z4$a;->b:I

    const-string v2, "lineID"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    iget p1, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    .line 10
    iget p1, p0, Lcom/amap/api/mapcore/util/z4$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/mapcore/util/z4$a;->e:I

    return-void
.end method

.method private d(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z4$a;->e:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z4$a;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w4;->a(Ljava/util/List;)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z4$a;->g:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x65

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 7
    iget v0, p0, Lcom/amap/api/mapcore/util/z4$a;->d:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget v2, p0, Lcom/amap/api/mapcore/util/z4$a;->b:I

    const-string v3, "lineID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z4$a;->h:Lcom/amap/api/mapcore/util/z4;

    iget v1, p0, Lcom/amap/api/mapcore/util/z4$a;->b:I

    const-string v2, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/z4;->c(Landroid/os/Handler;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z4$a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore/util/z4$a;->a:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z4$a;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z4$a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/amap/api/mapcore/util/z4$a;->c(Landroid/os/Handler;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/z4$a;->c:I

    iget v1, p0, Lcom/amap/api/mapcore/util/z4$a;->a:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/z4$a;->d(Landroid/os/Handler;)V

    :cond_1
    return-void
.end method
