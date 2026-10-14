.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/p;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->E(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
