.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$c;->i(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method
