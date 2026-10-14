.class public Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;
    }
.end annotation


# instance fields
.field public allExamPassCount:I

.field public examRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;",
            ">;"
        }
    .end annotation
.end field

.field public singleExamPassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/SummaryRecordList$PassCount;",
            ">;"
        }
    .end annotation
.end field

.field public todayExamRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/ExamStep;",
            ">;"
        }
    .end annotation
.end field

.field public todayTrainRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;",
            ">;"
        }
    .end annotation
.end field

.field public trainRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/TrainStep;",
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
