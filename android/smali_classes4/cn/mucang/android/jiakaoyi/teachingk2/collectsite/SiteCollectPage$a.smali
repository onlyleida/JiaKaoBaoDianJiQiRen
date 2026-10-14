.class Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->g(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/SiteCollectPage;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/s0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
