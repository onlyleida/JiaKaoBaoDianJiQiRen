.class Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->createConvert()Lcn/mucang/android/jiakaoyi/signal/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

.field final synthetic val$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field final synthetic val$finalOriginGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$finalOriginGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$finalOriginGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/jiakaoyi/uilib/i/g;->v(JDDD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data$1;->val$finalOriginGps:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    .line 3
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iput-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    .line 4
    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    iput-wide v1, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originAltitude:D

    .line 5
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
