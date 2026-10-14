.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;->dashLines:Ljava/util/List;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoChangDiSrcData;->dashLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->l()V

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 5
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
