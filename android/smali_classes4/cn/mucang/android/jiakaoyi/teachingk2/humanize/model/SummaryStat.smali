.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryStat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryStat$BehaviorStat;
    }
.end annotation


# instance fields
.field public behaviorStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryStat$BehaviorStat;",
            ">;"
        }
    .end annotation
.end field

.field public examCostTime:J

.field public loginTime:J

.field public singleTrainCostTime:J

.field public trainCostTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
