.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/s;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;->C(Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;)V

    return-void
.end method
