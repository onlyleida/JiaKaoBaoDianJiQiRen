.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;->rightPoints:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;->rightPoints:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->v:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2HuaLuSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/t;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;->l()V

    :cond_1
    const-wide/16 v0, 0x14e

    .line 7
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
