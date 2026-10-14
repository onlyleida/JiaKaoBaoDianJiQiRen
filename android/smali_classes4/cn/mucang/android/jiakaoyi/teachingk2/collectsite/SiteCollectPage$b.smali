.class Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->s()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    .line 3
    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/a;->k:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    if-ne v2, p1, :cond_0

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->h(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method
