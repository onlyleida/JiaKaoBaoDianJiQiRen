.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/q;->b:Ljava/lang/Runnable;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->r(Ljava/lang/Runnable;Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;)V

    return-void
.end method
