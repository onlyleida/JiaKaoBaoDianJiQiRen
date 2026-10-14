.class Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/k0/n;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v10, v6

    move-wide v12, v10

    move-wide v4, v2

    move-wide v6, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v15, v1

    .line 2
    iget-wide v0, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v0

    move-wide/from16 v16, v10

    .line 3
    iget-wide v10, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v12, v10

    cmpl-double v14, v6, v0

    if-lez v14, :cond_0

    move-wide v6, v0

    :cond_0
    cmpg-double v14, v2, v0

    if-gez v14, :cond_1

    move-wide v2, v0

    :cond_1
    cmpl-double v0, v8, v10

    if-lez v0, :cond_2

    move-wide v8, v10

    :cond_2
    cmpg-double v0, v4, v10

    if-gez v0, :cond_3

    move-wide v4, v10

    :cond_3
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v10, v16

    goto :goto_0

    .line 4
    :cond_4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v14, v1

    div-double/2addr v10, v14

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v14, v1

    div-double/2addr v12, v14

    sub-double/2addr v2, v6

    sub-double/2addr v4, v8

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v2, v3, v4, v5, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    .line 7
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    double-to-float v2, v10

    double-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 9
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/n$a;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method
