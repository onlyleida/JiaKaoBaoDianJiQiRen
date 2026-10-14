.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;",
        "Ljava/io/Serializable;",
        "()V",
        "examSiteRoute",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;",
        "getExamSiteRoute",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;",
        "setExamSiteRoute",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;)V",
        "routeSteps",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;",
        "getRouteSteps",
        "()Ljava/util/List;",
        "setRouteSteps",
        "(Ljava/util/List;)V",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private examSiteRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;

.field private routeSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExamSiteRoute()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->examSiteRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;

    return-object v0
.end method

.method public final getRouteSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->routeSteps:Ljava/util/List;

    return-object v0
.end method

.method public final setExamSiteRoute(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->examSiteRoute:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;

    return-void
.end method

.method public final setRouteSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;->routeSteps:Ljava/util/List;

    return-void
.end method
